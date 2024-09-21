import 'package:flutter/material.dart';

class welcomePage extends StatefulWidget {
  const welcomePage({super.key});

  @override
  State<welcomePage> createState() => _welcomePageState();
}

class _welcomePageState extends State<welcomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
     // appBar: AppBar(),
       body: Container(
         decoration: const BoxDecoration(
             gradient: LinearGradient(
               begin: Alignment.bottomLeft,
               end: Alignment(0.8, 1),
               colors: <Color>[
                 Color(0xb36db8ee),
                 Color(0xfffc6dd4),
               ],
             )
         ),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Image.asset("assets/images/login.png",fit: BoxFit.fill,),
             const Text("Congratulation !",style: TextStyle(
               fontSize: 30,
               fontWeight: FontWeight.bold
             ),),
             const SizedBox(height: 20,),
             const Text("Thank you for Sucess Login,", style: TextStyle(
               fontSize: 17,
               color: Colors.black87,
             ),),
           ],
         ),



       ),
    );
  }
}
