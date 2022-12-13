import 'package:find_house_app/pages/home_page.dart';
import 'package:find_house_app/theme.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                // 'assets/error.png',
                'assets/error.png',
                width: 300,
              ),
              const SizedBox(height: 70),
              Text(
                'Where are you going?',
                style: blackStyle.copyWith(fontSize: 24),
              ),
              const SizedBox(height: 14),
              Text(
                'Seems like the page that you were \nrequested is already gone',
                style: lightStyle.copyWith(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              Container(
                padding: const EdgeInsets.only(top: 50),
                width: 201,
                height: 100,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomePage(),
                        ),
                        (route) => false);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: purpleColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(17),
                    ),
                  ),
                  child: Text(
                    'Back To Home',
                    style: buttonStyle.copyWith(fontSize: 18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
