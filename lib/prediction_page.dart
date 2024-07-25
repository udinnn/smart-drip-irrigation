import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PredictionPage extends StatelessWidget {
  const PredictionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        _PageTitle(),
        _NextDayPrediction(),
        _FuturePredictions(),
      ],
    );
  }
}

class _PageTitle extends StatelessWidget {
  const _PageTitle();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Text(
        'Prediksi',
        style: TextStyle(
          color: Color(0xFF3B614A),
          fontSize: 20,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}

class _NextDayPrediction extends StatelessWidget {
  const _NextDayPrediction();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, top: 40.0, right: 20.0),
      child: Container(
        width: 5000,
        height: 300,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 206, 207, 200),
          image: const DecorationImage(
            image: AssetImage('assets/images/prediksi_bg.png'),
            fit: BoxFit.fitWidth,
          ),
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
              SizedBox(height: 16),
              _WeatherDisplay(),
              SizedBox(height: 4),
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
    );
  }
}

class _WeatherDisplay extends StatelessWidget {
  const _WeatherDisplay();

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
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
            child: SizedBox(width: 80),
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
    );
  }
}

class _FuturePredictions extends StatelessWidget {
  const _FuturePredictions();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:
          EdgeInsets.only(left: 20.0, top: 370.0, right: 20.0, bottom: 20.0),
      child: SizedBox(
        width: 3500,
        height: 3000,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              _PredictionCard(
                  date: 'Senin, 15 Juli 2024', data: '24°C | 68% | 92ml'),
              SizedBox(height: 25),
              _PredictionCard(
                  date: 'Senin, 15 Juli 2024', data: '24°C | 68% | 92ml'),
              SizedBox(height: 25),
              _PredictionCard(
                  date: 'Senin, 15 Juli 2024', data: '24°C | 68% | 92ml'),
              SizedBox(height: 25),
              _PredictionCard(
                  date: 'Senin, 15 Juli 2024', data: '24°C | 68% | 92ml'),
              SizedBox(height: 25),
              _PredictionCard(
                  date: 'Senin, 15 Juli 2024', data: '24°C | 68% | 92ml'),
            ],
          ),
        ),
      ),
    );
  }
}

class _PredictionCard extends StatelessWidget {
  final String date;
  final String data;

  const _PredictionCard({required this.date, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFFFFFCF2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundColor: Color(0xFF3B614A),
              child: Icon(
                CupertinoIcons.tree,
                color: Color(0xFFFFFCF2),
              ),
            ),
            const SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    date,
                    style: const TextStyle(
                      color: Color(0xFF3B614A),
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    data,
                    style: const TextStyle(
                      color: Color(0xFF3B614A),
                      fontFamily: 'Inter',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
