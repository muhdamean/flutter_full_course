import 'package:flutter/material.dart';
import 'package:flutter_full_course/config/app_icons.dart';
import 'package:flutter_full_course/config/app_routes.dart';
import 'package:flutter_full_course/config/app_strings.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: SizedBox(
      height: MediaQuery.of(context).size.height,
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Spacer(),
            const Text(
              AppStrings.helloWelcome,
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              AppStrings.loginToContinue,
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 60,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: AppStrings.username,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                filled: true,
                fillColor: Colors.white.withOpacity(0.5),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                hintText: AppStrings.password,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                filled: true,
                fillColor: Colors.white.withOpacity(0.5),
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: () {
                    debugPrint('Forgot is cliked');
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                  ),
                  child: const Text(AppStrings.forgotpassword)),
            ),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              height: 48,
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushReplacementNamed(AppRoutes.main);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber,
                    foregroundColor: Colors.black,
                  ),
                  child: const Text(AppStrings.login)),
            ),
            const Spacer(),
            const Text(AppStrings.orSignInWith,
                style: TextStyle(
                  color: Colors.white,
                )),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 48,
              child: ElevatedButton(
                  onPressed: () {
                    debugPrint('Google is clicked');
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppIcons.icGoogle,
                        width: 22,
                        height: 22,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(AppStrings.loginWithGoogle)
                    ],
                  )),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              height: 48,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(50)),
                      )),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        AppIcons.icFacebook,
                        width: 22,
                        height: 22,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(AppStrings.loginWithFacebook)
                    ],
                  )),
            ),
            Row(
              children: [
                const Text(
                  AppStrings.dontHaveAccount,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(foregroundColor: Colors.amber),
                    child: const Text(
                      AppStrings.signup,
                      style: TextStyle(decoration: TextDecoration.underline),
                    ))
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    )));
  }
}
