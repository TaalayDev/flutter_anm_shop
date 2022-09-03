import 'package:flutter/material.dart';

class LoadableButton extends StatelessWidget {
  final String text;
  final bool loading;
  final Function()? onPressed;

  const LoadableButton({
    Key? key,
    required this.text,
    this.loading = false,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: loading ? null : onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          loading
              ? const Padding(
                  padding: EdgeInsets.only(right: 15.0),
                  child: SizedBox(
                    width: 20,
                    height: 20,
                    child: CircularProgressIndicator(),
                  ),
                )
              : const SizedBox(),
          Text(text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )),
        ],
      ),
    );
  }
}
