import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuickInfoPage extends StatefulWidget {
  const QuickInfoPage({super.key});

  @override
  State<QuickInfoPage> createState() => _QuickInfoPageState();
}

class _QuickInfoPageState extends State<QuickInfoPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      textDirection: TextDirection.ltr,
      children: [
        const Positioned(
          left: 20.0,
          top: 10.0,
          child: Text.rich(
            TextSpan(
              text: 'Hai, ',
              style: TextStyle(
                fontSize: 28,
                fontFamily: 'Poppins',
                color: Color(0xFF3B614A),
                fontWeight: FontWeight.w800,
              ),
              children: [
                TextSpan(
                  text: 'Udin!',
                  style: TextStyle(
                    fontSize: 28,
                    fontFamily: 'Poppins',
                    color: Color(0xFF3B614A),
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 70,
          left: 20,
          child: Container(
            width: 350,
            height: 320,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromARGB(255, 206, 207, 200),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 25.0, top: 20),
                  child: Text(
                    'Data monitoring saat ini',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Color(0xFF3B614A),
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      fontFamily: 'Inter',
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, top: 20),
                  child: Container(
                    width: 300,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFFFFCF2),
                    ),
                    child: PopupMenuButton<String>(
                      itemBuilder: (context) => [
                        const PopupMenuItem<String>(
                          value: 'Greenhouse',
                          child: Text('Greenhouse'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'Rektorat',
                          child: Text('Rektorat'),
                        ),
                        const PopupMenuItem<String>(
                          value: 'TULT',
                          child: Text('TULT'),
                        ),
                        const PopupMenuItem<String>(
                          value: '+',
                          child: Text('+'),
                        ),
                      ],
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Color(0xFF3B614A),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Filter Data',
                                  style: TextStyle(
                                    color: Color(0xFF3B614A),
                                    fontSize: 16,
                                    fontWeight: FontWeight.w800,
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20.0),
                            child: Icon(
                              Icons.arrow_drop_down,
                              color: Color(0xFF3B614A),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0, right: 25.0),
                  child: SizedBox(
                    width: 300,
                    height: 175,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 30.0,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              width: 120,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFF3B614A),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                  left: 10.0,
                                  top: 20.0,
                                  right: 10.0,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.cloudy_snowing,
                                          color: Color(0xFFFFFCF2),
                                        ),
                                        SizedBox(
                                          width: 32,
                                        ),
                                        Text(
                                          '211°C',
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xFFFFFCF2),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 65,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        'Hujan deras',
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFFFFCF2),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            Container(
                              width: 120,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFF3B614A),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                  left: 10.0,
                                  top: 20.0,
                                  right: 10.0,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.device_thermostat,
                                          color: Color(0xFFFFFCF2),
                                        ),
                                        SizedBox(
                                          width: 32,
                                        ),
                                        Text(
                                          '211°C',
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xFFFFFCF2),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 65,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 5.0),
                                      child: Text(
                                        'Suhu ruangan',
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFFFFCF2),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            Container(
                              width: 120,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFF3B614A),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                  left: 10.0,
                                  top: 20.0,
                                  right: 10.0,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.water_drop_outlined,
                                          color: Color(0xFFFFFCF2),
                                        ),
                                        SizedBox(
                                          width: 32,
                                        ),
                                        Text(
                                          '100%',
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xFFFFFCF2),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 65,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        'Kelembaban',
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFFFFCF2),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 25,
                            ),
                            Container(
                              width: 120,
                              height: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: const Color(0xFF3B614A),
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                  left: 10.0,
                                  top: 20.0,
                                  right: 10.0,
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.water,
                                          color: Color(0xFFFFFCF2),
                                        ),
                                        SizedBox(
                                          width: 28,
                                        ),
                                        Text(
                                          '100ml',
                                          style: TextStyle(
                                            fontFamily: 'Inter',
                                            fontSize: 14,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xFFFFFCF2),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 65,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 20.0),
                                      child: Text(
                                        'Debit air',
                                        style: TextStyle(
                                          fontFamily: 'Inter',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                          color: Color(0xFFFFFCF2),
                                        ),
                                      ),
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
                ),
              ],
            ),
          ),
        ),
        const Positioned(
          top: 410,
          left: 20,
          child: Text(
            'Prediksi singkat',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF3B614A),
            ),
          ),
        ),
        Positioned(
          top: 450,
          left: 20,
          child: SizedBox(
            width: 350,
            height: 175,
            child: Column(
              children: [
                Container(
                  width: 350,
                  height: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
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
                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: 350,
                  height: 75,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
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
                                  'Selasa, 16 Juli 2024',
                                  style: TextStyle(
                                    color: Color(0xFF3B614A),
                                    fontFamily: 'Poppins',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  '22°C | 76% | 79ml',
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
      ],
    );
  }
}
