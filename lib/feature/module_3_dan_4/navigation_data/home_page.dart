import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String username;

  const HomePage({Key? key, required this.username}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String _namaLengkap = "";
  String _email = "";
  String _noHP = "";
  String _alamatRumah = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: Container(
        child: Center(
          child: Column(
            children: [
              Text(
                "Hai ${widget.username}\nSelamat Datang",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 24,),
              Text("Lengkapi Biodata"),
              SizedBox(height: 12,),
              _buildForm(),
              SizedBox(height: 24,),
              _buildButtonSubmit()
            ],
          ),
        ),
      ),
    );
  }

  Widget _formInput(
      {required String hint,
      required String label,
      required Function(String value) setStateInput,
      int maxLines = 1}) {
    return TextFormField(
      enabled: true,
      maxLines: maxLines,
      decoration: InputDecoration(
          hintText: hint,
          label: Text(label),
          contentPadding: EdgeInsets.all(12),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Colors.blue)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              borderSide: BorderSide(color: Colors.blue))),
      onChanged: setStateInput,
    );
  }

  Widget _buildForm() {
    return Column(
      children: [
        SizedBox(
          height: 12,
        ),
        _formInput(
            hint: "Masukkan Nama Lengkap",
            label: "Nama *",
            setStateInput: (value) {
              setState(() {
                _namaLengkap = value;
              });
            }),
        SizedBox(
          height: 12,
        ),
        _formInput(
            hint: "Masukkan Alamat Email",
            label: "Email *",
            setStateInput: (value) {
              setState(() {
                _email = value;
              });
            }),
        SizedBox(
          height: 12,
        ),
        _formInput(
            hint: "Masukkan NO HP Aktif",
            label: "No HP *",
            setStateInput: (value) {
              setState(() {
                _noHP = value;
              });
            }),
        SizedBox(
          height: 12,
        ),
        _formInput(
            hint: "Masukkan Alamat Rumah",
            label: "Alamat Rumah *",
            setStateInput: (value) {
              setState(() {
                _alamatRumah = value;
              });
            },
            maxLines: 3),
      ],
    );
  }

  Widget _buildButtonSubmit(){
    return Container(
      child: ElevatedButton(
        onPressed: (){},
        child: Text("Submit"),
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          textStyle: TextStyle(fontSize: 16)
        ),
      ),
    );
  }
}
