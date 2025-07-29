import 'package:get/get.dart';

import 'view/screen/HomePage.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(name: "/", page: () => HomePage()),

  //   GetPage(
  //   name: "/",
  //   page: () => const Language(),
  //   middlewares: [MyMiddleWare()],
  // ),
  //  Auth
  // GetPage(name: AppRoute.login, page: () => const Login()),
  // GetPage(name: AppRoute.signUp, page: () => const SignUp()),
];
