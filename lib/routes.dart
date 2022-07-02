import 'package:flutter/widgets.dart';
import './screens/splash/splash_screen.dart';
import './screens/home/home_screen.dart';
import './screens/cart/recent_screen.dart';
import './screens/complete_profile/complete_profile_screen.dart';
import './screens/details/details_screen.dart';
import './screens/profile/profile_screen.dart';
import './screens/register/register_rent_screen.dart';

// TODO : OPTION SCREEN
import './screens/signin_as/signin_as_screen.dart';
import './screens/signup_as/signup_as_screen.dart';
import './screens/signup_or_signin/signin_or_signup_screen.dart';
import './screens/forgot_password/forgot_password_screen.dart';

// TODO : SIGN_IN SCREEN
import './screens/sign_in_for_user/sign_in_for_user_screen.dart';
import './screens/sign_in_for_admin/sign_in_for_admin_screen.dart';
import './screens/sign_in_for_patner/sign_in_for_patner_screen.dart';

// TODO : SIGN_UP SCREEN
import 'screens/sign_up_for_user/sign_up_for_user_screen.dart';
import 'screens/sign_up_for_admin/sign_up_for_admin_screen.dart';
import 'screens/sign_up_for_patner/sign_up_for_patner_screen.dart';

// TODO : NOTIFICATION SCREEN
import './screens/signin_success/signin_success_screen.dart';
import './screens/regis_success/regis_success_screen.dart';
import './screens/verif_email_success/verif_email_success_screen.dart';
import './screens/rent_regis_success/rent_regis_success_screen.dart';

// TODO : All routes will be available here
final Map<String, WidgetBuilder> routes = {
  // TODO : SPLASH SCREEN
  SplashScreen.routeName: (context) => SplashScreen(),

  // TODO : SIGN_UP OR SIGN_IN AS SCREEN
  RegisOrLoginScreen.routeName: (context) => RegisOrLoginScreen(),

  // TODO : SIGN_IN AS SCREEN
  LoginasScreen.routeName: (context) => LoginasScreen(),

  // TODO : SIGN_UP AS SCREEN
  RegisasScreen.routeName: (context) => RegisasScreen(),

  // TODO : SIGN_IN SCREEN
  SignInForUserScreen.routeName: (context) => SignInForUserScreen(),
  SignInForAdminScreen.routeName: (context) => SignInForAdminScreen(),
  SignInForPatnerScreen.routeName: (context) => SignInForPatnerScreen(),

  // TODO : SIGN_UP SCREEN
  SignUpForUserScreen.routeName: (context) => SignUpForUserScreen(),
  SignUpForAdminScreen.routeName: (context) => SignUpForAdminScreen(),
  SignUpForPatnerScreen.routeName: (context) => SignUpForPatnerScreen(),

  // TODO : NOTIFICATION SCREEN
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  RegisSuccessScreen.routeName: (context) => RegisSuccessScreen(),
  RentRegisSuccessScreen.routeName: (context) => RentRegisSuccessScreen(),
  VerifEmailSuccessScreen.routeName: (context) => VerifEmailSuccessScreen(),

  // TODO : OPTION SCREEN
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  RecentScreen.routeName: (context) => RecentScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  TourRegisterScreen.routeName: (context) => TourRegisterScreen(),
};
