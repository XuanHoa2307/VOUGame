import 'package:flutter/material.dart';
import 'package:voumarketinggame/pages/signin_page.dart';
import 'package:voumarketinggame/pages/signup_page.dart';
import 'package:voumarketinggame/theme/theme.dart';
import 'package:voumarketinggame/widgets/scaffold_widget.dart';
import 'package:voumarketinggame/widgets/welcome_widget.dart';


class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    CustomScaffold(
      child: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Image.asset(
              'assets/images/logo.png',
              height: 200,
              width: 200,
            ),

            Flexible(
                flex: 2,
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: 0,
                    horizontal: 40.0,
                  ),
                  child: Center(
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        children: [
                           TextSpan(
                              text: 'Welcome to VOU',
                              style: TextStyle(
                                color: lightColorScheme.onPrimary,
                                fontSize: 40.0,
                                fontWeight: FontWeight.w900,
                              )),
                          
                          TextSpan(
                              text: '\nGaming for Rewards\n',
                              style: TextStyle(
                                color: lightColorScheme.onPrimary,
                                fontSize: 33.0,
                                fontWeight: FontWeight.w500,
                              )),
                          const TextSpan(
                              text:
                                  '\n\nPlease, sign up or sign in to start!\n',
                              style: TextStyle(
                                fontSize: 21,
                                color: Colors.black,
                               
                              ))
                        ],
                      ),
                    ),
                  ),
                )),
                Flexible(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Row(
                      children: [
                        Expanded(
                          child: WelcomeButton(
                            buttonText: 'Sign in',
                            onTap: const SignInScreen(),
                            color: Colors.transparent,
                            textColor: lightColorScheme.onPrimary,
                          ),
                        ),
                        Expanded(
                          child: WelcomeButton(
                            buttonText: 'Sign up',
                            onTap: const SignUpScreen(),
                            color: lightColorScheme.primary,
                            textColor: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
          ],
        ),
      ),
    );
  }
}
