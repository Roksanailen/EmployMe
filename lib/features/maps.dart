import 'package:emplooo/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Map extends StatefulWidget {
  const Map({super.key});

  @override
  State<Map> createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.asset(
            'assets/images/map.png',
            width: double.infinity,
            height: 200,
            fit: BoxFit.contain,
          ),
        ),
        Container(
          width: double.infinity,
          height: 500,
          decoration: BoxDecoration(
            color: Colors.green.shade100,
            border: Border.all(color: Colors.green.shade300, width: 5),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(100),
              topRight: Radius.circular(100),
            ),
          ),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(
              height: 20,
            ),
             Center(
              child: Text(
                LocaleKeys.maps_maps1.tr(),
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: InkWell(
                  onTap: () {
                    launchUrl(
                        Uri.parse(
                            "https://www.google.com/maps/place/Platform+Consulting+and+Investment+Services/@36.2103548,37.1570642,17z/data=!3m1!4b1!4m6!3m5!1s0x152ff962c29b1b93:0x5f1fa47e77d15acf!8m2!3d36.2103505!4d37.1544893!16s%2Fg%2F11h6l53z5d?entry=ttu"),
                        mode: LaunchMode.inAppWebView);
                  },
                  child:  Text(
                    LocaleKeys.maps_maps.tr(),
                    style: TextStyle(color: Colors.blue, fontSize: 14),
                  )),
            ),
            Divider(
              height: 0.01,
              thickness: 3,
              color: Colors.green.shade300,
              endIndent: 100,
              indent: 10,
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                LocaleKeys.maps_maps2.tr(),
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: InkWell(
                  onTap: () {
                    launchUrl(
                        Uri.parse(
                            "https://www.google.com/maps/place/%D9%8FELKOOD%E2%80%AD/@36.2133118,37.1459836,16z/data=!4m7!3m6!1s0x152ff9109d87c037:0x90726271f6b3a97!8m2!3d36.2127665!4d37.1363491!15sCjXZhdmI2YLYuSDYtNix2YPYqSBFbGNvZGUg2KjYp9mE2K7YsdmK2LfYqSDZgdmKINit2YTYqFo3IjXZhdmI2YLYuSDYtNix2YPYqSBlbGNvZGUg2KjYp9mE2K7YsdmK2LfYqSDZgdmKINit2YTYqJIBEHNvZnR3YXJlX2NvbXBhbnmaASNDaFpEU1VoTk1HOW5TMFZKUTBGblNVUXROQzE1YkdaM0VBReABAA!16s%2Fg%2F11fv3kjbm6?entry=ttu"),
                        mode: LaunchMode.inAppWebView);
                  },
                  child: Text(
                    LocaleKeys.maps_maps4.tr(),
                    style: TextStyle(color: Colors.blue, fontSize: 14),
                  )),
            ),
            Divider(
              height: 0.01,
              thickness: 3,
              color: Colors.green.shade300,
              endIndent: 100,
              indent: 10,
            ),
            const SizedBox(
              height: 10,
            ),
           Center(
              child: Text(
                LocaleKeys.maps_maps6.tr(),
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: InkWell(
                  onTap: () {
                    launchUrl(
                        Uri.parse(
                            "https://www.google.com/maps/place/%D9%8FELKOOD%E2%80%AD/@36.2133118,37.1459836,16z/data=!4m7!3m6!1s0x152ff9109d87c037:0x90726271f6b3a97!8m2!3d36.2127665!4d37.1363491!15sCjXZhdmI2YLYuSDYtNix2YPYqSBFbGNvZGUg2KjYp9mE2K7YsdmK2LfYqSDZgdmKINit2YTYqFo3IjXZhdmI2YLYuSDYtNix2YPYqSBlbGNvZGUg2KjYp9mE2K7YsdmK2LfYqSDZgdmKINit2YTYqJIBEHNvZnR3YXJlX2NvbXBhbnmaASNDaFpEU1VoTk1HOW5TMFZKUTBGblNVUXROQzE1YkdaM0VBReABAA!16s%2Fg%2F11fv3kjbm6?entry=ttu"),
                        mode: LaunchMode.inAppWebView);
                  },
                  child: Text(
                    LocaleKeys.maps_maps9.tr(),
                    style: TextStyle(color: Colors.blue, fontSize: 14),
                  )),
            ),
            Divider(
              height: 0.01,
              thickness: 3,
              color: Colors.green.shade300,
              endIndent: 100,
              indent: 10,
            ),
            const SizedBox(
              height: 10,
            ),
             Center(
              child: Text(
                LocaleKeys.maps_maps11.tr(),
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: InkWell(
                  onTap: () {
                    launchUrl(
                        Uri.parse(
                            "https://www.google.com/maps/place/%D9%8FELKOOD%E2%80%AD/@36.2133118,37.1459836,16z/data=!4m7!3m6!1s0x152ff9109d87c037:0x90726271f6b3a97!8m2!3d36.2127665!4d37.1363491!15sCjXZhdmI2YLYuSDYtNix2YPYqSBFbGNvZGUg2KjYp9mE2K7YsdmK2LfYqSDZgdmKINit2YTYqFo3IjXZhdmI2YLYuSDYtNix2YPYqSBlbGNvZGUg2KjYp9mE2K7YsdmK2LfYqSDZgdmKINit2YTYqJIBEHNvZnR3YXJlX2NvbXBhbnmaASNDaFpEU1VoTk1HOW5TMFZKUTBGblNVUXROQzE1YkdaM0VBReABAA!16s%2Fg%2F11fv3kjbm6?entry=ttu"),
                        mode: LaunchMode.inAppWebView);
                  },
                  child: Text(
                    LocaleKeys.maps_maps12.tr(),
                    style: TextStyle(color: Colors.blue, fontSize: 14),
                  )),
            ),
            Divider(
              height: 0.01,
              thickness: 3,
              color: Colors.green.shade300,
              endIndent: 100,
              indent: 10,
            ),
          ]),
        )
      ]),
    ));
  }
}
