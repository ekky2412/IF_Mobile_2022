import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:praktikum_mobile_2022_plug_e/tools/common_submit_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefPage extends StatefulWidget {
  const SharedPrefPage({Key? key}) : super(key: key);

  @override
  State<SharedPrefPage> createState() => _SharedPrefPageState();
}

class _SharedPrefPageState extends State<SharedPrefPage> {

  final Future<SharedPreferences> _myPref = SharedPreferences.getInstance();

  final String usernameDB = "mobile";
  final String passwordDB = "mobile_e";

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preference"),
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [
            TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                hintText: "Username"
              ),
            ),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                  hintText: "Password"
              ),
            ),
            _buildLoginButton(),
            _buildLogoutButton(),
            _buildCheckStatusButton()
          ],
        ),
      ),
    );
  }

  Widget _buildLoginButton(){
    return CommonSubmitButton(
        labelButton: "Login",
        submitCallback: (value){
          _processLogin();
        }
    );
  }

  void _processLogin() async{
    String currentUsername = _usernameController.value.text;
    String currentPassword = _passwordController.value.text;

    if(currentUsername == usernameDB && currentPassword == passwordDB){
      SharedPreferences getPref = await _myPref;
      await getPref.setBool("loginStatus", true);
    }
  }

  Widget _buildLogoutButton(){
    return CommonSubmitButton(
        labelButton: "Logout",
        submitCallback: (value){
          _processLogout();
        }
    );
  }

  void _processLogout() async{
    SharedPreferences getPref = await _myPref;
    await getPref.setBool("loginStatus", false);
  }

  Widget _buildCheckStatusButton(){
    return CommonSubmitButton(
        labelButton: "Check Status",
        submitCallback: (value){
          _processCheck();
        }
    );
  }

  void _processCheck() async{
    SharedPreferences getPref = await _myPref;
    bool status = getPref.getBool("loginStatus") ?? false;
    _showToast("Current Status : {$status}", duration: Toast.LENGTH_SHORT, gravity: ToastGravity.BOTTOM);
  }

  void _showToast(String msg, {Toast? duration, ToastGravity? gravity}){
    Fluttertoast.showToast(msg: msg, toastLength: duration, gravity: gravity);
  }
}
