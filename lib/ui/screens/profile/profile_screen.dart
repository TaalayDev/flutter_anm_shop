import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:formz/formz.dart';

import '../../../bloc/user_bloc.dart';
import '../../../imports.dart';
import '../../shared_contents/app_network_image.dart';
import '../../shared_contents/control/loadable_button.dart';
import '../../shared_contents/custom_card.dart';
import 'bloc/profile_bloc.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProfileBloc(
        user: context.read<UserBloc>().state.user,
        userRepo: context.read(),
      ),
      child: BlocListener<ProfileBloc, ProfileState>(
        listener: (context, state) {
          if (state.status == FormzStatus.submissionSuccess) {
            context.read<UserBloc>().add(UserChangedEvent(state.user!));
          }
        },
        listenWhen: (previous, current) => previous.status != current.status,
        child: Scaffold(
          appBar: AppBar(title: Text('profile'.tr())),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 30),
                CustomCard(
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                          color: const Color(0xFFc4c4c4),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            InkWell(
                              onTap: () => selectPickerSource(context),
                              child: const _Avatar(),
                            ),
                            Positioned(
                              bottom: 5,
                              right: 5,
                              child: Container(
                                height: 20,
                                width: 20,
                                decoration: BoxDecoration(
                                  color: context.appTheme.greyWeakColor,
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Icon(
                                  Feather.edit_2,
                                  size: 11,
                                  color: context.appTheme.greyColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Text('Личные данные'),
                ),
                CustomCard(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Row(
                          children: [
                            const Expanded(
                              child: Text('Имя'),
                            ),
                            BlocBuilder<ProfileBloc, ProfileState>(
                              builder: (context, state) {
                                return Expanded(
                                  flex: 4,
                                  child: SizedBox(
                                    height: 35,
                                    child: TextFormField(
                                      initialValue: state.name,
                                      onChanged: (value) {
                                        context
                                            .read<ProfileBloc>()
                                            .add(ProfileValuesChangedEvent(
                                              name: value,
                                            ));
                                      },
                                      decoration: const InputDecoration(
                                        contentPadding: EdgeInsets.zero,
                                        enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                          ),
                                        ),
                                        filled: false,
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      const Divider(height: 0),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: SizedBox(
                          height: 35,
                          child: Row(
                            children: [
                              const Expanded(
                                child: Text('Телефон'),
                              ),
                              BlocBuilder<UserBloc, UserState>(
                                builder: (context, state) {
                                  return Expanded(
                                    flex: 4,
                                    child: Text(state.user?.phoneNumber ?? ''),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                BlocBuilder<ProfileBloc, ProfileState>(
                  builder: (context, state) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: LoadableButton(
                        loading:
                            state.status == FormzStatus.submissionInProgress,
                        text: 'save'.tr(),
                        onPressed: () {
                          context.read<ProfileBloc>().add(ProfileUpdateEvent());
                        },
                      ),
                    );
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void selectPickerSource(BuildContext context) {
    if (kIsWeb || !(Platform.isAndroid || Platform.isIOS)) {
      context.read<ProfileBloc>().add(const PickImageEvent());
      return;
    }

    Scaffold.of(context).showBottomSheet(
      (context) => Material(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              leading: const Icon(Feather.image),
              title: const Text('Галерея'),
              onTap: () async {
                Navigator.pop(context);
                context.read<ProfileBloc>().add(const PickImageEvent());
              },
            ),
            ListTile(
              leading: const Icon(Feather.camera),
              title: const Text('Камера'),
              onTap: () async {
                Navigator.pop(context);
                context.read<ProfileBloc>().add(const PickImageCameraEvent());
              },
            ),
          ],
        ),
      ),
    );
  }
}

class _Avatar extends StatelessWidget {
  const _Avatar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileBloc, ProfileState>(
      builder: (context, state) {
        if (state.image != null) {
          if (kIsWeb) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.network(
                state.image!.path,
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            );
          }

          return ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.file(
              state.image!,
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          );
        }

        return BlocBuilder<UserBloc, UserState>(
          builder: (context, userState) {
            if (userState.user?.photoUrl != null)
              return ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: AppNetworkImage(
                  imageUrl: userState.user!.photoUrl!,
                  fit: BoxFit.cover,
                  height: 100,
                  width: 100,
                  showProgress: true,
                ),
              );

            return ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: const Icon(
                Feather.user,
                color: Colors.white,
                size: 80,
              ),
            );
          },
        );
      },
    );
  }
}
