import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';


void main() {
  runApp( MyApp());
}



class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  _callNumber() async{
    const number = '8302589980'; //set the number here
    bool? res = await FlutterPhoneDirectCaller.callNumber(number);

  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: ColorfulSafeArea(
         color: Colors.blue,
         child: Scaffold(
           backgroundColor: Colors.blue,
           body: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: [
               const SizedBox(width: double.infinity),
               const CircleAvatar(
                 backgroundColor: Colors.white,
                 radius: 70,
                 backgroundImage: AssetImage('image/abc.jpg'),
               ),
                SizedBox(
                 height:25 ,
               ),
               // Container(
               //   height: 50,
               //    width: 250,
               //    alignment: Alignment.center,
               //    decoration:  BoxDecoration(
               //      borderRadius: BorderRadius.circular(6),
               //      color: Colors.white,
               //    ),
               //    child: Text("Parijat Majumder",
               //    style: TextStyle(
               //      fontSize: 19,
               //      fontWeight: FontWeight.w600,
               //    ),
               //    )
               // ),
               const Text("Parijat Majumder",
                 style: TextStyle(
                   fontSize: 20,
                   color: Colors.white,
                   fontWeight: FontWeight.w500,
                 ),
               ),
               const SizedBox(
                 height:8 ,
               ),
                const Text("Flutter Developer",
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                ),
                ),

               Container(
                 margin:EdgeInsets.all(10) ,
                 height: 1,
                 width: double.infinity,
                 decoration: const BoxDecoration(
                   color:Colors.white,

                 ),
               ),

               const Card(
                 margin: EdgeInsets.all(10),
                 child: ListTile(
                   leading: Icon(
                     Icons.mail,
                   ),
                   title: const Text("majumder.parijat@gmail.com",
                     style: TextStyle(
                       fontSize: 19,
                       fontWeight: FontWeight.w600,
                     ),
                   ),

                 ),
               ),
               GestureDetector(
                 onTap: _callNumber,
                 child: const Card(
                   margin: EdgeInsets.all(10),
                   child: ListTile(
                     leading: Icon(
                       Icons.phone,
                     ),
                     title: const Text("8302589980",
                       style: TextStyle(
                         fontSize: 19,
                         fontWeight: FontWeight.w600,
                       ),
                     ),

                   ),
                 ),
               ),


             ],
           ),


         ),

         )
       );
  }
}




