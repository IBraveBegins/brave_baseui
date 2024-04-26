import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BaseForm extends StatefulWidget {
  const BaseForm({super.key});

  @override
  State<BaseForm> createState() => _BaseFormState();
}

class _BaseFormState extends State<BaseForm> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final GlobalKey _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("表单"),
      ),
      body: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column(
          children: [
            TextFormField(
              autofocus: true,
              controller: _nameController,
              decoration: const InputDecoration(
                labelText: "用户名",
                hintText: "请输入用户名",
                prefixIcon: Icon(Icons.person),
              ),
              validator: (value) {
                return value!.trim().isNotEmpty ? null : "用户名不能为空";
              },
            ),
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: "密码",
                hintText: "请输入密码",
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true,
              validator: (value) {
                return value!.length > 5 ? null : "密码不能少于6位";
              },
            ),
            Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Row(
                children: [
                  Expanded(
                    child: Builder(builder: (context) {
                      return ElevatedButton(
                        style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.blue),
                        ),
                        onPressed: () {
                          // if ((_formKey.currentState as FormState).validate()) {}
                          if (Form.of(context).validate()) {}
                        },
                        child: const Text(
                          "登录",
                          style: TextStyle(color: Colors.white),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
