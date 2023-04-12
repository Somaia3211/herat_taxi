import 'package:flutter/material.dart';
import 'package:herat_taxi/brand_colors.dart';
import 'package:herat_taxi/screen/loginPage.dart';
import 'package:herat_taxi/widgets/taxiButton.dart';

class RegistrationPage extends StatefulWidget{
  static const String id= 'register';
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

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

                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'ساختن حساب',
                  style: TextStyle(fontSize: 30),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      TextFormField(
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          labelText: 'نام کامل',
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
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          labelText: 'شماره تماس',
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


                      TaxiButton(title: 'راجستر',color: BrandColors.colorGreen,onPressed: (){},),
                      SizedBox(height: 5,),

                      TextButton(
                        onPressed: (){
                          Navigator.pushNamedAndRemoveUntil(context, LoginPage.id, (route) => false);
                        },
                        child: Text('از قبل حساب دارید؟ ورود',style: TextStyle(fontSize: 15),),
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


