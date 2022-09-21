import 'package:flutter/material.dart';

class OpeningScreen extends StatelessWidget {
  const OpeningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Image.asset(
            "./assets/openingPageBG.jpeg",
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        './assets/sensiableLogo.png',
                        scale: 2.5,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        'SENSIABLE',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 45,
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      MaterialButton(
                        onPressed: () {},
                        color: const Color(0xAA000000),
                        height: 75,
                        minWidth: 175,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        child: const Text(
                          'LOGIN',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      MaterialButton(
                        onPressed: () {},
                        color: const Color(0xAA000000),
                        height: 75,
                        minWidth: 175,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40.0),
                        ),
                        child: const Text(
                          'SIGN UP',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
