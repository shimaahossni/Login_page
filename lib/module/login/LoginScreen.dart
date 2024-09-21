import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:login/module/page/welcome.dart';


class LoginScreen extends StatefulWidget {
  static const String routeName="LoginScreen";

  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emailController=TextEditingController();
  TextEditingController passController=TextEditingController();
  bool obSecure=true;
  Color emailBorderColor = Colors.grey.shade300;
  GlobalKey<FormState> key=GlobalKey();
  GlobalKey<FormState> passkey=GlobalKey();



  @override
  Widget build(BuildContext context) {
    Size mediaquery=MediaQuery.of(context).size;

    //Email validate
    String? validateEmail(String? value) {
      const pattern = r"(?:[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'"
          r'*+/=?^_`{|}~-]+)*|"(?:[\x01-\x08\x0b\x0c\x0e-\x1f\x21\x23-\x5b\x5d-'
          r'\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])*")@(?:(?:[a-z0-9](?:[a-z0-9-]*'
          r'[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?|\[(?:(?:(2(5[0-5]|[0-4]'
          r'[0-9])|1[0-9][0-9]|[1-9]?[0-9]))\.){3}(?:(2(5[0-5]|[0-4][0-9])|1[0-9]'
          r'[0-9]|[1-9]?[0-9])|[a-z0-9-]*[a-z0-9]:(?:[\x01-\x08\x0b\x0c\x0e-\x1f\'
          r'x21-\x5a\x53-\x7f]|\\[\x01-\x09\x0b\x0c\x0e-\x7f])+)\])';
      final regex = RegExp(pattern);

      return value!.isEmpty || !regex.hasMatch(value)
          ? 'Enter a valid email address'
          : null;
    }

    //password validate




    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xffFFD1B0),
      body: Container(
        decoration: const BoxDecoration(
            //image: DecorationImage(image:  AssetImage("assets/images/back.png"), fit: BoxFit.scaleDown,),
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment(0.8, 1),
              colors: <Color>[
                Color(0xb36db8ee),
                Color(0xfffc6dd4),
              ],
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(18.0),
          child: Column(
            children: [
              SizedBox(height: mediaquery.height*.12,),
               const Row(
                 children: [
                   Text("Login ",style: TextStyle(
                    fontSize: 35
                             ),),
                 ],
               ),
              const Row(
                children: [
                  Text("Welcome Back To Birds Store",style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54
                  ),),
                ],
              ),

              SizedBox(height: mediaquery.height*.07,),
             Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(20),
                 color:  const Color(0xffFEDCC5).withOpacity(0.3),

               ),
               height: mediaquery.height*.45,
              // color: const Color(0xffFEDCC5).withOpacity(2.0),
               child: Padding(
                 padding: const EdgeInsets.all(20.0),
                 child: Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [

                     //TextForm for E-mail
                     Form(
                       key:key,

                       child: TextFormField(
                       
                         validator: validateEmail,
                         onChanged: (value) {
                           setState(() {
                             if(validateEmail(value) == null){
                               emailBorderColor = Color(0xFFE91e63);

                             }
                             else{
                               emailBorderColor = Colors.grey.shade300;
                               return null;
                             }
                           });
                         },
                         
                         controller: emailController,
                       
                         style: const TextStyle(
                           fontSize: 28,
                           color: Colors.black54,
                           fontWeight: FontWeight.normal,
                         ),
                       
                         decoration:  InputDecoration(
                           focusColor: Colors.white,
                           prefixIcon: const Icon(
                             Icons.email_outlined,
                             color: Colors.black54,
                           ),
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10.0),
                           ),
                       
                           focusedBorder: OutlineInputBorder(
                             borderSide:
                             const BorderSide(color: Colors.blue, width: 1.0),
                             borderRadius: BorderRadius.circular(10.0),
                           ),
                           fillColor: Colors.grey,
                           hintText: "Enter Your E-mail",
                           hintStyle: const TextStyle(
                             color: Colors.black54,
                             fontSize: 26,
                             fontWeight: FontWeight.w400,
                           ),
                       
                         ),
                       
                       ),
                     ),

                     SizedBox(height: mediaquery.height*.02,),

                     //TextForm for Password
                     Form(
                       key:passkey,
                       child: TextFormField(
                         controller: passController,

                         obscureText: obSecure,

                         validator: (value) {
                           if(value!.isEmpty)
                             {
                               return "Please Enter Your Password";
                             }
                            return null;
                         },

                         style: const TextStyle(
                           fontSize: 28,
                           color: Colors.black54,
                           fontWeight: FontWeight.normal,
                         ),

                         decoration:  InputDecoration(
                           focusColor: Colors.white,
                           prefixIcon: const Icon(
                             Icons.password,
                             color: Colors.black54,

                           ),

                           suffixIcon:IconButton(
                             onPressed: () {
                               setState(() {
                                 obSecure=!obSecure;
                               });
                             },
                             icon: obSecure?Icon(Icons.remove_red_eye):Icon(Icons.visibility_off),
                           ),

                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(10.0),
                           ),

                           focusedBorder: OutlineInputBorder(
                             borderSide:
                             const BorderSide(color: Colors.blue, width: 1.0),
                             borderRadius: BorderRadius.circular(10.0),
                           ),
                           fillColor: Colors.grey,
                           hintText: "Enter Password",
                           hintStyle: const TextStyle(
                             color: Colors.black54,
                             fontSize: 26,
                             fontWeight: FontWeight.w400,
                           ),

                         ),

                       ),
                     ),

                     SizedBox(height: mediaquery.height*.02,),

                     //Button Login
                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: MaterialButton(
                         shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(22)
                         ),
                         elevation: 18,
                         minWidth: MediaQuery.of(context).size.width*.75,
                         height: MediaQuery.of(context).size.height*.07,
                       color: Colors.purple.shade200,
                         onPressed: () {
                           if(key.currentState!.validate()&&passkey.currentState!.validate()){
                             Navigator.push(context, MaterialPageRoute(
                              builder: (context) => welcomePage(),));
                           }
                           print("sucess");
                         }
                         ,child: Text("Login",style: const TextStyle(
                           fontSize: 27
                       ),),),
                     ),




                   ],
                 ),
               ),
             ),

               SizedBox(height: mediaquery.height*.06,),


              //Login by Social

                Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,

                 children: [
                   Container(
                     height: mediaquery.height*.002,
                     color: Colors.black,
                     width: mediaquery.width*.24,
                   ),
                   const Text("Or signin With ...",style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.normal,
                   ),),
                   Container(
                     height: mediaquery.height*.002,
                     color: Colors.black,
                     width: mediaquery.width*.24,
                   ),
                 ],
               ),
              SizedBox(height: mediaquery.height*.02,),
               const Padding(
                 padding: EdgeInsets.all(8.0),
                 child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius:25,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage("assets/images/Pinterest.png"),
                    ),


                    CircleAvatar(
                      radius:25,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage("assets/images/Instagram.png"),
                    ),
                    CircleAvatar(
                      radius:25,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage("assets/images/Facebook.png"),
                    ),


                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius:25,
                      backgroundImage: AssetImage("assets/images/Google.png"),
                    ),
                    CircleAvatar(
                      radius:25,
                      backgroundColor: Colors.transparent,
                      backgroundImage: AssetImage("assets/images/Github.png"),
                    ),
                  ],
                               ),
               ),



              //Image.asset("assets/images/login.png"),
            ],
          ),
        ),
      ),
    );
  }
}
