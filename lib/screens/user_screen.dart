import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 2,
        backgroundColor: Theme.of(context).colorScheme.background,
        title: const Icon(
          Icons.clear_outlined,
          size: 50,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 10,
        ),
        child: Column(
          // 세로축 정렬
          mainAxisAlignment: MainAxisAlignment.start,
          // 가로축 정렬
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 40,
            ),
            Text(
              "X 가입하기",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w900,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "data",
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
