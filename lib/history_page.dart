import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ControlHistoryPage extends StatelessWidget {
  final List<ControlRecord> records = [
    ControlRecord(
      farmLocation: "Bojongsantos",
      dateTime: DateTime.now().subtract(const Duration(hours: 2)),
      irrigationStatus: "Otomatis",
    ),
    ControlRecord(
      farmLocation: "Pertanian Durian Runtuh",
      dateTime: DateTime.now().subtract(const Duration(hours: 5)),
      irrigationStatus: "Manual",
    ),
    // Add more records as needed
  ];

  ControlHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Riwayat Kontrol'),
        backgroundColor: const Color(0xFFE7E8E3),
      ),
      body: Container(
        color: const Color(0xFFE7E8E3),
        child: ListView.builder(
          itemCount: records.length,
          itemBuilder: (context, index) {
            return ControlRecordCard(record: records[index]);
          },
        ),
      ),
    );
  }
}

class ControlRecordCard extends StatelessWidget {
  final ControlRecord record;

  const ControlRecordCard({super.key, required this.record});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Lokasi: ${record.farmLocation}',
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF3B614A),
                fontFamily: 'Poppins',
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Tanggal: ${DateFormat('yyyy-MM-dd').format(record.dateTime)}',
              style: const TextStyle(
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Waktu: ${DateFormat('HH:mm').format(record.dateTime)}',
              style: const TextStyle(
                fontSize: 14,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                const Text(
                  'Status Irigasi: ',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: record.irrigationStatus == 'Otomatis'
                        ? const Color(0xFF3B614A)
                        : const Color(0xFF8F1C1C),
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    record.irrigationStatus,
                    style: const TextStyle(
                      color: Color(0xFFFFFCF2),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ControlRecord {
  final String farmLocation;
  final DateTime dateTime;
  final String irrigationStatus;

  ControlRecord({
    required this.farmLocation,
    required this.dateTime,
    required this.irrigationStatus,
  });
}
