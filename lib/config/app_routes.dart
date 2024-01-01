import 'package:flutter_full_course/model/user.dart';
import 'package:flutter_full_course/pages/edit_profile.dart';
import 'package:flutter_full_course/pages/home_page.dart';
import 'package:flutter_full_course/pages/login_page.dart';
import 'package:flutter_full_course/pages/main_page.dart';
import 'package:flutter_full_course/pages/nearby_page.dart';

class AppRoutes {
  static final pages = {
    login: (context) => LoginPage(),
    home: (context) => HomePage(),
    main: (context) => MainPage(user: User(1, 'firstname', 'lastname', 'mobile', 'birthday', 'gender', false),),
    editProfile: (context) => EditProfilePage(),
    nearby: (context) => NearbyPage(),
  };

  static const login = '/';
  static const home = '/home';
  static const main = '/main';
  static const editProfile = '/edit_profile';
  static const nearby = '/nearby';

}
