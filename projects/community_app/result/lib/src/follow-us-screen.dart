import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//screen
class FollowUsScreen extends StatefulWidget {
  const FollowUsScreen({Key? key}) : super(key: key);

  @override
  _FollowUsScreenState createState() => _FollowUsScreenState();
}

//screen
class _FollowUsScreenState extends State<FollowUsScreen> {
  //Main widget
  @override
  Widget build(BuildContext context) {
    Color socialBackground = Colors.grey.withAlpha(25);

    return Scaffold(
      //screen app bar (header)
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        leading: const BackButton(color: Colors.black),
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        title: const Text(
          "Community",
          style: TextStyle(color: Colors.black),
        ),
      ),
      //screen app body
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Opacity(
              opacity: 0.75,
              child: Text(
                "Connect with thousand of other Firekits users, to discuss and share anything about crytocurrency knowledge.",
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            //social container
            SocialContainer(
              socialColor: Colors.blue,
              socialIcon: const FaIcon(
                FontAwesomeIcons.facebook,
                color: Colors.white,
              ),
              title: "Facebook",
              username: "Firekits",
              backgroundColor: socialBackground,
              onPressed: () {},
            ),
            //social container
            SocialContainer(
              socialColor: Colors.lightBlue,
              socialIcon: const FaIcon(
                FontAwesomeIcons.twitter,
                color: Colors.white,
              ),
              title: "Twitter",
              username: "@Firekits",
              backgroundColor: socialBackground,
              onPressed: () {},
            ),
            //social container
            SocialContainer(
              socialColor: Colors.redAccent,
              socialIcon: const FaIcon(
                FontAwesomeIcons.pinterest,
                color: Colors.white,
              ),
              title: "Pinterest",
              username: "Firekits",
              backgroundColor: socialBackground,
              onPressed: () {},
            ),
            //
            SocialContainer(
              socialColor: Colors.pinkAccent,
              socialIcon: const FaIcon(
                FontAwesomeIcons.dribbble,
                color: Colors.white,
              ),
              title: "Dribbble",
              username: "Firekits",
              backgroundColor: socialBackground,
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}

/// CUSTOM WIDGETS - EXPORT TO OTHER FILE FOR BETTER STRUCTURE

//social media container widget
class SocialContainer extends StatelessWidget {
  final Color backgroundColor;
  final Color socialColor;
  final FaIcon socialIcon;

  final String title;
  final String username;

  //handle on pressed event
  final Function()? onPressed;

  const SocialContainer({
    Key? key,
    required this.backgroundColor,
    required this.socialColor,
    required this.title,
    required this.username,
    required this.socialIcon,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(10),
        child: Ink(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //social netw+B/Hork icon
              CircleAvatar(
                backgroundColor: socialColor,
                child: socialIcon,
              ),
              //space
              const SizedBox(
                width: 20,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //social media title
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    //username
                    Opacity(
                      opacity: 0.75,
                      child: Text(
                        username,
                        style: const TextStyle(fontSize: 14),
                      ),
                    ),
                  ],
                ),
              ),
              const Opacity(
                opacity: 0.75,
                child: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

///END CUSTOM WIDGETS
