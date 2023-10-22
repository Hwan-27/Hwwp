import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:hwwp/email.dart';

void main() {
  runApp(const GetMaterialApp(
    title: 'My GetX App',
    home: MyApp(),
  ));
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

  ScrollController scrollController =
      ScrollController(); // ScrollController 초기화

  void ScrollIntroduction() {
    const targetOffset = 900.0; // 이동하고자 하는 위치의 Y 좌표
    scrollController.animateTo(
      targetOffset,
      duration: const Duration(milliseconds: 700),
      curve: Curves.easeInOut,
    );
  }

  Future sendEmail({
    required String name,
    required String email,
    required String subject,
    required String message,
  }) async {
    final serviceId = 'service_39u9yih';
    final templateId = 'template_xtvibsd';
    final userId = 'y5gAZ5birR0glGhZ3';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');

    final response = await http.post(url, headers: {
      'Content-Type': 'application/json'
    }, body: {
      'service_id': serviceId,
      'template_id': templateId,
      'user_id': userId,
      'template_params': {
        'user_name': name,
        'user_email': email,
        'user_subject': subject,
        'user_message': message,
      }
    });

    print(response.body);
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
                  onPressed: () {
                    ScrollIntroduction();
                  },
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
                  onPressed: () {
                    //Get.to(const emailsend()); 기존에 page 전환
                    Get.dialog(Dialog(
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0)),
                        width: 500,
                        height: 500,
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            const Text(
                              '받는사람',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              height: 30,
                              width: 400,
                              child: const TextField(
                                decoration: InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    border: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blueAccent,
                                            width: 0.5))),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            const Text('내용',
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold)),
                            const SizedBox(
                              height: 30,
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10)),
                              width: 400,
                              child: const TextField(
                                maxLines: null,
                                maxLength: 300,
                                decoration: InputDecoration(
                                    hintText: '내용을 입력해주세요.',
                                    contentPadding: EdgeInsets.symmetric(
                                        vertical: 10, horizontal: 20),
                                    border: OutlineInputBorder(),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.blueAccent,
                                            width: 0.5))),
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            TextButton(
                              onPressed: () async {
                                await sendEmail(
                                  name: '이름을 여기에 넣으세요',
                                  email: '이메일을 여기에 넣으세요',
                                  subject: '제목을 여기에 넣으세요',
                                  message: '메시지를 여기에 넣으세요',
                                );
                              },
                              child: const Text('보내기'),
                            )
                          ],
                        ),
                      ),
                    ));
                  },
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
          controller: scrollController,
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
                        'Experience \n * 2023 캐드정보기술(MES) \n * 2022 - 2023 리안(AI) \n * 2019 - 2021 청운하이테크(Production)  ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Text(
                        'Education \n * NCS기반 데이터 융합 자바(JAVA),코틀린(Kotlin) 웹&앱 개발자 양성과정 A',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Tool \n * Flutter',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 1000,
            )
          ],
        ));
  }
}
