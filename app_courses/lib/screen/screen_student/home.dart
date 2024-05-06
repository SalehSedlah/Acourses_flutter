// import 'dart:ffi';

import 'package:app_courses/screen/screen_student/assignmets.dart';
import 'package:app_courses/screen/screen_student/join_class.dart';
import 'package:app_courses/screen/screen_student/profile.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:animate_do/animate_do.dart';

// import 'package:app_courses/screen/profile.dart'

// import 'package:animate_do/animate_do.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text("Wecllome to Acourses ",
        //     style: TextStyle(
        //         fontFamily: AutofillHints.birthday, color: Colors.black)),
        // backgroundColor: Color.fromARGB(255, 151, 151, 151),
        title: Text(' Acourses'),
        backgroundColor: Color.fromARGB(255, 17, 210, 168),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: GestureDetector(
              onTap: () {
                var route = MaterialPageRoute(builder: (context) => profile());
                Navigator.push(context, route);
              },
              child: CircleAvatar(
                radius: 20.0, // حدد نصف قطر الصورة
                backgroundImage: AssetImage(
                    'assets/images/profile.jpg'), // استبدل بمسار صورتك
              ),
            ),
          ),
        ],
      ),

      /////=======Drawer ==========/////
      drawer: Drawer(
        backgroundColor: Color.fromARGB(106, 0, 33, 86),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Container(
              height: 150,
              width: 150,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle, color: Colors.white),
              child: const Center(
                  child: Text(
                'A',
                style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              )),
            ),
            const SizedBox(
              height: 50,
            ),
            ListTile(
              onTap: () {},
              tileColor: Color.fromARGB(0, 0, 33, 86),
              leading: Icon(
                Icons.person,
                color: Colors.white,
              ),
              title: Text(
                'Profile Details',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            ListTile(
              onTap: () {
                var route =
                    MaterialPageRoute(builder: (context) => JoinClass());
                Navigator.push(context, route);
              },
              tileColor: Color.fromARGB(0, 0, 33, 86),
              leading: Icon(
                Icons.add,
                color: Colors.white,
              ),
              title: Text(
                'Join the class',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            ListTile(
              onTap: () {},
              tileColor: Color.fromARGB(0, 0, 33, 86),
              leading: const Icon(
                Icons.home_mini_sharp,
                color: Colors.white,
              ),
              title: const Text(
                'Lectuers',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            ListTile(
              onTap: () {
                var route =
                    MaterialPageRoute(builder: (context) => Assignmt());
                Navigator.push(context, route);
              },
              tileColor: Color.fromARGB(0, 0, 33, 86),
              leading: const Icon(
                Icons.assignment,
                color: Colors.white,
              ),
              title: const Text(
                'Assigmnts',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
            ListTile(
              onTap: () {},
              tileColor: Color.fromARGB(0, 0, 33, 86),
              leading: const Icon(
                Icons.logout,
                color: Colors.white,
              ),
              title: const Text(
                'Log out',
                style: TextStyle(color: Colors.grey, fontSize: 15),
              ),
            ),
          ],
        ),
      ),

      ////========== body =====//////////
      body: ListView(children: [
        Column(children: [
          FadeInUp(
            duration: Duration(microseconds: 1400),
            child: CarouselSlider(
              options: CarouselOptions(
                height: 250,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {},
                scrollDirection: Axis.horizontal,
              ),
              items: [
                Image.asset('assets/images/design.jpg', fit: BoxFit.contain),
                Image.asset('assets/images/laptop.jpg', fit: BoxFit.contain),
                Image.asset('assets/images/photography.jpg',
                    fit: BoxFit.contain),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          FadeInUp(
            duration: Duration(microseconds: 1400),
            child: Container(
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromARGB(255, 14, 1, 184).withOpacity(.2),
                        blurRadius: 20,
                        offset: Offset(0, 10))
                  ]),
              child: Column(
                children: <Widget>[
                  FadeInUp(
                    duration: Duration(microseconds: 1400),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border(
                              bottom: BorderSide(color: Colors.grey.shade200))),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          icon: Icon(Icons.search),
                          hintStyle: TextStyle(color: Colors.grey),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // ListView.builder(
          //   itemCount: 5, // عدد الصفوف
          //   itemBuilder: (context, index) {
          //     return Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Row(
          //         children: [
          //           Text(
          //             'الصف $index:',
          //             style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          //           ),
          //           SizedBox(width: 10),
          //           Expanded(
          //             child: SizedBox(
          //               height: 200, // ارتفاع كل صف أفقي
          //               child: ListView.builder(
          //                 scrollDirection: Axis.horizontal,
          //                 itemCount: 10, // عدد الكروت في كل صف
          //                 itemBuilder: (context, cardIndex) {
          //                   return Card(
          //                     child: Column(
          //                       children: [
          //                         Image.asset(
          //                           '../../assets/images/design.jpg', // ارفق الرابط الخاص بالصورة
          //                           width: 150,
          //                           height: 100,
          //                           fit: BoxFit.cover,
          //                         ),
          //                         SizedBox(height: 8),
          //                         Text(
          //                           ' fluter $cardIndex',
          //                           style: TextStyle(fontSize: 16),
          //                         ),
          //                       ],
          //                     ),
          //                   );
          //                 },
          //               ),
          //             ),
          //           ),
          //         ],
          //       ),
          //     );
          //   },
          // ),
          SizedBox(
            height: 60,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Assignmets",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),

          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                if (index == 0) {
                  return FadeInRight(
                    duration: Duration(milliseconds: 1400),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 14, 1, 184)
                                    .withOpacity(.2),
                                blurRadius: 20,
                                offset: Offset(0, 10))
                          ]),
                      width: 300,
                      child: GestureDetector(
                        onTap: () {
                          var route = MaterialPageRoute(
                              builder: (context) => Assignmt());
                          Navigator.push(context, route);
                        },
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2, // Allocate 1/3 of the width to the image

                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'assets/images/accounting.jpg',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2, // Allocate 2/3 of the width to the text
                              child: Padding(
                                padding: EdgeInsets.all(
                                    8), // Add padding around the text
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      'Mobile App',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('Assignmet'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                } else if (index == 1) {
                  return FadeInRight(
                    duration: Duration(milliseconds: 1400),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(228, 149, 84, 0.626),
                                blurRadius: 20,
                                offset: Offset(0, 10))
                          ]),
                      width: 300,
                      child: GestureDetector(
                        onTap: () {
                          var route = MaterialPageRoute(
                              builder: (context) => Assignmt());
                          Navigator.push(context, route);
                        },
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2, // Allocate 1/3 of the width to the image

                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'assets/images/photography.jpg',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2, // Allocate 2/3 of the width to the text
                              child: Padding(
                                padding: EdgeInsets.all(
                                    8), // Add padding around the text
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment
                                      .center, // Align text left
                                  children: [
                                    Text(
                                      ' Network security',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('Assignmet'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                } else if (index == 2) {
                  return FadeInRight(
                    duration: Duration(milliseconds: 1400),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 14, 1, 184)
                                    .withOpacity(.2),
                                blurRadius: 20,
                                offset: Offset(0, 10))
                          ]),
                      width: 300,
                      child: GestureDetector(
                        onTap: () {
                          var route = MaterialPageRoute(
                              builder: (context) => Assignmt());
                          Navigator.push(context, route);
                        },
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2, // Allocate 1/3 of the width to the image

                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'assets/images/design.jpg',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2, // Allocate 2/3 of the width to the text
                              child: Padding(
                                padding: EdgeInsets.all(
                                    8), // Add padding around the text
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment
                                      .center, // Align text left
                                  children: [
                                    Text(
                                      'Mobile App',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('Assignmet'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                } else if (index == 3) {
                  return FadeInRight(
                    duration: Duration(milliseconds: 1400),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(228, 149, 84, 0.626),
                                blurRadius: 20,
                                offset: Offset(0, 10))
                          ]),
                      width: 300,
                      child: GestureDetector(
                        onTap: () {
                          var route = MaterialPageRoute(
                              builder: (context) => Assignmt());
                          Navigator.push(context, route);
                        },
                        child: Row(
                          children: [
                            Expanded(
                              flex: 2, // Allocate 1/3 of the width to the image

                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'assets/images/laptop.jpg',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2, // Allocate 2/3 of the width to the text
                              child: Padding(
                                padding: EdgeInsets.all(
                                    8), // Add padding around the text
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment
                                      .center, // Align text left
                                  children: [
                                    Text(
                                      'Mobile App',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('Assignmet'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                }
                return SizedBox.shrink();
              },
            ),
          ),

          /////======= lectuers ======/////
          ///
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "Lectuers",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    FadeInUp(
                      duration: Duration(milliseconds: 1400),
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 14, 1, 184)
                                      .withOpacity(.2),
                                  blurRadius: 20,
                                  offset: Offset(0, 10))
                            ]),
                        width: 150,
                        child: GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              Expanded(
                                flex:
                                    1, // Allocate 1/3 of the width to the image

                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    'assets/images/laptop.jpg',
                                    height: 100,
                                    width: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex:
                                    1, // Allocate 2/3 of the width to the text
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      8), // Add padding around the text
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .center, // Align text left
                                    children: [
                                      Text(
                                        'Mobile App',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('Lectuer'),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    FadeInUp(
                      duration: Duration(milliseconds: 1450),
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        margin: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(228, 149, 84, 0.626)
                                      .withOpacity(.2),
                                  blurRadius: 20,
                                  offset: Offset(0, 10))
                            ]),
                        width: 150,
                        child: GestureDetector(
                          onTap: () {},
                          child: Row(
                            children: [
                              Expanded(
                                flex:
                                    1, // Allocate 1/3 of the width to the image

                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(20.0),
                                  child: Image.asset(
                                    'assets/images/photography.jpg',
                                    height: 100,
                                    width: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex:
                                    1, // Allocate 2/3 of the width to the text
                                child: Padding(
                                  padding: EdgeInsets.all(
                                      8), // Add padding around the text
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment
                                        .center, // Align text left
                                    children: [
                                      Text(
                                        'Mobile App',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Text('Lectuer'),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  FadeInUp(
                    duration: Duration(milliseconds: 1460),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromRGBO(228, 149, 84, 0.626),
                                blurRadius: 20,
                                offset: Offset(0, 10))
                          ]),
                      width: 150,
                      child: GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1, // Allocate 1/3 of the width to the image

                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'assets/images/accounting.jpg',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1, // Allocate 2/3 of the width to the text
                              child: Padding(
                                padding: EdgeInsets.all(
                                    8), // Add padding around the text
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment
                                      .center, // Align text left
                                  children: [
                                    Text(
                                      'Mobile App',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('Lectuer'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Column(
                children: [
                  FadeInUp(
                    duration: Duration(milliseconds: 1480),
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Color.fromARGB(255, 14, 1, 184)
                                    .withOpacity(.2),
                                blurRadius: 20,
                                offset: Offset(0, 10))
                          ]),
                      width: 150,
                      child: GestureDetector(
                        onTap: () {},
                        child: Row(
                          children: [
                            Expanded(
                              flex: 1, // Allocate 1/3 of the width to the image

                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'assets/images/design.jpg',
                                  height: 100,
                                  width: 100,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1, // Allocate 2/3 of the width to the text
                              child: Padding(
                                padding: EdgeInsets.all(
                                    8), // Add padding around the text
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment
                                      .center, // Align text left
                                  children: [
                                    Text(
                                      'Mobile App',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text('Lectuer'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: GestureDetector(
              onTap: () {
                // عرض الخيارات عند الضغط على card
                _showBottomSheet(context);
              },
              child: Card(
                // تحديد خصائص card
                elevation: 5.0,
                shape: CircleBorder(), // شكل دائري
                child: Container(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisAlignment:
                        MainAxisAlignment.center, // محاذاة العناصر في المنتصف
                    children: [
                      // عرض أيقونة الإضافة
                      Icon(
                        Icons.add,
                        size: 30.0,
                        color: Colors.blue,
                      ),
                      SizedBox(height: 5.0), // مسافة بين الأيقونة والنص
                      // عرض النص
                    ],
                  ),
                ),
              ),
            ),
          ),
        ]),
      ]),
    );
  }
}

void _showBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.book),
              title: Text('إضافة مادة'),
              onTap: () {
                // تنفيذ إجراء عند اختيار "إضافة مادة"
                // Navigator.pop(context);
                // var route = MaterialPageRoute(builder: (context) => Leacuter());
                // Navigator.push(context, route);
              },
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('دخول في class'),
              onTap: () {
                // تنفيذ إجراء عند اختيار "دخول في class"
                // Navigator.pop(context);
                var route =
                    MaterialPageRoute(builder: (context) => JoinClass());
                Navigator.push(context, route);
              },
            ),
          ],
        ),
      );
    },
  );
}
