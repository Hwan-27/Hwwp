import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

ScrollController scrollController = ScrollController();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyMainPage(title: 'Hwwp'),
    );
  }
}

class MyMainPage extends StatefulWidget {
  const MyMainPage({super.key, required this.title});

  final String title;

  @override
  State<MyMainPage> createState() => MainPage();
}

class MainPage extends State<MyMainPage> {
  void state() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0, // 그림자 효과 제거
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 50,
                  height: 50,
                ),
                GestureDetector(
                  onTap: () {
                    print('MainPageRoute');
                    Get.to(() => MainPage());
                  },
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Image.asset(
                      'images/image3.png',
                    ),
                  ),
                ),
                const SizedBox(
                  width: 300,
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          // 호버 시 배경색 변경
                          if (states.contains(MaterialState.hovered)) {
                            return Colors.grey.shade200;
                          }
                          return Colors.transparent; // 일반 상태에서 배경색은 투명하게
                        },
                      ),
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0))),
                      fixedSize: MaterialStateProperty.all<Size>(
                          const Size.fromHeight(40))),
                  child: const Text(
                    '나의 소개',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // 텍스트 색상 변수를 사용
                    ),
                  ),
                ),
                const SizedBox(
                  width: 70,
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          // 호버 시 배경색 변경
                          if (states.contains(MaterialState.hovered)) {
                            return Colors.grey.shade200;
                          }
                          return Colors.transparent; // 일반 상태에서 배경색은 투명하게
                        },
                      ),
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0))),
                      fixedSize: MaterialStateProperty.all<Size>(
                          const Size.fromHeight(40))),
                  child: const Text('프로젝트',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ),
                const SizedBox(
                  width: 70,
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          // 호버 시 배경색 변경
                          if (states.contains(MaterialState.hovered)) {
                            return Colors.grey.shade200;
                          }
                          return Colors.transparent; // 일반 상태에서 배경색은 투명하게
                        },
                      ),
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0))),
                      fixedSize: MaterialStateProperty.all<Size>(
                          const Size.fromHeight(40))),
                  child: const Text(
                    '연락처',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(
                  width: 200,
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          // 호버 시 배경색 변경
                          if (states.contains(MaterialState.hovered)) {
                            return Colors.grey.shade200;
                          }
                          return Colors.transparent; // 일반 상태에서 배경색은 투명하게
                        },
                      ),
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0))),
                      fixedSize: MaterialStateProperty.all<Size>(
                          const Size.fromHeight(40))),
                  child: const Text(
                    'KOR',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Container(
                  child: const Text(
                    '|',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          // 호버 시 배경색 변경
                          if (states.contains(MaterialState.hovered)) {
                            return Colors.grey.shade200;
                          }
                          return Colors.transparent; // 일반 상태에서 배경색은 투명하게
                        },
                      ),
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.0))),
                      fixedSize: MaterialStateProperty.all<Size>(
                          const Size.fromHeight(40))),
                  child: const Text(
                    'ENG',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                ),
              ],
            )),
        body: ListView());
  }
}
