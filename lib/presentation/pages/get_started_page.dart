import 'package:flutter/material.dart';
import 'package:rental_travel_ui/presentation/route/name_route.dart';
import 'package:rental_travel_ui/presentation/route/navigation.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        height: MediaQuery.sizeOf(context).height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/onboarding.png",
                ),
                fit: BoxFit.cover)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width / 4,
                  color: const Color(0xFF212D3D),
                ),
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width / 4,
                  color: const Color(0xFF01957D),
                ),
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width / 4,
                  color: const Color(0xFF212D3D),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            const Text(
              "Lets find your \nparadise",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 32),
            ),
            const Spacer(),
            SizedBox(
              height: 55,
              width: MediaQuery.of(context).size.width - 2 * 24,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF01957D)),
                  onPressed: () {
                    Navigation.intent(context, PageRoutes.homePage);
                  },
                  child: const Text(
                    "Get Started",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                        fontSize: 16),
                  )),
            ),
            const SizedBox(
              height: 12,
            ),
          ],
        ),
      ),
    );
  }
}
