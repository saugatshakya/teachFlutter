import 'package:flutter/material.dart';
import 'package:learn/static/images.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   title: Text(
      //     "Inbox",
      //     style: TextStyle(color: Colors.black),
      //   ),
      //   centerTitle: true,
      //   actions: [Image.asset(AppImage.edit)],
      // ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Image.asset(AppImage.home), label: "Home"),
        BottomNavigationBarItem(
            icon: Image.asset(AppImage.search), label: "Search")
      ]),
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 34,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    border:
                        Border(bottom: BorderSide(color: Color(0xfff2f2f2)))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    const Text(
                      "Inbox",
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                          fontSize: 16),
                    ),
                    Image.asset(AppImage.edit),
                  ],
                ),
              ),
              ListTile(
                leading: Image.asset(AppImage.users),
                title: const Text(
                  "New mentions",
                  style: TextStyle(
                      color: Color(0xff212427),
                      fontWeight: FontWeight.w600,
                      fontSize: 16),
                ),
                subtitle: Text(
                  "Phillip432 started folowing you",
                  style: TextStyle(
                      color: Color(0xff212427),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                trailing: Text(
                  "1:20 PM",
                  style: TextStyle(
                      color: Color(0xffbfbfbf),
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
