import 'package:flutter/material.dart';

class CountDownTimer extends StatefulWidget {
  const CountDownTimer({
    Key? key,
    required this.duration,
    this.countDownTimerStyle,
    this.whenTimeExpires,
    this.countDownFormatter,
    this.running = false,
  }) : super(key: key);

  final Duration duration;
  final Function()? whenTimeExpires;
  final String Function(int seconds)? countDownFormatter;
  final TextStyle? countDownTimerStyle;
  final bool running;

  @override
  State createState() => _CountDownTimerState();
}

class _CountDownTimerState extends State<CountDownTimer>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Duration duration;

  String get timerDisplayString {
    Duration duration = _controller.duration! * _controller.value;
    return widget.countDownFormatter != null
        ? widget.countDownFormatter!.call(duration.inSeconds)
        : formatHHMMSS(duration.inSeconds);
    // In case user doesn't provide formatter use the default one
    // for that create a method which will be called formatHHMMSS or whatever you like
  }

  String formatHHMMSS(int seconds) {
    return '$seconds';
  }

  void startTimer() {
    duration = widget.duration;
    _controller = AnimationController(
      vsync: this,
      duration: duration,
    );
    _controller.reverse(from: widget.duration.inSeconds.toDouble());
    _controller.addStatusListener((status) {
      widget.whenTimeExpires?.call();
      if (status == AnimationStatus.completed) {
        widget.whenTimeExpires?.call();
      } else if (status == AnimationStatus.dismissed) {
        // print("Animation Complete");
      }
    });
  }

  @override
  void initState() {
    super.initState();
    duration = widget.duration;
    _controller = AnimationController(
      vsync: this,
      duration: duration,
    );
    if (widget.running) {
      startTimer();
    }
  }

  @override
  void didUpdateWidget(CountDownTimer oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.running != oldWidget.running) {
      setState(() {
        if (widget.running) {
          startTimer();
        } else {
          _controller.dispose();
          _controller = AnimationController(
            vsync: this,
            duration: duration,
          );
        }
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AnimatedBuilder(
        animation: _controller,
        builder: (_, Widget? child) {
          return Text(
            timerDisplayString,
            style: widget.countDownTimerStyle,
          );
        },
      ),
    );
  }
}
