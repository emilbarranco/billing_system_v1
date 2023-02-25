import 'package:billing_system_v1/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    const String svgAsset = 'assets/welcome.svg';

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: double.infinity,
              height: height * 0.50,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: SvgPicture.asset(svgAsset),
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Reclare for \n Business \n",
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                        TextSpan(
                          text:
                              "State of the art Inventory Tracking. \n Manage your business promptly.",
                          style: Theme.of(context).textTheme.labelMedium,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: () {},
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: lighterColor,
                  ),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(color: primaryDark, fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
