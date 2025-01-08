import 'package:flutter/material.dart';

import '../forms/login_form.dart';
import '../forms/register_form.dart';


class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  // Giriş başarılı olduğunda yönlendirme işlemi
  void navigateToHome(BuildContext context) {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Firebase Demo"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Giriş Formu
              LoginForm(onLoginSuccess: () => navigateToHome(context)),
              const SizedBox(height: 50.0),
              // Kayıt Formu
              const RegisterForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Anasayfa"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          "Hoşgeldiniz! Başarılı bir şekilde giriş yaptınız.",
          style: TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
