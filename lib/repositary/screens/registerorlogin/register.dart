import 'package:flutter/material.dart';
import 'package:futur_mobile_banking/repositary/screens/login/login.dart';
import 'package:futur_mobile_banking/repositary/screens/register/signin.dart';

class SpeedPage extends StatelessWidget {
  const SpeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            top: 700,
            left: 60,
            child: Image.asset(
              'assets/images/Blend 01.png',
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            bottom: 600,
            right: 0,
            child: Image.asset(
              'assets/images/Blend 02.png',
              fit: BoxFit.contain,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(flex: 2),
                SizedBox(
                  height: 150,
                ),
                Image.asset(
                  'assets/images/Mock Logo.png',
                  width: 200,
                ),

                const SizedBox(height: 100),

                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'ANYTIME',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white60,
                      letterSpacing: 1.5,
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Ready for ',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: 'anything',
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.yellow,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // Description
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Manage your money effortlessly and stay in control anytime, anywhere.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                      height: 1.5,
                    ),
                  ),
                ),

                const Spacer(flex: 3),

                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PersonalDetailsPage()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color(0XFFD6D3FF),
                      foregroundColor: Colors.black,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      minimumSize: Size.fromHeight(48),
                    ),
                    child: Text(
                      'Register Now',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 15,
                          letterSpacing: 2),
                    ),
                  ),
                ),

                const SizedBox(height: 12),

                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      foregroundColor: Colors.black,
                      backgroundColor: Color(0XFF4D4D4D),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      minimumSize: const Size.fromHeight(48),
                    ),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => loginscreen()));
                    },
                    child: const Text(
                      'Already have an account',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
