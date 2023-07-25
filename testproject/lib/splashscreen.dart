import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:testproject/login_screen.dart";

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen>
    with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    Future.delayed(const Duration(seconds: 4), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (_) => Login(),
      ));
    });
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.library_books_rounded,
                color: Colors.black,
                size: 80,
              ),
              SizedBox(height: 20),
              Text(
                "BOOKIFY",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    color: Colors.black,
                    fontSize: 32),
              ),
            ]),
      ),
    );
  }
}
