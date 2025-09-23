import 'package:flutter/material.dart';
import 'package:movie_app/utils/custom_colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  text: 'Find the ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                  ),
                  children: [
                    TextSpan(
                      text: 'latest and \ngreatest ',
                      style: TextStyle(color: CustomColors.primaryColor),
                    ),
                    TextSpan(text: 'movie here'),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fringilla in sed risus sit.',
                style: TextStyle(color: Colors.grey.shade800),
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    width: 70,
                    height: 6,
                    decoration: BoxDecoration(
                      color: CustomColors.primaryColor,
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  SizedBox(width: 8),
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: Colors.grey.shade300,
                  ),
                  SizedBox(width: 8),
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: Colors.grey.shade300,
                  ),
                ],
              ),
              SizedBox(height: 15),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_forward_ios_rounded),
                color: Colors.white,
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(
                    CustomColors.primaryColor,
                  ),
                ),
              ),
              Spacer(),
              Center(child: Image.asset('assets/images/woman.png')),
            ],
          ),
        ),
      ),
    );
  }
}
