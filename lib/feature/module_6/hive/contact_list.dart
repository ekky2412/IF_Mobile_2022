import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:mobile_b/model/contact_list_model.dart';
import 'package:mobile_b/tools/common_submit_button.dart';

class ContactList extends StatefulWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  Box<ContactListModel> localDB = Hive.box<ContactListModel>("contact_list");

  TextEditingController _inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hive Database"),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            _buildInputField(),
            _buildSubmitButton(),
            _buildList()
          ],
        ),
      ),
    );
  }

  Widget _buildInputField() {
    return TextFormField(
      controller: _inputController,
    );
  }

  Widget _buildSubmitButton() {
    return CommonSubmitButton(
        labelButton: "Add Data",
        submitCallback: (value) {
          localDB.add(ContactListModel(name: _inputController.text));
          _inputController.clear();
          setState(() {});
        });
  }

  Widget _buildList() {
    return Expanded(
      child: ValueListenableBuilder(
          valueListenable: localDB.listenable(),
          builder: (BuildContext context, Box<dynamic> value, Widget? child) {
            if (value.isEmpty) {
              return Center(
                child: Text("Data Kosong"),
              );
            }

            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return Text("${localDB.getAt(index)!.name}");
              },
              itemCount: localDB.length,
            );
          }),
    );
  }
}
