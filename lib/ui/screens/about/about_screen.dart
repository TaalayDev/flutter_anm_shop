import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:malbazar/bloc/app_bloc.dart';
import 'package:malbazar/imports.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('about_us'.tr()),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: BlocBuilder<AppBloc, AppState>(builder: (context, state) {
          if (state.settings.isLoading)
            return Center(
              child: CircularProgressIndicator.adaptive(),
            );

          return Text(
            state.settings.data.aboutText,
            textAlign: TextAlign.justify,
          );
        }),
      ),
    );
  }

  Widget _edit() => Column(
        children: <Widget>[
          TextFormField(
            maxLines: 15,
            //initialValue: _aboutText,
            decoration: InputDecoration(
              hintText: 'Text',
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            child: Text(
              'save'.tr(),
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      );
}
