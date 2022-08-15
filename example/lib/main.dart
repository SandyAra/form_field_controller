import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:form_field_controller/form/utils/form_field_controller.dart';
import 'package:form_field_controller/form_field_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  final GlobalKey<FormState> _formKey = GlobalKey();

  PhoneFormFieldController phoneController = PhoneFormFieldController(const ValueKey("txtPhone"));

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [


                TextFormField(
                  controller: phoneController.textEditingController,
                  focusNode: phoneController.focusNode,
                  validator: phoneController.validator,
                  inputFormatters: phoneController.inputFormatter,
                  maxLength: phoneController.maxLength,
                  decoration: const InputDecoration(labelText: "Phone Number"),
                ),


              ],
            ),
          ),
        ),
        bottomNavigationBar: SafeArea(
          child: Container(
            width: double.infinity,
            height: 45,
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: MaterialButton(
              color: Colors.blue,
              onPressed: (){
                _formKey.currentState?.validate();
              },
              child: Text("Submit", style: TextStyle(color: Colors.white),),
            ),
          ),
        )
      ),
    );
  }
}
