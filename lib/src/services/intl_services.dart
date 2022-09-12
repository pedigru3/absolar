import 'package:intl/intl.dart';

class IntlServices {
  formatNumber(double value) {
    var formatter = NumberFormat('#,###', 'pt_BR');
    return formatter.format(value);
  }
}
