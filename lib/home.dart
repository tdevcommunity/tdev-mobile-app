import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tdev/generated/assets.dart';
import 'package:url_launcher/url_launcher.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final titleStyle = TextStyle(
        color: Theme.of(context).primaryColor,
        fontSize: 25,
        fontWeight: FontWeight.bold);
    List<Map<String, dynamic>> eventList = [
      {
        "img": "asset/1.jpg",
      },
      {
        "img": "asset/2.jpg",
      },
      {
        "img": "asset/3.jpg",
      },
      {
        "img": "asset/4.jpg",
      },
    ];

    List<Map<String, dynamic>> contactList = [
      {
        "url": "https://t.me/tdev228",
        "icon": FontAwesomeIcons.telegram
      },
      {
        "url": "https://twitter.com/tdev228",
        "icon": FontAwesomeIcons.twitter
      },
      {
        "url": "https://www.facebook.com/Tdev228/",
        "icon": FontAwesomeIcons.facebook
      },
      {
        "url": "https://instagram.com/tdev228",
        "icon": FontAwesomeIcons.instagram
      },
    ];
    return Material(
      color: Colors.black,
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          SizedBox(
            height: 40,
          ),
          Center(
            child: Image.asset(
              Assets.assetLogo,
              width: 200,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          AnimatedTextKit(
            animatedTexts: [
              TypewriterAnimatedText(
                "Plus qu'une communauté, une famille.",
                textStyle: const TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
                speed: const Duration(milliseconds: 90),
              ),
            ],
            totalRepeatCount: 4,
            pause: const Duration(milliseconds: 1000),
            displayFullTextOnTap: true,
            stopPauseOnTap: true,
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 50),
            child: ElevatedButton(
                child: Text(
                  "SITE WEB",
                  style: GoogleFonts.dmSans(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                      fontSize: 17),
                ),
                style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFFD600),
                    elevation: 0,
                    shadowColor: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    padding: EdgeInsets.symmetric(vertical: 4)),
                onPressed: () => launch("https://tdev228.org")),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
            "NOTRE VISION",
            style: titleStyle,
          )),
          SizedBox(
            height: 10,
          ),
          Text(
            "Promouvoir les TICs et favoriser l'entraide entre les développeurs.",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15,
          ),
          Center(
              child: Text(
            "évènements réçents".toUpperCase(),
            style: titleStyle,
          )),
          SizedBox(
            height: 15,
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 10),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  eventList.length,
                  (index) => Card(
                        margin: EdgeInsets.symmetric(horizontal: 7),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7)),
                        child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Image.asset(
                              eventList[index]['img'],
                              width: MediaQuery.of(context).size.width * 0.9,
                            )),
                      )).toList(),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
              child: Text(
            "Contacts".toUpperCase(),
            style: titleStyle,
          )),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                contactList.length,
                    (index) => InkWell(
                      onTap: () => launch(contactList[index]["url"]),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        margin: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Color(0xFFFFD600)
                          ),
                          child: Icon(contactList[index]["icon"], color: Colors.white,)),
                    )).toList(),
          ),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
