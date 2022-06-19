
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: ListView(
            children: [
              Divider(
                height: 15,
                color: Colors.grey,
                indent: 10,
                endIndent: 10,
                thickness: 5,
              ),
              Divider(
                height: 5,
                color: Colors.black54,
                indent: 20,
                endIndent: 20,
                thickness: 5,
              ),
              Divider(
                height: 15,
                color: Colors.grey,
                indent: 30,
                endIndent: 30,
                thickness: 5,
              ),

              Card(
                //color: Colors.green.withOpacity(.70),
                margin: const EdgeInsets.all(15),
                child: Container(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage("assets/images/Firebase.png"),
                            foregroundColor: Colors.red,
                          ),
                          SizedBox(width: 20,),
                          Text("Firebase Messaging",style: TextStyle(fontSize: 25,color: Colors.green),)
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              Divider(
                height: 5,
                color: Colors.grey,
                indent: 40,
                endIndent: 40,
                thickness: 5,
              ),
              Divider(
                height: 15,
                color: Colors.black45,
                indent: 50,
                endIndent: 50,
                thickness: 5,
              ),
              Divider(
                height: 5,
                color: Colors.grey,
                indent: 60,
                endIndent: 60,
                thickness: 5,
              ),

              Card(
                //color: Colors.green.withOpacity(.70),
                margin: const EdgeInsets.all(15),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ListTile(
                        leading: Icon(Icons.accessibility,color: Colors.black,size: 30,),
                        title: Text("Aman"),
                        subtitle: Text("Singh"),
                        trailing: Icon(Icons.recent_actors,
                          color: Colors.pink,
                          size: 30.0,),
                      ),
                      ListTile(
                        leading: Icon(Icons.accessibility,color: Colors.black,size: 30,),
                        title: Text("Raj"),
                        subtitle: Text("Kumar"),
                        trailing: Icon(Icons.favorite,
                          color: Colors.pink,
                          size: 30.0,),
                      ),
                      ListTile(
                        leading: Icon(Icons.accessibility,color: Colors.black,size: 30,),
                        title: Text("Rani"),
                        subtitle: Text("Shukla"),
                        trailing: Icon(Icons.adb,
                          color: Colors.pink,
                          size: 30.0,),
                      ),
                      ListTile(
                        leading: Icon(Icons.accessibility,color: Colors.black,size: 30,),
                        title: Text("Harish"),
                        subtitle: Text("Chandra"),
                        trailing: Icon(Icons.account_circle,
                          color: Colors.pink,
                          size: 30.0,),
                      ),
                    ],
                  ),
                ),
              ),


            ],
          ),
        ),
      ),
    );
  }
}
