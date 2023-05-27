import 'package:app_delivery/src/login/login_controller.dart';
import 'package:flutter/material.dart';

import 'package:app_delivery/src/utils/my_colors.dart';
import 'package:flutter/scheduler.dart';
import 'package:lottie/lottie.dart';
// import 'package:lottie/lottie.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final LoginController _con = LoginController();

  @override
  void initState() {
    super.initState();
    SchedulerBinding.instance!
        .addPostFrameCallback(((timeStamp) => _con.init(context)));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(top: -60.0, left: -100.0, child: _circleLogin()),
            Positioned(top: 30.0, left: 50.0, child: _textLogin()),
            SingleChildScrollView(
              child: Column(
                children: [
                  // _imageBanner(),
                  _lottieAnimation(),
                  _textFieldEmail(),
                  _textFieldPassword(),
                  _bottonLogin(),
                  _textDontHaveAccount(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _textDontHaveAccount() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '¿No tienes cuenta?',
          style: TextStyle(color: MyColors.primaryColor),
        ),
        const SizedBox(
          width: 20.0,
        ),
        GestureDetector(
          onTap: (() {
            _con.goToRegisterPage();
          }),
          child: Text('Registrate',
              style: TextStyle(
                  fontWeight: FontWeight.bold, color: MyColors.primaryColor)),
        ),
      ],
    );
  }

  Widget _bottonLogin() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text('INGRESAR'),
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            primary: MyColors.primaryColor,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0))),
      ),
    );
  }

  Widget _textFieldPassword() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 7.0),
      decoration: BoxDecoration(
          color: MyColors.primaryColorOpacity,
          borderRadius: BorderRadius.circular(30.0)),
      child: TextField(
        decoration: InputDecoration(
            hintText: 'Contraseña',
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(15.0),
            hintStyle: TextStyle(color: MyColors.primaryColorDart),
            prefixIcon: Icon(
              Icons.lock,
              color: MyColors.primaryColor,
            )),
      ),
    );
  }

  Widget _textFieldEmail() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 7.0),
      decoration: BoxDecoration(
          color: MyColors.primaryColorOpacity,
          borderRadius: BorderRadius.circular(30.0)),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Correo electronico',
          border: InputBorder.none,
          hintStyle: TextStyle(color: MyColors.primaryColorDart),
          prefixIcon: Icon(Icons.email, color: MyColors.primaryColor),
        ),
      ),
    );
  }

  Widget _circleLogin() {
    return Container(
      width: 440,
      height: 140,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(120),
          color: MyColors.primaryColor),
    );
  }

  Widget _textLogin() {
    return const Text(
      'Los Tacos MaryMen',
      style: TextStyle(
          color: Colors.white, fontSize: 25.0, fontWeight: FontWeight.bold),
    );
  }

  Widget _lottieAnimation() {
    final size = MediaQuery.of(context).size;
    return Container(
      margin:
          EdgeInsets.only(top: size.height * 0.15, bottom: size.height * 0.15),
      child: Lottie.asset('assets/json/delivery.json',
          width: 350, height: 200, fit: BoxFit.fill),
    );
  }

  // Widget _imageBanner() {
  //   final size = MediaQuery.of(context).size;
  //   return Container(
  //     margin:
  //         EdgeInsets.only(top: size.height * 0.15, bottom: size.height * 0.15),
  //     child: Image.asset(
  //       'assets/img/delivery.png',
  //       height: 200.0,
  //       width: 200.0,
  //     ),
  //   );
  // }
}
