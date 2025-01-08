import 'package:flutter/material.dart';
import '../controllers/auth_controller.dart';
import '../widgets/custom_title.dart';
import '../widgets/custom_text_field.dart';

class LoginForm extends StatefulWidget {
  final VoidCallback onLoginSuccess;

  const LoginForm({super.key, required this.onLoginSuccess});


  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final AuthController authController = AuthController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomTitle(title: "Giriş Bölgesi"),
        const SizedBox(height: 40),
        CustomTextField(
          controller: emailController,
          label: "E-posta",
          hint: "E-posta adresinizi giriniz",
          prefixIcon: const Icon(Icons.text_fields),
          suffixIcon: const Icon(Icons.clear),
          helperText: 'Özel karakter kullanmayın',
        ),
        const SizedBox(height: 40),
        CustomTextField(
          controller: passwordController,
          label: "Şifre",
          hint: "Şifrenizi girin",
          prefixIcon: const Icon(Icons.lock),
          suffixIcon: const Icon(Icons.visibility),
          helperText: 'En az 8 karakter olmalı',
        ),
        const SizedBox(height: 40),
        ElevatedButton(
          onPressed: () async {
            try {
              await authController.login(emailController.text, passwordController.text);
              widget.onLoginSuccess(); // Giriş başarılı olduğunda yönlendirme
            } catch (e) {
              ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(e.toString())));
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.yellow,
            foregroundColor: Colors.black,
            shadowColor: Colors.grey,
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            minimumSize: const Size(double.infinity, 50),
          ),
          child: const Text("Giriş Yap"),
        ),
      ],
    );
  }
}
