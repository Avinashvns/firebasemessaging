
import 'package:firebase_core/firebase_core.dart';
import 'package:firebasemessaging/homepage.dart';
import 'package:flutter/material.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: '/',
    routes: {
      '/':(context)=> MyApp(),
      '/second':(context)=>HomePage(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Firebase Messaging"),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.green,Colors.lightGreenAccent],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              Container(
                height: 600,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Card(
                      //color: Colors.greenAccent,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        // child: Text("Welcome in My App\nToday , I am working on firebase notification\n"
                        //     "and In-App messaging  "),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Welcome in My App\n",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w700,color: Colors.green),),
                            Text("Today ,\n",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                            Text("I am working on firebase notification\n",style: TextStyle(fontSize: 16),),
                          ],
                        ),
                      ),
                    ),
                    Image(
                      image: AssetImage("assets/images/Firebase.png"),
                    ),

                    Center(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.green.withOpacity(.80),
                        ),
                        child: Text("Continue"),
                        onPressed: (){

                          Navigator.pushNamed(context, '/second');
                        },
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
