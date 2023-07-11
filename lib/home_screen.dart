import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50)
                )
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 50,
                  ),
                  ListTile(
                    title: Text("Hello User",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),),
                    subtitle: Text("Good morning!",style: TextStyle(color: Colors.white),),
                    trailing: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage("https://images.pexels.com/photos/3796217/pexels-photo-3796217.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                    ),
                  ),
                  const SizedBox(height: 30)
                ],
              ),
            ),
            Container(
              color: Theme.of(context).primaryColor,
              child: Container(
                padding:EdgeInsets.symmetric(horizontal: 50),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(150)
                  )
                ),
                child: GridView.count(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    crossAxisCount: 2,
    crossAxisSpacing: 40,
    mainAxisSpacing: 30,
    children: [
    itemDashboard('Videos', CupertinoIcons.play_rectangle, Colors.deepOrange),
    itemDashboard('Analytics', CupertinoIcons.graph_circle, Colors.green),
    itemDashboard('Audience', CupertinoIcons.person_2, Colors.purple),
    itemDashboard('Comments', CupertinoIcons.chat_bubble_2, Colors.brown),
    itemDashboard('Revenue', CupertinoIcons.money_dollar_circle, Colors.indigo),
    itemDashboard('Upload', CupertinoIcons.add_circled, Colors.teal),
    itemDashboard('About', CupertinoIcons.question_circle, Colors.blue),
    itemDashboard('Contact', CupertinoIcons.phone, Colors.pinkAccent),
    ],
    ),
    ),
              ),


          ],
        ),
    );
  }

  itemDashboard(String title, IconData iconData, Color background) => Container(
  decoration: BoxDecoration(
  color: Colors.white,
  borderRadius: BorderRadius.circular(10),
  boxShadow: [
  BoxShadow(
  offset: const Offset(0, 5),
  color: Theme.of(context).primaryColor.withOpacity(.2),
  spreadRadius: 2,
  blurRadius: 5
  )
  ]
  ),
  child: Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
  Container(
  padding: const EdgeInsets.all(10),
  decoration: BoxDecoration(
  color: background,
  shape: BoxShape.circle,
  ),
  child: Icon(iconData, color: Colors.white)
  ),
  const SizedBox(height: 8),
  Text(title.toUpperCase(), style: Theme.of(context).textTheme.titleMedium)
  ],
  ),);
}
