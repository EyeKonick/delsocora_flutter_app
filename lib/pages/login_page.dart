import 'package:delsocora_flutter_app/pages/home_page.dart';
import 'package:delsocora_flutter_app/styles/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Padding(
            padding: EdgeInsets.all(24),
            child: Column(
              children: [
                Spacer(),
                Text('Hello, Welcome Back!',
                    style: TextStyle(
                        color: AppColor.font,
                        fontSize: 22,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 16,
                ),
                Text('log-in to continue',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    )),
                Spacer(),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Username',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    filled: true,
                    fillColor: AppColor.disabledFont.withOpacity(0.7),
                  ),
                ),
                SizedBox(
                  height: 26,
                ),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Password',
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    filled: true,
                    fillColor: AppColor.disabledFont.withOpacity(0.7),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                      onPressed: () {
                        print('Forgot is clicked');
                      },
                      style: TextButton.styleFrom(
                        foregroundColor: AppColor.font,
                      ),
                      child: Text('Forgot Password?')),
                ),
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                  height: 48,
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: AppColor.primary),
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //   builder: (context) {
                        //     return HomePage();
                        //   },
                        // ));
                        Navigator.of(context).pushReplacementNamed('/main');
                      },
                      child: Text(
                        'Log in',
                        style: TextStyle(color: Colors.blue[900]),
                      )),
                ),
                Spacer(),
                Text(
                  'Or sign in with:',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/googleLogo.png',
                              height: 22, width: 22),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Log in with Google',
                            style: TextStyle(
                              color: Colors.blue[900],
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 48,
                  child: ElevatedButton(
                      onPressed: () {
                        print('Facebook is clicked');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('assets/images/fbLogo.png',
                              height: 22, width: 22),
                          SizedBox(
                            width: 4,
                          ),
                          Text(
                            'Log in with Facebook',
                            style: TextStyle(
                              color: Colors.blue[900],
                            ),
                          ),
                        ],
                      )),
                ),
                SizedBox(
                  height: 28,
                ),
                Row(
                  children: [
                    Text(
                      "Don't have account? ",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                        onPressed: () {},
                        child: Text(
                          'Sign up',
                          style: TextStyle(
                              color: AppColor.primary,
                              decoration: TextDecoration.underline),
                        ))
                  ],
                ),
                Spacer(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
