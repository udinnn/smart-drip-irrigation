import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  final List<FAQItem> faqItems = [
    FAQItem(
      question: "Apa itu Smart Drip Irrigation?",
      answer:
          "Smart Drip Irrigation adalah sebuah aplikasi yang dirancang khusus untuk membantu petani dalam memonitor dan mengontrol sistem irigasi pertanian.",
    ),
    FAQItem(
      question: "Siapa Tim Pengembangnya?",
      answer:
          "Kami adalah tim Demeter yang merupakan mahasiswa Universitas Telkom Bandung dengan fokus studi prodi Teknik Telekomunikasi yang berada dalam naungan Fakultas Teknik Elektro.",
    ),
    FAQItem(
      question: "Apakah data saya aman?",
      answer: "iya kli, kebetulan password akun sy bukan Admin#1234 sih.",
    ),
  ];

  FAQPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFE7E8E3),
      appBar: AppBar(
        title: const Text('FAQ'),
        backgroundColor: const Color(0xFFE7E8E3),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              'Frequently Asked Questions',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFF3B614A),
                fontFamily: 'Poppins',
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: faqItems.length,
              itemBuilder: (context, index) {
                return FAQItemWidget(faqItem: faqItems[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

class FAQItem {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});
}

class FAQItemWidget extends StatefulWidget {
  final FAQItem faqItem;

  const FAQItemWidget({super.key, required this.faqItem});

  @override
  State<FAQItemWidget> createState() => _FAQItemWidgetState();
}

class _FAQItemWidgetState extends State<FAQItemWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _animation;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );
    _animation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleExpand() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      shadowColor: const Color(0xFF3B614A),
      color: const Color(0xFFFFFCF2),
      child: Column(
        children: [
          InkWell(
            onTap: _toggleExpand,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      widget.faqItem.question,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF3B614A),
                        fontFamily: 'Poppins',
                        fontSize: 16,
                      ),
                    ),
                  ),
                  RotationTransition(
                    turns: Tween(begin: 0.0, end: 0.5).animate(_animation),
                    child: const Icon(
                      Icons.arrow_drop_down_rounded,
                      color: Color(0xFF3B614A),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizeTransition(
            sizeFactor: _animation,
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Text(
                widget.faqItem.answer,
                style: const TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
