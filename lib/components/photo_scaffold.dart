import 'package:flutter/material.dart';

class PhotoScaffold extends StatelessWidget {
  final Widget? body;
  final PreferredSizeWidget? appBar;
  final Widget? bottomNavigationBar;

  final String imagePath;

  const PhotoScaffold({
    Key? key,
    this.body,
    this.appBar,
    this.bottomNavigationBar,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          imagePath,
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Container(
          color: const Color.fromARGB(112, 0, 0, 0),
        ),
        Scaffold(
          appBar: appBar,
          bottomNavigationBar: bottomNavigationBar,
          resizeToAvoidBottomInset: false,
          backgroundColor: Colors.transparent,
          body: body,
        ),
      ],
    );
  }
}
