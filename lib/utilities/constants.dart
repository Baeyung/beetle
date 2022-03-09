import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';

const kBaseUrl = 'https://beetle-auth.azurewebsites.net/auth';
const kBaseUrlForum =
    'https://beetle-discussion-forum.azurewebsites.net/beetle';

BorderRadius kBorderRadiusForumCards = BorderRadius.circular(20);
BoxDecoration kForumCardDecoration = BoxDecoration(
  color: Colors.orangeAccent,
  borderRadius: kBorderRadiusForumCards,
);
BoxDecoration kCommentCardDecoration = BoxDecoration(
  color: Colors.orange[900],
  borderRadius: kBorderRadiusForumCards,
);

const TextStyle kForumTitleTextStyle = TextStyle(
  fontSize: 18,
  fontWeight: FontWeight.bold,
);

const AssetImage kBeetleFullLogo = AssetImage(
  'assets/images/png_files/Beetle_FULL.png',
);

const Color kBeetleMainColor = Color(0xffff420e);

const AppBarTheme kAppBarTheme = AppBarTheme(
  backgroundColor: Colors.white,
  titleTextStyle: kAppBarTextStyle,
  elevation: 10,
  centerTitle: true,
);

const TextStyle kAppBarTextStyle = TextStyle(
  fontSize: 30,
  fontWeight: FontWeight.bold,
  color: kBeetleMainColor,
);

const List<String> kMainpages = [
  '/',
  '/driver',
];

const EdgeInsets kpaddingSearchBar = EdgeInsets.only(
  top: 20,
  left: 10,
  right: 10,
  bottom: 10,
);

LoginTheme kLoginTheme = LoginTheme(
  footerBackgroundColor: Colors.orange,
  primaryColor: Colors.orange,
  accentColor: Colors.orange,
  pageColorLight: Colors.orange,
  pageColorDark: Colors.white,
  cardTheme: const CardTheme(
    elevation: 20,
    margin: EdgeInsets.all(10),
  ),
  buttonTheme: const LoginButtonTheme(
    backgroundColor: Colors.orange,
    highlightColor: Colors.orange,
  ),
  titleStyle:
      const TextStyle(color: kBeetleMainColor, fontWeight: FontWeight.bold),
);

LoginMessages kLoginMessages = LoginMessages(
  loginButton: 'لاگ ان',
  signupButton: 'سائن اپ',
  forgotPasswordButton: 'پاسورڈ بھول گے؟',
  userHint: 'Email / ای میل',
  passwordHint: 'Password / پاس ورڈ',
  confirmPasswordHint: 'Confirm Password / پاس ورڈ کی تصدیق کریں',
);

AppBar kBeetleAppBar = AppBar(
  title: Row(
    mainAxisAlignment: MainAxisAlignment.center,
    mainAxisSize: MainAxisSize.min,
    children: [
      Hero(
        tag: 'logo_main',
        child: Image(
          image: const AssetImage('assets/images/png_files/Beetle.png'),
          height: 0.8 * AppBar().preferredSize.height,
        ),
      ),
      const SizedBox(
        width: 5,
      ),
      const Hero(
        tag: 'title_main',
        child: Text(
          'Beetle',
        ),
      )
    ],
  ),
);
const BoxConstraints kSizeConstraints = BoxConstraints.tightFor(
  width: 90.0,
  height: 90.0,
);
