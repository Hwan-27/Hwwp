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
              mainAxisAlignment: MainAxisAlignment.start,
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
                  width: 450,
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
        body: ListView(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 85),
              child: Text(
                'PORTFOLIO',
                style: TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 85),
              child: Text('WebSite',
                  style: TextStyle(fontSize: 72, fontWeight: FontWeight.bold)),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 85),
              child: Text('KIM KI HWAN',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 85),
              child: Text('FLUTTER',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 85),
              child: Text('2023',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            ),
            const SizedBox(
              height: 420,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 85),
              child: Text('CONTACT.',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 85),
              child: Text('manchu13@naver.com',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
            ),
            const SizedBox(
              height: 200,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 300),
              child: Text(
                '안녕하세요. 처음 뵙겠습니다,',
                style: TextStyle(fontSize: 24),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 300),
              child: Text(
                '개발자 김기환입니다.',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 300),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start, // 가로 정렬을 왼쪽으로 설정
                crossAxisAlignment: CrossAxisAlignment.center, // 수직 가운데 정렬
                children: [
                  Image.asset(
                    'images/kihwan.jpg',
                    width: 300,
                    height: 300,
                  ),
                  const SizedBox(
                    width: 200, // 이미지와 텍스트 사이의 간격 조절
                  ),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Experience \n * 2023   캐드정보기술 \n * 2022 - 2023 리안 \n * 2019 - 2021 청운하이테크  ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Education',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 85,
                      ),
                      Text(
                        'Tool',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 300,
            )
          ],
        ));
  }
}
