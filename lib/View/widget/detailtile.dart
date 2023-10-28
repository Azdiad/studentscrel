import 'package:flutter/material.dart';
import 'package:students/model/model.dart';

class detailtile extends StatelessWidget {
  const detailtile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Text(
              'Details',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            backgroundColor: Colors.grey),
        body: SafeArea(
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.lightBlue[400],
                  borderRadius: const BorderRadius.all(Radius.circular(30))),
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width / 1.2,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text('Name'),
                  Text('UserName'),
                  Text('Address'),
                  Text('Phone Number'),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
