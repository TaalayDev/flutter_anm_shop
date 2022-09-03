import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:malbazar/bloc/user_bloc.dart';
import 'package:malbazar/data/models/user.dart';
import 'package:malbazar/ui/screens/create/create_screen.dart';
import 'package:malbazar/ui/shared_contents/control/loadable_button.dart';
import 'package:malbazar/ui/shared_contents/list/app_animated_list.dart';

import '../../../bloc/product_bloc.dart';
import '../../../data/repositories/product_repo.dart';
import '../../../imports.dart';
import '../../shared_contents/list/app_animated_grid.dart';
import '../../shared_contents/control/search_field.dart';
import '../../shared_contents/product/product_grid_card.dart';
import '../../shared_contents/product/product_list_card.dart';
import '../auth/firebase_auth_screen.dart';
import '../details/details_screen.dart';
import '../settings/settings_screen.dart';
import 'contents/filter_bottom_sheet_content.dart';
import 'contents/filter_row.dart';
import 'contents/menu_drawer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool isGridSelected = true;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductBloc(context.read<ProductRepo>())
        ..add(ProductEvent.fetchProducts()),
      child: Scaffold(
        key: _scaffoldKey,
        resizeToAvoidBottomInset: true,
        backgroundColor: Theme.of(context).colorScheme.background,
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            final userBloc = context.read<UserBloc>();
            final navigator = Navigator.of(context);
            if (!userBloc.state.isLogin) {
              final result = await Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => FirebaseAuthScreen()),
              );
              if (result == null) return;
              userBloc.add(UserLoginEvent(User.fromFirebaseUser(result)));
            }
            navigator.push(
              MaterialPageRoute(builder: (context) => const CreateScreen()),
            );
          },
          child: Icon(Feather.plus, color: Colors.white),
        ),
        appBar: AppBar(
          bottom: PreferredSize(
            child: Container(
              padding: EdgeInsets.only(top: 8, bottom: 8),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: InkWell(
                      onTap: () => openFilterBottomSheet(context),
                      child: FilterRow(
                        icon: Icons.filter_list,
                        title: "filter".tr(),
                      ),
                    ),
                  ),
                  divider(),
                  Expanded(
                    child: InkWell(
                      onTap: () => openSortBottomSheet(context),
                      child: FilterRow(
                        icon: Icons.sort,
                        title: "sort".tr(),
                      ),
                    ),
                  ),
                  divider(),
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isGridSelected = !isGridSelected;
                        });
                      },
                      child: FilterRow(
                        icon: isGridSelected ? Icons.grid_view : Icons.list,
                        title: isGridSelected ? "grid".tr() : "list".tr(),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            preferredSize: Size(double.infinity, 44),
          ),
          titleSpacing: 0,
          title: SizedBox(
            height: 40,
            child: SearchField(),
          ),
          centerTitle: true,
          leading: Builder(builder: (context) {
            return IconButton(
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              icon: Icon(Icons.menu),
            );
          }),
          actions: <Widget>[
            SizedBox(
              width: 50,
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SettingsScreen(),
                  ));
                },
                icon: Icon(
                  Feather.settings,
                  size: 20,
                ),
              ),
            ),
          ],
        ),
        drawer: HomeDrawer(
          onClose: () {
            _scaffoldKey.currentState?.closeDrawer();
          },
        ),
        body: BlocBuilder<ProductBloc, ProductState>(
          builder: (context, state) {
            if (state.products.isLoading && state.products.data.isEmpty) {
              return Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }

            if (state.products.data.isEmpty) {
              return Center(
                child: Text('Empty'),
              );
            }

            return RefreshIndicator(
              onRefresh: () async {
                final productsBloc = context.read<ProductBloc>()
                  ..add(ProductRefreshEvent());

                await productsBloc.stream
                    .firstWhere((e) => !e.products.isLoading);
              },
              child: Builder(builder: (context) {
                if (!isGridSelected) {
                  return Padding(
                    padding:
                        const EdgeInsets.only(top: 20.0, right: 15, left: 15),
                    child: AppAnimatedList(
                      onBottomReached: () {
                        context
                            .read<ProductBloc>()
                            .add(ProductEvent.fetchProducts());
                      },
                      builder: (context, position) {
                        return ProductListCard(
                          product: state.products.data[position],
                        );
                      },
                      count: state.products.data.length,
                    ),
                  );
                }

                return AppAnimatedGrid(
                  delegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.68,
                  ),
                  onBottomReached: () {
                    context
                        .read<ProductBloc>()
                        .add(ProductEvent.fetchProducts());
                  },
                  builder: (context, position) {
                    return ProductGridCard(
                      product: state.products.data[position],
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => DetailsScreen(
                            product: state.products.data[position],
                          ),
                        ));
                      },
                    );
                  },
                  count: state.products.data.length,
                );
              }),
            );
          },
        ),
      ),
    );
  }

  divider() {
    return Container(
      width: 2,
      color: Colors.grey.shade400,
      height: 20,
    );
  }

  void openSortBottomSheet(BuildContext context) {
    _scaffoldKey.currentState?.showBottomSheet(
      (context) => Container(
        decoration: BoxDecoration(
          color: context.theme.colorScheme.surface,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(16),
            topLeft: Radius.circular(16),
          ),
        ),
        padding: EdgeInsets.only(left: 16, right: 16, top: 10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.close),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                Expanded(
                  child: ListTile(
                    title: Text('По дате'),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            LoadableButton(
              text: 'Применить',
              onPressed: () {},
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  void openFilterBottomSheet(BuildContext context) {
    _scaffoldKey.currentState?.showBottomSheet(
      (context) {
        return FilterBottomSheetContent(
          initialFilter: context.read<ProductBloc>().state.filter,
          onApply: (filter) {
            Navigator.pop(context);
            context.read<ProductBloc>()
              ..add(ProductEvent.setFilter(filter))
              ..add(ProductEvent.refresh());
          },
        );
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(16),
          topLeft: Radius.circular(16),
        ),
      ),
    );
  }
}
