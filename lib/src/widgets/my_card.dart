import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget MyCard(String task){
  return Card(
    elevation: 5,
    margin: const EdgeInsets.symmetric(
      horizontal: 10,
      vertical: 5,
    ),
    child: Container( 
      padding: const EdgeInsets.all(5),
      child: ListTile( 
        title: Text(
          "$task",
          style: GoogleFonts.averageSans(
            fontSize: 18,
            fontWeight: FontWeight.w200,
          ),
        ),
        onLongPress: () {
         
        },
      ),
    ),
  );
}