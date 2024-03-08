import 'package:flutter/material.dart';

import '../utils/appColors.dart';
import '../utils/appContainers.dart';
import '../utils/appETCUtils.dart';
import 'loginAfter.dart';


class LoginBefore extends StatefulWidget {
  const LoginBefore({super.key});

  @override
  State<LoginBefore> createState() => _LoginBeforeState();
}

class _LoginBeforeState extends State<LoginBefore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appBackWhite,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      AppContainer(
                          border: 5,
                          child: Padding(
                            padding: EdgeInsets.all(4.0),
                            child: Icon(
                              Icons.person,
                              size: 30,
                            ),
                          ))
                    ],
                  ),
                ),
                const Expanded(flex: 5, child: SizedBox()),
                Expanded(
                  flex: 8,
                  child: SizedBox(
                      height: 10,
                      width: 10,
                      child: Image.asset('assets/logo/name logo-cutout.png')),
                ),
                const Expanded(flex: 3, child: SizedBox()),
                const Expanded(
                  flex: 4,
                  child: AppTextField(text: '로그인 ID'),
                ),
                //Expanded(flex: 1, child: SizedBox()), //empty space
                const Expanded(
                  flex: 4,
                  child: AppTextField(text: '로그인 Password'),
                ),
                const Expanded(flex: 3, child: SizedBox()),
                Expanded(
                  flex: 5,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const DashBoard()),
                      );
                    },
                    child: Container(
                      height: 40,
                      width: 100,
                      decoration: BoxDecoration(
                        color: appPoint,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const Center(
                        child: Text(
                          '로그인',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const Expanded(flex: 10, child: SizedBox()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}