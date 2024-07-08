import 'package:intl/intl.dart';

class UtilServices {
  // double em moeda (R$)
  String priceToCurrency(double price) {
    NumberFormat numberFormat = NumberFormat.simpleCurrency(locale: 'pt_BR');

    return numberFormat.format(price);
  }
}