import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tap_voucher/screens/home.dart';
import 'package:tap_voucher/values/app_assets.dart';
import 'package:tap_voucher/values/app_colors.dart';
import 'package:tap_voucher/widgets/app_bar/app_bar_main.dart';

class AuthenticationPage extends StatefulWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  State<AuthenticationPage> createState() => _AuthenticationPageState();
}

class _AuthenticationPageState extends State<AuthenticationPage> {
  TextEditingController phoneController = TextEditingController();

  bool showCreatePassword = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        FocusScopeNode currentFocus = FocusScope.of(context);

        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: AppColor.primaryColor,
        body: Container(
          color: AppColor.primaryColor,
          child: Column(
            children: [
              const AppBarMain(title: 'Tạo mật khẩu'),
              SizedBox(
                height: size.height * 7 / 10,
                child: showCreatePassword
                    ? _buildCreatePassword1(phoneController.text)
                    : _buildCreatePassword2(phoneController.text),
              ),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildCreatePassword1(String phoneNumber) {
    return Column(
      children: [
        Padding(
          padding:
          const EdgeInsets.only(top: 60, right: 60, bottom: 48, left: 60),
          child: Column(
            children: [
              CircleAvatar(
                radius: (50),
                backgroundColor: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    AppAssets.user,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 0.8),
                child: Text('Xin chào!'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0.8),
                child: Text(phoneNumber),
              )
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(
            top: 20,
          ),
          child: ElevatedButton(
            onPressed: () {
              setState(() {
                showCreatePassword = true;
              });
            },
            style: ElevatedButton.styleFrom(
              primary: AppColor.buttonColor,
              padding: const EdgeInsets.only(
                left: 170,
                right: 170,
                bottom: 20,
                top: 20,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), // <-- Radius
              ),
            ),
            child: const Text(
              'Tạo mật khẩu',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 24),
          child: Center(
            child: InkWell(
              child: const Text(
                'Để sau',
                style: TextStyle(
                  color: Colors.blueAccent,
                ),
              ),
              onTap: () {
                setState(() {
                  showCreatePassword = false;
                });
              },
            ),
          ),
        ),

      ],
    );
  }
}
