import 'package:flutter/material.dart';
import 'package:pcontacts/models/contact.dart';
import 'styles.dart';

class ContactInfo extends StatelessWidget {
  final Contact contact;

  const ContactInfo(this.contact, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(contact.name, style: Styles.navBarTitle)),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: _renderBody(context, contact),
        )
      );
  }

  List<Widget> _renderBody(BuildContext context, Contact contact) {
    var result = <Widget>[];
    result.add(_bannerImage(contact.url, 170.0));
    result.addAll(_renderFacts(context, contact));
    return result;
  }

  List<Widget> _renderFacts(BuildContext context, Contact contact) {
    var result = <Widget>[];
    for (int i = 0; i < contact.dets.length; i++) {
      result.add(_sectionTitle(contact.dets[i].title));
      result.add(_sectionText(contact.dets[i].text));
    }
    return result;
  }

  Widget _sectionTitle(String text) {
    return Container(
        padding: const EdgeInsets.fromLTRB(25.0, 25.0, 25.0, 10.0),
        child:
            Text(text, textAlign: TextAlign.left, style: Styles.headerLarge));
  }

  Widget _sectionText(String text) {
    return Container(
        padding: const EdgeInsets.fromLTRB(25.0, 15.0, 25.0, 15.0),
        child: Text(text, style: Styles.textDefault));
  }

  Widget _bannerImage(String url, double height) {
    return Container(
      constraints: BoxConstraints.tightFor(height: height),
      child: Image.network(url, fit: BoxFit.fitWidth),
    );
  }
}
