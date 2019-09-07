import 'package:flutter/material.dart';
import 'package:hacasulyhealth/app_localizations.dart';
import 'package:hacasulyhealth/provider/prv.dart';
import 'package:hacasulyhealth/public.dart' ;
import 'package:hacasulyhealth/start.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';
void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>  {
  final _app = Clprv();
    
  @override
  Widget build(BuildContext context) {
    Provider.debugCheckInvalidValueType = null;
    return ChangeNotifierProvider<Clprv>.value(
      value: _app,
          child: Consumer<Clprv>(
            builder: (context, value, child){
                        return MultiProvider(
                         providers: [
              Provider<Clprv>.value(value: _app),
              
            ],
                                                  child: MaterialApp(
        locale: new Locale(Provider.of<Clprv>(context).locale,Provider.of<Clprv>(context).lcnt),

        title: "E-health",
        theme: ThemeData(
          fontFamily: "janat"
        ),
        supportedLocales: [
            Locale('en', 'US'),
            Locale('ar', 'IQ'),
        ],
        // These delegates make sure that the localization data for the proper language is loaded
        localizationsDelegates: [
            // THIS CLASS WILL BE ADDED LATER
            // A class which loads the translations from JSON files
            AppLocalizations.delegate,
            // Built-in localization of basic text for Material widgets
            GlobalMaterialLocalizations.delegate,
            // Built-in localization for text direction LTR/RTL
            GlobalWidgetsLocalizations.delegate,
        ],
        // Returns a locale which will be used by the app
        localeResolutionCallback: (locale, supportedLocales) {
            // Check if the current device locale is supported
            for (var supportedLocale in supportedLocales) {
              if (supportedLocale.languageCode == locale.languageCode &&
                  supportedLocale.countryCode == locale.countryCode) {
                return supportedLocale;
              }
            }
            // If the locale of the device is not supported, use the first one
            // from the list (English, in this case).
            return supportedLocales.first;
        },
       home: homestart()
      ),
                        );
            }
              
          ),
    );
  }
}

