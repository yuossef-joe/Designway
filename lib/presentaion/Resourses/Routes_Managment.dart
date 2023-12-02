import 'package:designway/presentaion/Login/Login_View.dart';
import 'package:designway/presentaion/Resourses/Strings_Manager.dart';
import 'package:designway/presentaion/forgot_password/ForgorPassword_View.dart';
import 'package:designway/presentaion/main/Main_View.dart';
import 'package:designway/presentaion/register/Register_View.dart';
import 'package:designway/presentaion/splash/SplashView.dart';
import 'package:flutter/material.dart';
import '../store_details/StoreDetails_View.dart';

class Routes{
  static const String splashRoute = "/splash";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotpasswrodRoute = "/forgotpasswrod";
  static const String mainRoute = "/main";
  static const String storgeDetailsRoute = "/storgeDetails";

}

class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings settings){
    switch (settings.name){
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_)=>const SelectionPage());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_)=>const LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_)=>const RegisterView());
      case Routes.forgotpasswrodRoute:
        return MaterialPageRoute(builder: (_)=>const ForgotPasswordView());
      case Routes.mainRoute:
        return MaterialPageRoute(builder: (_)=>const MainView());
      case Routes.storgeDetailsRoute:
        return MaterialPageRoute(builder: (_)=>const StoreDetailsView());
      default:
        return unDefindedRoute();
    }
    }
  static Route<dynamic> unDefindedRoute(){
    return MaterialPageRoute(builder: (_)=> Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.noRouteFound),//
      ),
      body: const Center(child: Text(AppStrings.noRouteFound)),
    ));
  }
}