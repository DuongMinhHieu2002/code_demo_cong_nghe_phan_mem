import 'package:flutter/material.dart';
import 'package:login_with_signup/Comm/comHelper.dart';
import 'package:login_with_signup/Comm/genTextFormField.dart';
import 'package:login_with_signup/Screens/paymentsuccessful.dart';

class PaymentsScreen extends StatefulWidget {
  @override
  _SignupFormState createState() => _SignupFormState();
}

class _SignupFormState extends State<PaymentsScreen> {
  final _formKey = new GlobalKey<FormState>();

  final _phonenumber = TextEditingController();
  final _conUserName = TextEditingController();
  final _conEmail = TextEditingController();
  // var dbHelper;

  @override
  void initState() {
    super.initState();
    // dbHelper = DbHelper();
  }

  signUp() async {
    String uid = _phonenumber.text;
    String uname = _conUserName.text;
    String email = _conEmail.text;

    if (_formKey.currentState.validate()) {
      if (uid.isEmpty || uname.isEmpty || email.isEmpty) {
        alertDialog(context, 'Bạn chưa nhập đủ thông tin');
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (_) => paymentsuccesful()));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Đặt đơn'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // genLoginSignupHeader('Signup'),
                  SizedBox(height: 10.0),
                  getTextFormField(
                      controller: _phonenumber,
                      icon: Icons.phone_android,
                      hintName: 'Số điện thoại'),
                  SizedBox(height: 10.0),
                  getTextFormField(
                      controller: _conUserName,
                      icon: Icons.person_outline,
                      inputType: TextInputType.name,
                      hintName: 'Họ tên'),
                  SizedBox(height: 10.0),
                  getTextFormField(
                      controller: _conEmail,
                      icon: Icons.map_outlined,
                      inputType: TextInputType.streetAddress,
                      hintName: 'Địa chỉ'),
                  SizedBox(height: 10.0),
                  Container(
                    margin: EdgeInsets.all(30.0),
                    width: double.infinity,
                    child: FlatButton(
                      child: Text(
                        'Đặt hàng',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: signUp,
                    ),
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
