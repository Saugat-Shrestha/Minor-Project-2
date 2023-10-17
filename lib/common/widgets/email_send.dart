// // import 'package:flutter/material.dart';
// // import 'package:url_launcher/url_launcher.dart';

// // void main() => runApp(MyApp());

// // class MyApp extends StatelessWidget {
// //   TextEditingController subjectController = TextEditingController();

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: Scaffold(
// //         appBar: AppBar(
// //           title: Text('Send Email with Subject'),
// //         ),
// //         body: Center(
// //           child: Column(
// //             mainAxisAlignment: MainAxisAlignment.center,
// //             children: <Widget>[
// //               Padding(
// //                 padding: const EdgeInsets.all(16.0),
// //                 child: TextField(
// //                   controller: subjectController,
// //                   decoration: InputDecoration(labelText: 'Subject'),
// //                 ),
// //               ),
// //               ElevatedButton(
// //                 onPressed: () {
// //                   String subject = subjectController.text;
// //                   sendEmailWithSubject('example@example.com', subject);
// //                 },
// //                 child: Text('Send Email'),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }

// //   // Function to open the email client with a subject
// //   sendEmailWithSubject(String email, String subject) async {
// //     final url = 'mailto:$email?subject=${Uri.encodeComponent(subject)}';
// //     if (await canLaunch(url)) {
// //       await launch(url);
// //     } else {
// //       throw 'Could not launch $url';
// //     }
// //   }
// // }

// // // import 'package:flutter/material.dart';
// // // import 'package:url_launcher/url_launcher.dart';

// // // void main() => runApp(MyApp());

// // // class MyApp extends StatelessWidget {
// // //   final emailController = TextEditingController();
// // //   final subjectController = TextEditingController();

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return MaterialApp(
// // //       home: Scaffold(
// // //         appBar: AppBar(
// // //           title: Text('Send Email with Subject'),
// // //         ),
// // //         body: Center(
// // //           child: Column(
// // //             mainAxisAlignment: MainAxisAlignment.center,
// // //             children: <Widget>[
// // //               Padding(
// // //                 padding: const EdgeInsets.all(16.0),
// // //                 child: TextField(
// // //                   controller: emailController,
// // //                   decoration: InputDecoration(
// // //                     labelText: 'Email Address',
// // //                   ),
// // //                 ),
// // //               ),
// // //               Padding(
// // //                 padding: const EdgeInsets.all(16.0),
// // //                 child: TextField(
// // //                   controller: subjectController,
// // //                   decoration: InputDecoration(
// // //                     labelText: 'Email Subject',
// // //                   ),
// // //                 ),
// // //               ),
// // //               ElevatedButton(
// // //                 onPressed: () {
// // //                   sendEmailWithSubject(
// // //                     emailController.text,
// // //                     subjectController.text,
// // //                   );
// // //                 },
// // //                 child: Text('Send Email'),
// // //               ),
// // //             ],
// // //           ),
// // //         ),
// // //       ),
// // //     );
// // //   }

// // //   // Function to open the email client with a subject
// // //   sendEmailWithSubject(String email, String subject) async {
// // //     final url = 'mailto:$email?subject=${Uri.encodeComponent(subject)}';
// // //     if (await canLaunch(url)) {
// // //       await launch(url);
// // //     } else {
// // //       throw 'Could not launch $url';
// // //     }
// // //   }
// // // }

// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   final subjectController = TextEditingController();
//   final bodyController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Send Email with Subject and Body Text'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: TextField(
//                   controller: subjectController,
//                   decoration: InputDecoration(
//                     labelText: 'Email Subject',
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: TextField(
//                   controller: bodyController,
//                   decoration: InputDecoration(
//                     labelText: 'Email Body',
//                   ),
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   sendEmailWithSubjectAndBody(
//                     subjectController.text,
//                     bodyController.text,
//                   );
//                 },
//                 child: Text('Send Email'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Function to launch the email client with subject and body text
//   sendEmailWithSubjectAndBody(String subject, String body) async {
//     final email =
//         'mailto:?subject=${Uri.encodeComponent(subject)}&body=${Uri.encodeComponent(body)}';
//     if (await canLaunch(email)) {
//       await launch(email);
//     } else {
//       throw 'Could not launch email';
//     }
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:url_launcher/url_launcher.dart';

// void main() => runApp(MyApp());

// class MyApp extends StatelessWidget {
//   final subjectController = TextEditingController();
//   final bodyController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Send Email with Subject and Body Text'),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: TextField(
//                   controller: subjectController,
//                   decoration: InputDecoration(
//                     labelText: 'Email Subject',
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(16.0),
//                 child: TextField(
//                   controller: bodyController,
//                   decoration: InputDecoration(
//                     labelText: 'Email Body',
//                   ),
//                 ),
//               ),
//               ElevatedButton(
//                 onPressed: () {
//                   sendEmailWithSubjectAndBody(
//                     subjectController.text,
//                     bodyController.text,
//                   );
//                 },
//                 child: Text('Send Email'),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   // Function to launch the email client with subject and body text
//   sendEmailWithSubjectAndBody(String subject, String body) async {
//     final recipientEmail = 'shresthaasaugat31@gmail.com';
//     final email =
//         'mailto:$recipientEmail?subject=${Uri.encodeComponent(subject)}&body=${Uri.encodeComponent(body)}';
//     if (await canLaunch(email)) {
//       await launch(email);
//     } else {
//       throw 'Could not launch email';
//     }
//   }
// }

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() => runApp(emailSend());

class emailSend extends StatelessWidget {
  final subjectController = TextEditingController();
  final bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Send Email with Subject and Body Text'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: subjectController,
                  decoration: InputDecoration(
                    labelText: 'Email Subject',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: bodyController,
                  decoration: InputDecoration(
                    labelText: 'Email Body',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  sendEmailWithSubjectAndBody(
                    subjectController.text,
                    bodyController.text,
                  );
                },
                child: Text('Send Email'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to launch the email client with subject and body text
  sendEmailWithSubjectAndBody(String subject, String body) async {
    final recipientEmail = 'shresthaasaugat31@gmail.com';
    final email =
        'mailto:$recipientEmail?subject=${Uri.encodeComponent(subject)}&body=${Uri.encodeComponent(body)}';
    if (await canLaunch(email)) {
      await launch(email);
    } else {
      throw 'Could not launch email';
    }
  }
}
