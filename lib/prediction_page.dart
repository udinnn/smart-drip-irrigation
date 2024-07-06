import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PredictionPage extends StatelessWidget {
  const PredictionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Text(
            'Prediksi',
            style: TextStyle(
                color: Color(0xFF3B614A),
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w700),
          ),
        ),
        Positioned(
          left: 20,
          top: 40,
          child: Container(
            width: 350,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 206, 207, 200),
              image: const DecorationImage(
                  image: AssetImage('assets/images/prediksi_bg.png'),
                  fit: BoxFit.fitWidth),
            ),
            child: const Padding(
              padding: EdgeInsets.only(left: 20.0, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Next day',
                    style: TextStyle(
                      color: Color(0xFF3B614A),
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      fontFamily: 'Inter',
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text.rich(
                    TextSpan(
                      text: '28°C',
                      style: TextStyle(
                        fontSize: 64,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF3B614A),
                      ),
                      children: [
                        WidgetSpan(
                          child: SizedBox(
                            width: 80,
                          ),
                        ),
                        WidgetSpan(
                          child: Icon(
                            Icons.wb_cloudy_outlined,
                            size: 72,
                            color: Color(0xFF3B614A),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    '1000ml | 74%',
                    style: TextStyle(
                      color: Color(0xFF3B614A),
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      fontFamily: 'Inter',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
          left: 20,
          top: 370,
          child: SizedBox(
            width: 350,
            height: 260,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Container(
                    width: 350,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFFFFCF2),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(0xFF3B614A),
                            child: Icon(
                              CupertinoIcons.tree,
                              color: Color(0xFFFFFCF2),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 7.5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Senin, 15 Juli 2024',
                                    style: TextStyle(
                                      color: Color(0xFF3B614A),
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '24°C | 68% | 92ml',
                                    style: TextStyle(
                                      color: Color(0xFF3B614A),
                                      fontFamily: 'Inter',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(Icons.more_vert),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 350,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFFFFCF2),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(0xFF3B614A),
                            child: Icon(
                              CupertinoIcons.tree,
                              color: Color(0xFFFFFCF2),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 7.5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Senin, 15 Juli 2024',
                                    style: TextStyle(
                                      color: Color(0xFF3B614A),
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '24°C | 68% | 92ml',
                                    style: TextStyle(
                                      color: Color(0xFF3B614A),
                                      fontFamily: 'Inter',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(Icons.more_vert),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 350,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFFFFCF2),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(0xFF3B614A),
                            child: Icon(
                              CupertinoIcons.tree,
                              color: Color(0xFFFFFCF2),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 7.5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Senin, 15 Juli 2024',
                                    style: TextStyle(
                                      color: Color(0xFF3B614A),
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '24°C | 68% | 92ml',
                                    style: TextStyle(
                                      color: Color(0xFF3B614A),
                                      fontFamily: 'Inter',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(Icons.more_vert),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 350,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFFFFCF2),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(0xFF3B614A),
                            child: Icon(
                              CupertinoIcons.tree,
                              color: Color(0xFFFFFCF2),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 7.5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Senin, 15 Juli 2024',
                                    style: TextStyle(
                                      color: Color(0xFF3B614A),
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '24°C | 68% | 92ml',
                                    style: TextStyle(
                                      color: Color(0xFF3B614A),
                                      fontFamily: 'Inter',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(Icons.more_vert),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Container(
                    width: 350,
                    height: 75,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFFFFCF2),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            radius: 20,
                            backgroundColor: Color(0xFF3B614A),
                            child: Icon(
                              CupertinoIcons.tree,
                              color: Color(0xFFFFFCF2),
                            ),
                          ),
                          SizedBox(width: 15),
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(top: 7.5),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Senin, 15 Juli 2024',
                                    style: TextStyle(
                                      color: Color(0xFF3B614A),
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    '24°C | 68% | 92ml',
                                    style: TextStyle(
                                      color: Color(0xFF3B614A),
                                      fontFamily: 'Inter',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10),
                            child: Icon(Icons.more_vert),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
