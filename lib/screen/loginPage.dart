import 'package:flutter/material.dart';
import 'package:herat_taxi/brand_colors.dart';
import 'package:herat_taxi/screen/registrationPage.dart';
import 'package:herat_taxi/widgets/taxiButton.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);
  static const String id= 'login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                const Image(
                  alignment: Alignment.center,
                  width: 100,
                  height: 100,
                  image: AssetImage('images/logo.png'),
                ),
                const Text(
                  'ورود به سیستم',
                  style: TextStyle(fontSize: 40),
                ),
                const SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'ایمیل آدرس',
                          labelStyle: TextStyle(fontSize: 14),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                        ),
                        style: TextStyle(fontSize: 14),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'رمز عبور',
                          labelStyle: TextStyle(fontSize: 14),
                          hintStyle: TextStyle(
                            color: Colors.grey,
                            fontSize: 20,
                          ),
                        ),
                        style: TextStyle(fontSize: 14),

                      ),

                      SizedBox(height: 40,),


                      TaxiButton(title: 'ورود', color:BrandColors.colorGreen, onPressed: (){}),
                      SizedBox(height: 5,),

                      TextButton(
                        onPressed: (){
                          Navigator.pushNamedAndRemoveUntil(context, RegistrationPage.id, (route) => false);
                        },
                        child: Text('از قبل حساب ندارید؟راجستر کنید',style: TextStyle(fontSize: 20),),
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                        ),
                      ),

                    ],
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
