import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:to_do_app/src/widgets/my_card.dart';

class ToDoUI extends StatefulWidget {
  const ToDoUI({Key? key}) : super(key: key);

  @override
  State<ToDoUI> createState() => _ToDoUIState();
}

class _ToDoUIState extends State<ToDoUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'My Tasks',
          style: GoogleFonts.averageSans(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        //backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: showAlertDialog,
        splashColor: Colors.pink[200],
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        backgroundColor: Colors.purple,
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            MyCard("Chapter one notes"),
            MyCard("Attend Flutter Webinar"),
            MyCard("Visit Inorbit Mall"),
            MyCard(
                "Grocery Shopping\nApple\nBeetroot\nCarrot\nCucumber\nSpinach\nGinger\nAshgourd"),
            MyCard(
                "Grocery Shopping\nApple\nBeetroot\nCarrot\nCucumber\nSpinach\nGinger\nAshgourd"),
            MyCard(
                "Grocery Shopping\nApple\nBeetroot\nCarrot\nCucumber\nSpinach\nGinger\nAshgourd"),
            MyCard(
                "Grocery Shopping\nApple\nBeetroot\nCarrot\nCucumber\nSpinach\nGinger\nAshgourd"),
            MyCard(
                "Grocery Shopping\nApple\nBeetroot\nCarrot\nCucumber\nSpinach\nGinger\nAshgourd"),
            MyCard(
                "Grocery Shopping\nApple\nBeetroot\nCarrot\nCucumber\nSpinach\nGinger\nAshgourd"),
            MyCard("Make Wall Decor\nBoho Hanging\nDream Catcher"),
          ],
        ),
      ),
    );
  }

  void showAlertDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        title: Text(
          "Add Task",
          style: GoogleFonts.averageSans(),
        ),
        content: Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
          TextField(
            autofocus: true,
            style: GoogleFonts.averageSans(
              fontSize: 18,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 10),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                child: Text(
                  "ADD",
                  style: GoogleFonts.averageSans(fontSize: 18),
                ),)
            ],
          ),
        ]),
      ),
    );
  }
}
