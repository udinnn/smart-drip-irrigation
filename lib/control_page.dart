import 'package:flutter/material.dart';

class ControlPage extends StatefulWidget {
  const ControlPage({super.key});

  @override
  State<ControlPage> createState() => _ControlPageState();
}

class _ControlPageState extends State<ControlPage> {
  bool isSwitchOn = false;
  final TextEditingController _textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: const Color(0xffE7E8E3),
        elevation: 0,
        title: const Text(
          'Kontrol Debit Air',
          style: TextStyle(fontFamily: 'Poppins', color: Colors.black87),
        ),
      ),
      body: Container(
        color: const Color(0xffE7E8E3),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 25,
                  ),
                  const Center(
                    child: Icon(
                      Icons.water_drop_outlined,
                      size: 250,
                      color: Color(0xFF3B614A),
                    ),
                  ),
                  const SizedBox(
                    height: 75,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0, left: 30.0),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 206, 207, 200),
                        borderRadius: BorderRadius.all(
                          Radius.circular(25),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          left: 25.0,
                          right: 25.0,
                        ),
                        child: Row(
                          children: [
                            const Text(
                              'Kontrol Debit Air Manual',
                              style: TextStyle(
                                color: Colors.black87,
                                fontFamily: 'Poppins',
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Spacer(),
                            Switch(
                              value: isSwitchOn,
                              onChanged: (newValue) {
                                setState(() {
                                  isSwitchOn = newValue;
                                });
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 30.0,
                      right: 30.0,
                    ),
                    child: TextFormField(
                      controller: _textController,
                      enabled: isSwitchOn,
                      decoration: InputDecoration(
                        labelText: 'Debit Air',
                        labelStyle: const TextStyle(
                          color: Color(0xFF3B614A),
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w300,
                        ),
                        filled: true,
                        fillColor: const Color(0xffE7E8E3),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Color(0xFF3B614A),
                            width: 2.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0),
                          borderSide: const BorderSide(
                            color: Color(0xFF3B614A),
                            width: 2.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                    child: GestureDetector(
                      onTap: () {
                        // Handle login logic here
                        if (isSwitchOn) {
                          final enteredText = _textController.text;
                          print('Entered text: $enteredText');
                          // You can perform any other actions with the entered text here
                        } else {
                          print('Textbox is disabled.');
                        }
                      },
                      child: Container(
                        height: 50,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          gradient: const LinearGradient(
                            colors: [Color(0xFF3B614A), Color(0xFF123456)],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            'Submit',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                              color: Color(0xffE7E8E3),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
        ),
      ),
      backgroundColor: const Color(0xffE7E8E3),
    );
  }
}
