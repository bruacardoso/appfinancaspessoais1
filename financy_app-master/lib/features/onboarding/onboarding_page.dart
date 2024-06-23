import 'package:flutter/material.dart';

import '../../common/constants/constants.dart';
import '../../common/widgets/widgets.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.purpleFour, // Alterado para roxo
      body: Column(
        children: [
          const SizedBox(height: 48.0),
          Expanded(
            child: Image.asset(
              'assets/images/onboarding_image.png',
            ),
          ),
          Text(
            'Spend Smarter',
            textAlign: TextAlign.center,
            style: AppTextStyles.mediumText36.copyWith(
              color: AppColors.greenOne,
            ),
          ),
          Text(
            'Save More',
            textAlign: TextAlign.center,
            style: AppTextStyles.mediumText36.copyWith(
              color: AppColors.greenOne,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 16.0),
            child: PrimaryButton(
              key: Keys.onboardingGetStartedButton,
              text: 'Get Started',
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  NamedRoute.signUp,
                );
              },
            ),
          ),
          MultiTextButton(
            key: Keys.onboardingAlreadyHaveAccountButton,
            onPressed: () => Navigator.pushNamed(context, NamedRoute.signIn),
            children: [
              Text(
                'Already have an account? ',
                style: AppTextStyles.smallText.copyWith(
                  color: AppColors.grey,
                ),
              ),
              Text(
                'Sign In ',
                style: AppTextStyles.smallText.copyWith(
                  color: AppColors.greenOne,
                ),
              ),
            ],
          ),
          const SizedBox(height: 24.0),
        ],
      ),
    );
  }
}
