import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
        alignment: Alignment.topRight,
        children: [
          ClipRRect(
            clipBehavior: Clip.antiAlias,
            borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32)),
            child: ColoredBox(
              color: const Color(0xfff6ccb9),
              child: SizedBox(
                height: MediaQuery.sizeOf(context).height / 2,
                width: double.maxFinite,
              ),
            ),
          )
        ],
      )),
    );
  }
}
