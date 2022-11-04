import 'package:flutter/material.dart';
import 'contact_list.dart';
import 'package:pcontacts/sample/sample_contacts.dart';

void main() {
  final sampleContacts = SampleContact.fetchAll();

  return runApp(
    MaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          color: Colors.deepOrange),
        fontFamily: 'Raleway'),
      home: ContactList(
        sampleContacts),
        debugShowCheckedModeBanner: false,
        ),
      );
}