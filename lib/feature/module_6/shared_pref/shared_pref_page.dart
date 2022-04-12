import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:mobile_b/tools/common_submit_button.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefPage extends StatefulWidget {
  const SharedPrefPage({Key? key}) : super(key: key);

  @override
  State<SharedPrefPage> createState() => _SharedPrefPageState();
}

class _SharedPrefPageState extends State<SharedPrefPage> {

  bool status = false;

  final Future<SharedPreferences> _myPref = SharedPreferences.getInstance();

  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  final String usernameDB = "mobile";
  final String passwordDB = "mobile123";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Preferenced"),
      ),
      body: Container(
        child: Column(
          children: [
            TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                hintText: "Username",
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
            _buildCheckStatus()
          ],
        ),
      ),
    );
  }

  Widget _buildLoginButton(){
    return CommonSubmitButton(
        labelButton: "Login",
        submitCallback: (value){
          String currentUsername = _usernameController.value.text;
          String currentPassword = _passwordController.value.text;

          _prosesLogin(currentUsername, currentPassword);
        }
    );
  }

  Widget _buildLogoutButton(){
    return CommonSubmitButton(
        labelButton: "Logout",
        submitCallback: (value){
          _prosesLogout();
        }
    );
  }

  Widget _buildCheckStatus(){
    return CommonSubmitButton(
        labelButton: "Check Status",
        submitCallback: (value){
          _prosesCheck();
        }
    );
  }

  void _prosesLogin(String username, String password) async {
    if(username == usernameDB && password == passwordDB){
      SharedPreferences getPref = await _myPref;
      await getPref.setBool("loginStatus", true);
    }
  }

  void _prosesLogout() async{
    SharedPreferences getPref = await _myPref;
    await getPref.setBool("loginStatus", false);
  }

  void _prosesCheck() async{
    SharedPreferences getPref = await _myPref;
    status = getPref.getBool("loginStatus") ?? false;
    _showToast("Current status {$status}", duration: Toast.LENGTH_SHORT, gravity: ToastGravity.BOTTOM);
  }

  void _showToast(String msg, {Toast? duration, ToastGravity? gravity}){
    Fluttertoast.showToast(msg: msg, toastLength: duration, gravity: gravity);
  }
}
