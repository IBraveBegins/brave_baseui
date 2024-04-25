import 'package:flutter/material.dart';

class BaseTextField extends StatefulWidget {
  const BaseTextField({super.key});

  @override
  State<BaseTextField> createState() => _BaseTextFieldState();
}

class _BaseTextFieldState extends State<BaseTextField> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _selectionController = TextEditingController();
  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusScopeNode? focusScopeNode;

  FocusNode focusNode3 = FocusNode();

  get _passwordContent => Column(
        children: [
          TextField(
            autofocus: true,
            controller: _nameController,
            onChanged: (text) {
              print('onChanged $text');
            },
            decoration: const InputDecoration(
              labelText: "用户名",
              hintText: "请输入用户名或邮箱",
              prefixIcon: Icon(Icons.person),
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              labelText: "密码",
              hintText: "请输入密码",
              prefixIcon: Icon(Icons.lock),
            ),
            obscureText: true,
          ),
        ],
      );

  get _selectionContent => TextField(
        controller: _selectionController,
      );

  @override
  void initState() {
    super.initState();
    _nameController.addListener(() {
      print(_nameController.text);
    });
    _selectionController.text = "hello world!";
    focusNode1.addListener(() {
      print("focusNode1 ${focusNode1.hasFocus}");
    });
    focusNode2.addListener(() {
      print("focusNode2 ${focusNode2.hasFocus}");
    });
    focusNode3.addListener(() {
      // hasFocus = focusNode3.hasFocus;
      setState(() {});
    });
  }

  bool hasFocus = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('输入框和表单'),
      ),
      body: Column(
        children: [
          // _partOne(),
          // _partFocus(),
          _partCustom(),
        ],
      ),
    );
  }

  Widget _partOne() {
    return Column(
      children: [
        _passwordContent,
        const SizedBox(height: 6),
        _selectionContent,
        ElevatedButton(
          onPressed: () {
            _selectionController.selection = TextSelection(
              baseOffset: 0,
              extentOffset: _selectionController.text.length,
            );
          },
          child: const Text("全选"),
        ),
        const SizedBox(height: 6),
      ],
    );
  }

  Widget _partFocus() {
    return Column(
      children: [
        TextField(
          autofocus: true,
          focusNode: focusNode1,
          decoration: const InputDecoration(
            labelText: "input1",
          ),
        ),
        TextField(
          focusNode: focusNode2,
          decoration: const InputDecoration(
            labelText: "input2",
          ),
        ),
        ElevatedButton(
            onPressed: () {
              focusScopeNode ??= FocusScope.of(context);
              focusScopeNode?.requestFocus(focusNode2);
            },
            child: const Text("移动焦点")),
        ElevatedButton(
            onPressed: () {
              focusNode1.unfocus();
              focusNode2.unfocus();
            },
            child: const Text("隐藏键盘")),
      ],
    );
  }

  Widget _partCustom() {
    // return const Column(
    //   children: [
    //     TextField(
    //       decoration: InputDecoration(
    //           labelText: "请输入用户名",
    //           enabledBorder: UnderlineInputBorder(
    //             borderSide: BorderSide(color: Colors.green),
    //           ),
    //           focusedBorder: UnderlineInputBorder(
    //             borderSide: BorderSide(color: Colors.blue),
    //           )),
    //     ),
    //   ],
    // );
    // return Theme(
    //     data: Theme.of(context).copyWith(
    //         hintColor: Colors.deepOrange,
    //         inputDecorationTheme: const InputDecorationTheme(
    //             labelStyle: TextStyle(color: Colors.blue),
    //             hintStyle: TextStyle(color: Colors.grey, fontSize: 12))),
    //     child: const Column(
    //       children: [
    //         TextField(
    //           decoration: InputDecoration(
    //             labelText: "用户名",
    //             hintText: "请输入用户名",
    //             prefixIcon: Icon(Icons.person),
    //           ),
    //         ),
    //         TextField(
    //           decoration: InputDecoration(
    //             labelText: "密码",
    //             hintText: "请输入密码",
    //             hintStyle: TextStyle(color: Colors.green, fontSize: 14),
    //             prefixIcon: Icon(Icons.person),
    //           ),
    //           obscureText: true,
    //         ),
    //       ],
    //     ));
    return Container(
      // decoration: focusNode3.hasFocus
      //     ? const BoxDecoration(
      //         border: Border(bottom: BorderSide(color: Colors.blue, width: 1)))
      //     : const BoxDecoration(
      //         border: Border(bottom: BorderSide(color: Colors.grey, width: 1))),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(
                  color: focusNode3.hasFocus ? Colors.blue : Colors.grey,
                  width: 1))),
      child: TextField(
        focusNode: focusNode3,
        keyboardType: TextInputType.emailAddress,
        decoration: const InputDecoration(
          labelText: "Email",
          hintText: "电子邮件地址",
          prefixIcon: Icon(Icons.email),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
