

import 'package:url_launcher/url_launcher.dart';

abstract class LaunchLinks {
  static Future<void> launchEmail(String path,
      {String? from, String? subject, String? body,}) async {
    String? encodeQueryParameters(Map<String, String> params) {
      return params.entries
          .map((MapEntry<String, String> e) =>
              '${Uri.encodeComponent(e.key)}=${Uri.encodeComponent(e.value)}',)
          .join('&');
    }

    final emailLaunchUri = Uri(
      scheme: 'mailto',
      path: path,
      query: encodeQueryParameters(<String, String>{
        'subject': subject ?? '',
        'from': from ?? '',
        'body': body ?? '',
      }),
    );

    await launchUrl(emailLaunchUri);
  }

  static Future<void> launchPhoneDialer(String contactNumber) async {
    final uri = Uri(scheme: 'tel', path: contactNumber);
    if (!await launchUrl(uri)) {
      // ignore: only_throw_errors
      throw 'Could not launch $contactNumber';
    }
  }
}
