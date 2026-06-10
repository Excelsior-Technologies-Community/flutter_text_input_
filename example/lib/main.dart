import 'package:flutter/material.dart';
import 'package:flutter_text_input_/flutter_text_input_.dart';

void main() {
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(
    BuildContext context,
  ) {
    return MaterialApp(
      debugShowCheckedModeBanner:
          false,

      home:
          const HomePage(),
    );
  }
}

class HomePage
    extends StatefulWidget {

  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() =>
      _HomePageState();
}

class _HomePageState
    extends State<HomePage> {

  final formKey =
      GlobalKey<FormState>();

  final emailController =
      TextEditingController();

  final phoneController =
      TextEditingController();

  final passwordController =
      TextEditingController();

  @override
  void dispose() {

    emailController.dispose();

    phoneController.dispose();

    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(
    BuildContext context,
  ) {

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          'Flutter Text Input',
        ),
      ),

      body: SingleChildScrollView(

        padding:
            const EdgeInsets.all(
          16,
        ),

        child: Form(

          key: formKey,

          child: Column(

            children: [

              /// EMAIL

              FlutterTextInput(

                controller:
                    emailController,

                labelText:
                    'Email',

                hintText:
                    'Enter Email',

                prefixIcon:
                    Icons.email,

                isEmail: true,
              ),

              const SizedBox(
                height: 16,
              ),

              /// PHONE

              FlutterTextInput(

                controller:
                    phoneController,

                labelText:
                    'Phone Number',

                hintText:
                    'Enter Phone Number',

                prefixIcon:
                    Icons.phone,

                isPhone: true,

                maxLength: 10,
                keyboardType: TextInputType.phone,

                showCharacterCounter:
                    true,
              ),

              const SizedBox(
                height: 16,
              ),

              /// PASSWORD

              FlutterTextInput(

                controller:
                    passwordController,

                labelText:
                    'Password',

                hintText:
                    'Enter Password',

                prefixIcon:
                    Icons.lock,

                obscureText: true,

                enablePasswordToggle:
                    true,
              ),

              const SizedBox(
                height: 16,
              ),

              /// SEARCH

              FlutterTextInput(

                hintText:
                    'Search...',

                prefixIcon:
                    Icons.search,

                showClearButton:
                    true,
              ),

              const SizedBox(
                height: 30,
              ),

              ElevatedButton(

                onPressed: () {

                  if (formKey
                          .currentState
                          ?.validate() ??
                      false) {

                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(

                      const SnackBar(
                        content: Text(
                          'Form Valid ✅',
                        ),
                      ),
                    );

                  } else {

                    ScaffoldMessenger.of(
                      context,
                    ).showSnackBar(

                      const SnackBar(
                        content: Text(
                          'Form Invalid ❌',
                        ),
                      ),
                    );
                  }
                },

                child: const Text(
                  'Submit',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}