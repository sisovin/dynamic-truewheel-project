import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class BackToTopButton extends StatefulWidget {
  @override
  _BackToTopButtonState createState() => _BackToTopButtonState();
}

class _BackToTopButtonState extends State<BackToTopButton> {
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance!.addPostFrameCallback((_) {
      _scrollListener();
    });
  }

  void _scrollListener() {
    ScrollableState? scrollableState = Scrollable.of(context);
    if (scrollableState != null) {
      scrollableState.position.addListener(() {
        if (scrollableState.position.pixels > 200) {
          setState(() {
            _isVisible = true;
          });
        } else {
          setState(() {
            _isVisible = false;
          });
        }
      });
    }
  }

  void _scrollToTop() {
    ScrollableState? scrollableState = Scrollable.of(context);
    if (scrollableState != null) {
      scrollableState.position.animateTo(
        0,
        duration: Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _isVisible,
      child: FloatingActionButton(
        onPressed: _scrollToTop,
        child: Icon(Icons.arrow_upward),
      ),
    );
  }
}
