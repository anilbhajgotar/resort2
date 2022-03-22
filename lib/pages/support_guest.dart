import 'package:flutter/material.dart';

import 'feedback_accrodian.dart';

class SupportGuest extends StatefulWidget {
  SupportGuest({Key? key}) : super(key: key);

  @override
  State<SupportGuest> createState() => _SupportGuestState();
}

class _SupportGuestState extends State<SupportGuest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        leading: Icon(
          Icons.chevron_left,
          size: 35,
          color: Colors.black,
        ),
        title: const Text(
          'Support-Guest',
          style: TextStyle(color: Color(0xff4338CA)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "FAQ",
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
            Accordion(
              title: "What is Cancellation Policy?",
              content: "aaaaaaaa",
            ),
            Accordion(
              title: "Can I Cancel the 24-hour request?",
              content: "aaaaaaaaaaaaaaa",
            ),
            Accordion(
              title:
                  "What can i do if a property doesn't match description or something is missing?",
              content: "aaaaaavdfffvvvdv",
            ),
            Accordion(
              title: "How can I contact the host?",
              content: "avmdfkdvdvmv",
            ),
            Accordion(
              title: "How do reviews work?",
              content: "amffkdfdnn",
            ),
            Accordion(
              title: "How can I cancel the reservation?",
              content: "kfsdnfddn,mv",
            ),
            Accordion(
              title: "What is the instant Booking and 24-hour request?",
              content: "fjdfkjdnfdmddnf",
            ),
          ],
        ),
      ),
    );
  }
}
