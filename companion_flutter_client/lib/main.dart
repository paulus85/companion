import 'package:companion_flutter_client/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  Intl.defaultLocale = 'fr_FR';
  initializeDateFormatting('fr_FR', null).then((_) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.manropeTextTheme()),
      home: HomePage(),
    );
  }
}
