import 'package:flutter/material.dart';
import 'package:pcontacts/styles.dart';
import 'package:pcontacts/models/contact.dart';
import 'package:pcontacts/contact_info.dart';

class ContactList extends StatelessWidget {
  final List<Contact> _contacts;

  const ContactList(this._contacts, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Jejelove Contact List Flutter App',
          style: Styles.navBarTitle,
        ),
      ),
      body: Scrollbar(
        child: ListView.separated(
        itemCount: _contacts.length,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemBuilder: _listViewItemBuilder, 
      ),
    ),
    );
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    var contact = _contacts[index];
    return ListTile(
      contentPadding: const EdgeInsets.all(10),
      leading: _itemThumbnail(contact),
      title: _itemTitle(contact),
      subtitle: const Text ('3944802893',
      overflow: TextOverflow.ellipsis),
      onTap: () => _navigationToContactInfo(context, _contacts[index]),
    );
  }

  void _navigationToContactInfo(BuildContext context, Contact contact) {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ContactInfo(contact)));
  }

  Widget _itemThumbnail(Contact contact) {
    return Container(
      constraints: const BoxConstraints.tightFor(width: 100.0),
      child: Image.network(
        contact.url,
        fit: BoxFit.fitHeight,
      ),
    );
  }

  Widget _itemTitle(Contact contact) {
    return Text(
      contact.name,
      style: Styles.textDefault,
    );
  }
}
