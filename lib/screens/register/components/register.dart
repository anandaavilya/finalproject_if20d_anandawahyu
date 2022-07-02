import 'package:flutter/material.dart';
import 'package:finalproj/components/surfix_icon.dart';
import 'package:finalproj/components/default_button.dart';
import 'package:finalproj/components/form_error.dart';
import 'package:finalproj/screens/rent_regis_success/rent_regis_success_screen.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class RegisterRent extends StatefulWidget {
  @override
  _CompleteRegisterRent createState() => _CompleteRegisterRent();
}

class _CompleteRegisterRent extends State<RegisterRent> {
  final _formKey = GlobalKey<FormState>();
  final List<String?> errors = [];
  String? carname;
  String? address;
  String? phonenumber;

  void addError({String? error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String? error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildCarNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildAddresMemberFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPhoneNumberFormField(),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "continue",
            press: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, RentRegisSuccessScreen.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildCarNameFormField() {
    return TextFormField(
      onSaved: (newValue) => carname = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNullCarNameError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNullCarNameError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Car",
        hintText: "Enter car name to rent",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildAddresMemberFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNullAddresError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNullAddresError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Addres",
        hintText: "Enter your addres",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/team.svg"),
      ),
    );
  }

  TextFormField buildPhoneNumberFormField() {
    return TextFormField(
      // keyboardType: TextInputType.phone,
      onSaved: (newValue) => phonenumber = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kNullPhoneNumberError);
        }
        return null;
      },
      validator: (value) {
        if (value!.isEmpty) {
          addError(error: kNullPhoneNumberError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Phone Number",
        hintText: "Enter you phone number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Phone.svg"),
      ),
    );
  }
}
