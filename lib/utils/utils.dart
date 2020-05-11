import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

String getFormattedNumber(int number) {
  if (number < 100) {
    return number.toString();
  }
  return NumberFormat('###,000', 'en_Us').format(number);
}

Future launchURL(String givenUrl) async {
  if (await canLaunch(givenUrl)) {
    await launch(givenUrl);
  } else {
    throw 'Could not launch $givenUrl';
  }
}
