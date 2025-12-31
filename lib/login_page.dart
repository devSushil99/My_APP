import 'package:flutter/material.dart';
import 'package:login_page/providers/login_provider.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10.0),
      borderSide: const BorderSide(
        color: Colors.black,
        width: 2,
        style: BorderStyle.solid,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
          color: const Color.fromARGB(255, 255, 255, 255),
        ),
        backgroundColor: const Color.fromARGB(255, 207, 15, 15),
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 100), //  space below AppBar

              const Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
              ),

              const SizedBox(height: 50), // space below LOGIN text
              Form(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(
                        10,
                      ), // padding around the form fields
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(
                              5,
                            ), // padding around email field
                            child: TextFormField(
                              decoration: InputDecoration(
                                prefixIcon: Icon(Icons.email),
                                prefixIconColor: Colors.black,

                                // filled: true,
                                // fillColor: Color.fromARGB(255, 184, 67, 67),
                                labelText: 'Email',
                                hintText: 'Enter your email',

                                focusedBorder: border,
                                enabledBorder: border,
                              ),
                              keyboardType: TextInputType.emailAddress,
                            ),
                          ),
                          SizedBox(height: 35),

                          Padding(
                            padding: EdgeInsets.all(5),
                            child: Consumer<LoginProvider>(
                              builder: (context, value, child) => TextFormField(
                                decoration: InputDecoration(
                                  prefixIcon: Icon(Icons.lock),
                                  prefixIconColor: Colors.black,
                                  labelText: 'Password',
                                  hintText: 'Enter your password',
                                  focusedBorder: border,
                                  enabledBorder: border,
                                  suffixIcon: InkWell(
                                    onTap: () {
                                      value.togglePasswordVisibility();
                                    },
                                    child: Icon(
                                      value.showPassword
                                          ? Icons.visibility
                                          : Icons.visibility_off,
                                    ),
                                  ),
                                ),
                                keyboardType: TextInputType.visiblePassword,
                                obscureText: !value.showPassword,
                              ),
                            ),
                          ),
                          Consumer<LoginProvider>(
                            builder: (context, value, child) => Padding(
                              padding: const EdgeInsets.symmetric(vertical: 20),
                              child: SizedBox(
                                width: double.infinity,
                                height: 50,
                                child: ElevatedButton(
                                  onPressed: () {
                                    // value.loginTextChange();
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color.fromARGB(
                                      255,
                                      207,
                                      15,
                                      15,
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                  ),
                                  child: const Text(
                                    'Login',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
