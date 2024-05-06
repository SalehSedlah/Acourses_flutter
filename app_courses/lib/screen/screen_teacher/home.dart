import 'package:app_courses/screen/screen_teacher/leacter.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acourses'),
      ),
      body: ListView(children: [
        Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Card(
                // تحديد خصائص card
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  // تحديد خصائص محتوى card
                  padding: EdgeInsets.all(30.0),
                  width: 350.0,
                  height: 150.0,
                  child: Row(
                    children: [
                      // عرض الصورة
                      Image.asset(
                        'assets/images/design.jpg', // مسار الصورة
                        width: 150.0,
                        height: 150.0,
                        fit: BoxFit.cover, // ضبط حجم الصورة
                      ),
                      SizedBox(width: 10.0),
                      // عرض النص
                      Column(
                        children: [
                          Text(
                            'هذا هو عنوان card',
                            style: TextStyle(
                              fontSize: 18.0, // حجم خط العنوان
                              fontWeight: FontWeight.bold, // خط غامق
                            ),
                          ),

                          SizedBox(
                              height: 8.0), // مسافة بين العنوان وفرعي العنوان
                          // عرض فرعي العنوان
                          Text(
                            'هذا هو فرعي عنوان card',
                            style: TextStyle(
                              fontSize: 14.0, // حجم خط فرعي العنوان
                              color: Colors.grey, // لون فرعي العنوان
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Card(
              // تحديد خصائص card
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                // تحديد خصائص محتوى card
                padding: EdgeInsets.all(30.0),
                width: 350.0,
                height: 150.0,
                child: Row(
                  children: [
                    // عرض الصورة
                    Image.asset(
                      'assets/images/design.jpg', // مسار الصورة
                      width: 150.0,
                      height: 150.0,
                      fit: BoxFit.cover, // ضبط حجم الصورة
                    ),
                    SizedBox(width: 10.0),
                    // عرض النص
                    Column(
                      children: [
                        Text(
                          'هذا هو عنوان card',
                          style: TextStyle(
                            fontSize: 18.0, // حجم خط العنوان
                            fontWeight: FontWeight.bold, // خط غامق
                          ),
                        ),

                        SizedBox(
                            height: 8.0), // مسافة بين العنوان وفرعي العنوان
                        // عرض فرعي العنوان
                        Text(
                          'هذا هو فرعي عنوان card',
                          style: TextStyle(
                            fontSize: 14.0, // حجم خط فرعي العنوان
                            color: Colors.grey, // لون فرعي العنوان
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Card(
              // تحديد خصائص card
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Container(
                // تحديد خصائص محتوى card
                padding: EdgeInsets.all(30.0),
                width: 350.0,
                height: 150.0,
                child: Row(
                  children: [
                    // عرض الصورة
                    Image.asset(
                      'assets/images/design.jpg', // مسار الصورة
                      width: 150.0,
                      height: 150.0,
                      fit: BoxFit.cover, // ضبط حجم الصورة
                    ),
                    SizedBox(width: 10.0),
                    // عرض النص
                    Column(
                      children: [
                        Text(
                          'هذا هو عنوان card',
                          style: TextStyle(
                            fontSize: 18.0, // حجم خط العنوان
                            fontWeight: FontWeight.bold, // خط غامق
                          ),
                        ),

                        SizedBox(
                            height: 8.0), // مسافة بين العنوان وفرعي العنوان
                        // عرض فرعي العنوان
                        Text(
                          'هذا هو فرعي عنوان card',
                          style: TextStyle(
                            fontSize: 14.0, // حجم خط فرعي العنوان
                            color: Colors.grey, // لون فرعي العنوان
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
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
                var route = MaterialPageRoute(builder: (context) => Leacuter());
                Navigator.push(context, route);
              },
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('دخول في class'),
              onTap: () {
                // تنفيذ إجراء عند اختيار "دخول في class"
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    },
  );
}
