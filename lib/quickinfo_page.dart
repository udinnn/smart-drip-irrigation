import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class QuickInfoPage extends StatelessWidget {
  const QuickInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      textDirection: TextDirection.ltr,
      children: [
        _Greeting(),
        _DataMonitoringCard(),
        _PredictionSection(),
      ],
    );
  }
}

class _Greeting extends StatelessWidget {
  const _Greeting();

  @override
  Widget build(BuildContext context) {
    return const Positioned(
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
            TextSpan(text: 'Udin!'),
          ],
        ),
      ),
    );
  }
}

class _DataMonitoringCard extends StatelessWidget {
  const _DataMonitoringCard();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 70),
      child: Container(
        width: 5000,
        height: 320,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: const Color.fromARGB(255, 206, 207, 200),
        ),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _CardTitle(),
            _FilterDropdown(),
            _DataCards(),
          ],
        ),
      ),
    );
  }
}

class _CardTitle extends StatelessWidget {
  const _CardTitle();

  @override
  Widget build(BuildContext context) {
    return const Padding(
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
    );
  }
}

class _FilterDropdown extends StatelessWidget {
  const _FilterDropdown();

  @override
  Widget build(BuildContext context) {
    return Padding(
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
                value: 'Greenhouse', child: Text('Greenhouse')),
            const PopupMenuItem<String>(
                value: 'Rektorat', child: Text('Rektorat')),
            const PopupMenuItem<String>(value: 'TULT', child: Text('TULT')),
            const PopupMenuItem<String>(value: '+', child: Text('+')),
          ],
          child: const _DropdownContent(),
        ),
      ),
    );
  }
}

class _DropdownContent extends StatelessWidget {
  const _DropdownContent();

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.0),
          child: Row(
            children: [
              Icon(Icons.location_on_outlined, color: Color(0xFF3B614A)),
              SizedBox(width: 10),
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
          child: Icon(Icons.arrow_drop_down, color: Color(0xFF3B614A)),
        ),
      ],
    );
  }
}

class _DataCards extends StatelessWidget {
  const _DataCards();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 25.0, right: 25.0),
      child: SizedBox(
        width: 300,
        height: 175,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Padding(
            padding: EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                _DataCard(
                    icon: Icons.cloudy_snowing,
                    value: '211°C',
                    label: 'Hujan deras'),
                SizedBox(width: 25),
                _DataCard(
                    icon: Icons.device_thermostat,
                    value: '211°C',
                    label: 'Suhu'),
                SizedBox(width: 25),
                _DataCard(
                    icon: Icons.water_drop_outlined,
                    value: '100%',
                    label: 'Kelembaban'),
                SizedBox(width: 25),
                _DataCard(
                    icon: Icons.water, value: '100ml', label: 'Debit air'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _DataCard extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;

  const _DataCard(
      {required this.icon, required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: const Color(0xFF3B614A),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10.0, top: 20.0, right: 10.0),
        child: Column(
          children: [
            Row(
              children: [
                Icon(icon, color: const Color(0xFFFFFCF2)),
                const SizedBox(width: 32),
                Text(
                  value,
                  style: const TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFFFCF2),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 65),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                label,
                style: const TextStyle(
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
    );
  }
}

class _PredictionSection extends StatelessWidget {
  const _PredictionSection();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 410, left: 20.0, right: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Prediksi singkat',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Color(0xFF3B614A),
            ),
          ),
          SizedBox(height: 20),
          _PredictionCard(
              date: 'Senin, 15 Juli 2024', data: '24°C | 68% | 92ml'),
          SizedBox(height: 25),
          _PredictionCard(
              date: 'Selasa, 16 Juli 2024', data: '22°C | 76% | 79ml'),
        ],
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
      width: 5000,
      height: 75,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: const Color(0xFFFFFCF2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            const CircleAvatar(
              radius: 20,
              backgroundColor: Color(0xFF3B614A),
              child: Icon(CupertinoIcons.tree, color: Color(0xFFFFFCF2)),
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
            const Icon(Icons.more_vert),
          ],
        ),
      ),
    );
  }
}
