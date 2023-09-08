import 'package:flutter/material.dart';

class SlideUpPageRoute<T> extends PageRoute<T> {
  SlideUpPageRoute({required this.builder, RouteSettings? settings})
      : super(settings: settings);

  final WidgetBuilder builder;

  @override
  Color get barrierColor => Colors.black.withOpacity(0.5);

  @override
  String get barrierLabel => '';

  @override
  Widget buildPage(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation) {
    return builder(context);
  }

  @override
  bool get maintainState => true;

  @override
  Duration get transitionDuration => const Duration(milliseconds: 300);

  @override
  Widget buildTransitions(BuildContext context, Animation<double> animation,
      Animation<double> secondaryAnimation, Widget child) {
    const double begin = 1.0;
    const double end = 0.0;
    const Curve curve = Curves.easeInOut;
    final Animation<double> curvedAnimation =
        CurvedAnimation(parent: animation, curve: curve);
    final Animation<double> reverseAnimation =
        Tween<double>(begin: end, end: begin).animate(curvedAnimation);

    if (animation.status == AnimationStatus.forward) {
      return SlideTransition(
        position: Tween<Offset>(begin: const Offset(0.0, 1.0), end: Offset.zero)
            .animate(curvedAnimation),
        child: child,
      );
    } else {
      return SlideTransition(
        position: Tween<Offset>(begin: const Offset(0.0, 1.0), end: Offset.zero)
            .animate(reverseAnimation),
        child: child,
      );
    }
  }
}
