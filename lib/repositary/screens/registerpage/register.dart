import 'package:flutter/material.dart';

class SpeedPage extends StatelessWidget {
  const SpeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Progress Bar
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: LinearProgressIndicator(
              value: 0.66, // Example: 66% progress
              backgroundColor: Colors.grey[800],
              valueColor: AlwaysStoppedAnimation<Color>(Colors.yellow),
              minHeight: 4,
            ),
          ),

          // Optional Background Blend Decorations (Optional)
          Positioned(
            top: 500,
            left: 20,
            child: Image.asset(
              'assets/images/Blend 01.png',
              fit: BoxFit.contain,
            ),
          ),
          Positioned(
            bottom: 500,
            right: 0,
            child: Image.asset(
              'assets/images/Blend 02.png',
              fit: BoxFit.contain,
            ),
          ),

          // Content Area
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
                    'Erat sed aliquam vulputate commodo, aenean vitae lacus. Id sed aenean et nunc ut.',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                ),

                const Spacer(flex: 3),

                // Register Button
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple[300],
                    foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: const Size.fromHeight(48),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Register Now',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),

                const SizedBox(height: 12),

                // Login Button
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    minimumSize: const Size.fromHeight(48),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Already have an account',
                    style: TextStyle(fontWeight: FontWeight.bold),
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
