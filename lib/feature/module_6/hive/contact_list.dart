import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:praktikum_mobile_2022_plug_e/model/contact_list_model.dart';
import 'package:praktikum_mobile_2022_plug_e/tools/common_submit_button.dart';

class ContactList extends StatefulWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  State<ContactList> createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  TextEditingController _nameController = TextEditingController();

  Box<ContactListModel> localDB = Hive.box<ContactListModel>("contact_list");

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
              _buildDBList()
            ],
          ),
        ));
  }

  Widget _buildInputField() {
    return Container(
      child: TextFormField(
        controller: _nameController,
        decoration: InputDecoration(hintText: "Enter your name..."),
      ),
    );
  }

  Widget _buildSubmitButton() {
    return Container(
      child: CommonSubmitButton(
        labelButton: 'Add Name',
        submitCallback: (String) {
          if (_nameController.text.isNotEmpty) {
            localDB.add(ContactListModel(name: _nameController.text));
            _nameController.clear();
            setState(() {});
          }
        },
      ),
    );
  }

  Widget _buildDBList() {
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
                return Center(
                    child: Text("${localDB.get(index)!.name}")
                );
              },
              itemCount: localDB.length,
            );
          }),
    );
  }
}
