import 'dart:async';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malbazar/bloc/app_bloc.dart';
import 'package:malbazar/bloc/user_bloc.dart';
import 'package:malbazar/cubit/theme_cubit.dart';
import 'package:malbazar/data/repositories/user_repo.dart';
import 'package:malbazar/helpers/push_notifications.dart';
import 'package:malbazar/imports.dart';
import 'package:malbazar/ui/screens/splash/splash_screen.dart';

import 'data/models/user.dart';
import 'data/repositories/app_repo.dart';
import 'data/repositories/category_repo.dart';
import 'data/repositories/product_repo.dart';
import 'data/repositories/region_repo.dart';
import 'firebase_options.dart';
import 'helpers/app_bloc_observer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await LocaleStorage.init();
  await EasyLocalization.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await PushNotificationsManager().init();

  runZonedGuarded(() {
    Bloc.observer = AppBlocObserver();
    runApp(
      EasyLocalization(
        supportedLocales: const [Locale('ru', 'RU'), Locale('ky', 'KY')],
        fallbackLocale: const Locale('ru', 'RU'),
        path: 'assets/translations',
        child: const MyApp(),
      ),
    );
  }, (err, trace) {});
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider<AppRepo>(
          create: (context) => FirebaseAppRepoImpl(
            FirebaseFirestore.instance,
          ),
        ),
        RepositoryProvider<UserRepo>(
          create: (context) => FirebaseUserRepoImpl(
            FirebaseAuth.instance,
            FirebaseFirestore.instance,
          ),
        ),
        RepositoryProvider<ProductRepo>(
          create: (context) => FirebaseProductRepoImpl(
            FirebaseFirestore.instance,
            FirebaseStorage.instance,
          ),
        ),
        RepositoryProvider<CategoryRepo>(
          create: (context) => FirebaseCategoryRepoImpl(
            FirebaseFirestore.instance,
          ),
        ),
        RepositoryProvider<RegionRepo>(
          create: (context) => FirebaseRegionRepoImpl(
            FirebaseFirestore.instance,
          ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => ThemeCubit(
              isDarkMode: LocaleStorage().isDarkMode,
              type: LocaleStorage().currentThemeType,
              storage: LocaleStorage.instance,
            ),
          ),
          BlocProvider(
            lazy: false,
            create: (context) => AppBloc(
              appRepo: context.read(),
              categoryRepo: context.read(),
              regionRepo: context.read(),
            )
              ..add(AppEvent.fetchSettings())
              ..add(AppEvent.fetchLocations())
              ..add(AppEvent.fetchCategories()),
          ),
          BlocProvider(
            create: (context) => UserBloc(
              isLogin: FirebaseAuth.instance.currentUser != null,
              user: FirebaseAuth.instance.currentUser != null
                  ? User.fromFirebaseUser(FirebaseAuth.instance.currentUser!)
                  : null,
              userRepo: context.read(),
            ),
          ),
        ],
        child: GestureDetector(
          onTap: () {
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: BlocBuilder<ThemeCubit, ThemeState>(
            builder: (context, state) {
              final appTheme = state.appTheme;
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                title: 'Мал-Базар Кыргызстан',
                localizationsDelegates: context.localizationDelegates,
                supportedLocales: context.supportedLocales,
                locale: context.locale,
                theme: appTheme.themeData,
                darkTheme: appTheme.themeData,
                themeMode: appTheme.isDark ? ThemeMode.dark : ThemeMode.light,
                home: SplashScreen(),
              );
            },
          ),
        ),
      ),
    );
  }
}
