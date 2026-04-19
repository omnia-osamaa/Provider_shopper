import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider_shopper/common/theme.dart';

class MyLogin extends StatelessWidget {
  const MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Welcome\nback.',
                  style: TextStyle(
                    fontFamily: 'Corben',
                    fontSize: 52, // Increased from 48
                    fontWeight: FontWeight.w900,
                    color: AppColors.textPrimary,
                    height: 1.05, // Tightened line height
                    letterSpacing: -1.5,
                  ),
                ),
                const SizedBox(height: 16), // Increased from 12
                const Text(
                  'Sign in to continue shopping.',
                  style: TextStyle(
                    color: AppColors.textSecondary,
                    fontSize: 16, // Slightly larger
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 60), // Increased from 52
                const _DarkTextField(
                  hint: 'Username',
                  icon: Icons.alternate_email_rounded,
                ),
                const SizedBox(height: 20), // Increased from 16
                const _DarkTextField(
                  hint: 'Password',
                  icon: Icons.lock_outline_rounded,
                  isPassword: true,
                ),
                const SizedBox(height: 48), // Adjusted from 40
                SizedBox(
                  width: double.infinity,
                  height: 62, // Increased from 58
                  child: ElevatedButton(
                    onPressed: () => context.pushReplacement('/catalog'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primary,
                      foregroundColor: AppColors.primaryText,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20), // More rounded
                      ),
                    ),
                    child: const Text(
                      'SIGN IN',
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.5,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _DarkTextField extends StatelessWidget {
  final String hint;
  final IconData icon;
  final bool isPassword;

  const _DarkTextField({
    required this.hint,
    required this.icon,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      style: const TextStyle(color: AppColors.textPrimary, fontSize: 15),
      decoration: InputDecoration(
        prefixIcon: Icon(icon, color: AppColors.iconMuted, size: 20),
        hintText: hint,
        hintStyle: const TextStyle(color: AppColors.textHint, fontSize: 14),
        filled: true,
        fillColor: AppColors.surfaceAlt,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.borderAlt, width: 1.5),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(color: AppColors.primary, width: 2),
        ),
        contentPadding: const EdgeInsets.symmetric(vertical: 18),
      ),
    );
  }
}