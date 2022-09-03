import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jiffy/jiffy.dart';
import 'package:malbazar/data/constants.dart';
import 'package:malbazar/imports.dart';
import 'package:malbazar/ui/screens/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isReady = false;

  void navigate() {
    LocaleStorage.instance.firstRun = false;
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => HomeScreen()),
    );
  }

  void splashMove() async {
    await Jiffy.locale('ru');
    Timer(Duration(seconds: 3), () {
      if (!LocaleStorage().firstRun) {
        navigate();
      } else {
        setState(() {
          isReady = true;
        });
      }
    });
  }

  @override
  void initState() {
    splashMove();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        child: Stack(children: [
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(right: 20, left: 20),
                  child: Image.asset(
                    Assets.logo,
                    fit: BoxFit.fitWidth,
                    width: 300,
                  ),
                ),
                if (isReady) ...[
                  Container(
                    width: 200,
                    margin: EdgeInsets.only(bottom: 0, top: 40),
                    child: elevatedBtn('Кыргызча', () {
                      EasyLocalization.of(context)
                          ?.setLocale(Locale('ky', 'KY'));
                      navigate();
                    }),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    width: 200,
                    padding: EdgeInsets.all(0),
                    child: elevatedBtn('Русский', () {
                      EasyLocalization.of(context)
                          ?.setLocale(Locale('ru', 'RU'));
                      navigate();
                    }),
                  ),
                ]
              ],
            ),
          ),
        ]),
      ),
      // backgroundColor: Theme.of(context).primaryColor.withAlpha(150),
    );
  }

  Widget elevatedBtn(String text, onPressed) {
    return SizedBox(
      height: 35,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text, style: TextStyle(color: Colors.white)),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        ),
      ),
    );
  }

  Widget outlinedBtn(String text, onPressed) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(color: context.theme.primaryColor),
      ),
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: context.theme.primaryColor),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
      ),
    );
  }
}
