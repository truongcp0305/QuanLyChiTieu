import 'package:flutter/material.dart';

class Add extends StatelessWidget {
  const Add({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Thêm giao dịch", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.white,
      ),
      body: Column(
        children: [
          Form(child: Container(),)
        ],
      ),
    );
  }
}


