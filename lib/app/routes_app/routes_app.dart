import 'package:flutter/widgets.dart';
import 'package:newschooluganda/app/bloc_app/app_bloc.dart';
import 'package:newschooluganda/home_ui/login/view_login/login_page.dart';
import 'package:newschooluganda/home_ui/view_home_ux/home_page.dart';

List<Page> onGenerateAppViewPages(AppStatus state, List<Page<dynamic>> pages) {
  switch (state) {
    case AppStatus.authenticated:
      return [HomePage.page()];
    case AppStatus.unauthenticated:
    default:
      return [LoginPage.page()];
  }
}
