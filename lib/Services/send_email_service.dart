import 'dart:convert';

import 'package:http/http.dart' as http;

class SendEmailService {
  static sendMail(
      {required String name,
      required String subject,
      required String email,
      required String message}) async {
    try {
      var endPointUrl =
          Uri.parse("https://api.emailjs.com/api/v1.0/email/send");
      var response = await http.post(endPointUrl,
          headers: {
            'Content-Type': ' application/json',
            'origin': 'http://localhost'
          },
          body: json.encode({
            'service_id': 'service_l7hq48d',
            'template_id': 'template_jow2umz',
            'user_id': '2G9I4qzaVylBs_rct',
            'template_params': {
              'user_name': name,
              'user_email': email,
              'user_subject': subject,
              'user_message': message
            }
          }));
      if (response.statusCode == 200) {
        return response;
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
