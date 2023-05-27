import 'package:app_delivery/src/utils/my_colors.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(top: -60.0, left: -100.0, child: _circleRegister()),
            SingleChildScrollView(
              child: Column(
                children: [
                  _imageRegister(),
                  _textFieldEmail(),
                  _textFieldName(),
                  _textFieldLastName(),
                  _textFieldNumber(),
                  _textFieldPassword(),
                  _textFieldConfirmationPassword(),
                  _bottonRegister()
                  // _textFieldConfirmationPassword(),
                  // _bottonRegister(),
                ],
              ),
            ),
            Positioned(top: 30.0, left: 10.0, child: _title()),
          ],
        ),
      ),
    );
  }

  _bottonRegister() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30.0),
      child: ElevatedButton(
        onPressed: () {},
        child: const Text(
          'REGISTRARSE',
          style: TextStyle(color: Colors.white, fontSize: 16.0, fontFamily: ''),
        ),
        style: ElevatedButton.styleFrom(
            primary: MyColors.primaryColor,
            padding: const EdgeInsets.symmetric(vertical: 15.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0))),
      ),
    );
  }

  _textFieldConfirmationPassword() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
      decoration: BoxDecoration(
          color: MyColors.primaryColorOpacity,
          borderRadius: BorderRadius.circular(30.0)),
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'Confirmar contraseña',
            hintStyle: TextStyle(color: MyColors.primaryColor),
            prefixIcon: Icon(Icons.lock_outline, color: MyColors.primaryColor),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(15.0)),
      ),
    );
  }

  _textFieldPassword() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
      decoration: BoxDecoration(
          color: MyColors.primaryColorOpacity,
          borderRadius: BorderRadius.circular(30.0)),
      child: TextField(
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        decoration: InputDecoration(
            hintText: 'contraseña',
            hintStyle: TextStyle(color: MyColors.primaryColor),
            prefixIcon: Icon(Icons.lock, color: MyColors.primaryColor),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(15.0)),
      ),
    );
  }

  _textFieldNumber() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
      decoration: BoxDecoration(
          color: MyColors.primaryColorOpacity,
          borderRadius: BorderRadius.circular(30.0)),
      child: TextField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            hintText: 'Telefono',
            hintStyle: TextStyle(color: MyColors.primaryColor),
            prefixIcon: Icon(Icons.phone, color: MyColors.primaryColor),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(15.0)),
      ),
    );
  }

  _textFieldLastName() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
      decoration: BoxDecoration(
          color: MyColors.primaryColorOpacity,
          borderRadius: BorderRadius.circular(30.0)),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Apellido',
            hintStyle: TextStyle(color: MyColors.primaryColor),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(15.0),
            prefixIcon: Icon(
              Icons.person_outline,
              color: MyColors.primaryColor,
            )),
      ),
    );
  }

  _textFieldName() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
      decoration: BoxDecoration(
        color: MyColors.primaryColorOpacity,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
            hintText: 'Nonbre',
            hintStyle: TextStyle(color: MyColors.primaryColor),
            prefixIcon: Icon(Icons.person, color: MyColors.primaryColor),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(15.0)),
      ),
    );
  }

  _textFieldEmail() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5.0),
      decoration: BoxDecoration(
          color: MyColors.primaryColorOpacity,
          borderRadius: BorderRadius.circular(30)),
      child: TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            hintText: 'Correo electronico',
            hintStyle: TextStyle(color: MyColors.primaryColor),
            prefixIcon: Icon(Icons.email, color: MyColors.primaryColor),
            border: InputBorder.none,
            contentPadding: const EdgeInsets.all(15.0)),
      ),
    );
  }

  _imageRegister() {
    final size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        height: 150.0,
        width: 150.0,
        margin: EdgeInsets.only(
            top: size.height * 0.13, bottom: size.height * 0.05),
        decoration: BoxDecoration(
            color: Colors.grey[200], borderRadius: BorderRadius.circular(100)),
        child: Image.asset(
          'assets/img/user_profile.png',
          height: 200.0,
          width: 200.0,
          color: MyColors.primaryColor.withOpacity(0.7),
          scale: 5,
        ),
      ),
    );
  }

  Widget _circleRegister() {
    return Container(
      width: 440,
      height: 140,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          color: MyColors.primaryColor),
    );
  }

  Widget _title() {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      // color: Colors.blue,
      width: size.width * 0.6,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [_iconButton(), _textRegister()],
      ),
    );
  }

  Widget _iconButton() {
    return IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.arrow_back_ios, color: Colors.white));
  }

  Widget _textRegister() {
    return const Text(
      'REGISTRO',
      style: TextStyle(
          color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
