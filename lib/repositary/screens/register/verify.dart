import 'package:flutter/material.dart';
import 'package:futur_mobile_banking/repositary/screens/register/signin.dart';

import 'otp.dart';

class Verify extends StatelessWidget {
  final String mobileNumber;

  const Verify({super.key, required this.mobileNumber});

  @override
  Widget build(BuildContext context) {
    final TextEditingController mobileController =
        TextEditingController(text: mobileNumber);

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const PersonalDetailsPage(),
              ),
            );
          },
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.white),
        ),
        centerTitle: true,
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Image.asset(
            'assets/images/Mock Logo.png',
            height: 40,
          ),
        ),
      ),
      body: Stack(
        children: [
          Positioned(
            top: 20,
            left: 20,
            child: Image.asset('assets/images/Blend 01.png'),
          ),
          Positioned(
            top: 50,
            right: 0,
            child: Image.asset('assets/images/Blend 02.png'),
          ),
          SafeArea(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),
                  const Text(
                    'Mobile Number Verification',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 25,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Varius facilisis in duis volutpat. Viverra fermentum nibh consectetur purus.',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(height: 30),
                  _buildTextField(
                    label: 'Mobile Number',
                    keyboardType: TextInputType.phone,
                    controller: mobileController,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => OtpPage()));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0xFFD6D3FF),
              foregroundColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            child: const Text(
              'Continue',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildTextField({
    required String label,
    required TextEditingController controller,
    TextInputType keyboardType = TextInputType.text,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller,
          readOnly: true,
          keyboardType: keyboardType,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: label,
            hintStyle: const TextStyle(color: Colors.white54),
            filled: true,
            fillColor: const Color(0xFF1E1E1E),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          ),
        ),
        const SizedBox(height: 16),
      ],
    );
  }
}
