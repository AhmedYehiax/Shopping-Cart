import 'package:flutter/material.dart';
import 'package:shopping_app/screens/sign_in_page.dart';
import 'package:shopping_app/screens/sign_up_page.dart';
class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Shopping Cart",
          style: TextStyle(
            fontWeight: FontWeight.bold,
              fontSize: 30,
              fontFamily: 'Suwannaphum',
          ),
        ),
        centerTitle: true,
      ),
      body:Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          spacing: 15,
          children: [
            Text('Your Premium Shopping Experience',
            style: TextStyle(
              fontFamily: 'Suwannaphum'
            ),),
            Row(
              spacing: 20,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/local-photo.png',
                  width: 150,
                  height: 200,
                ),
              Image.network('https://miro.medium.com/v2/resize:fit:1018/1*iAu65xDmvpVdBJgps6EDEw.png',
                width: 150,
                height: 200
                ,)
              ],
            ),
            FilledButton(onPressed: () {
                Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SignInPage()),
                );
              },style:ButtonStyle(
              minimumSize: MaterialStateProperty.all(Size(150,50))
            ),
                child:Text('Sign In',
                  style:TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18
                  ) ,
                )
            ),
            ElevatedButton(onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => SignUpPage()),
              );
            }, child: Text('Sign Up'))
          ],
        ),
      ),
      
    );
  }
}
