import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

//main
// abstract class BaseViewModel {
//   late BuildContext context;
//   void setContext(BuildContext context);
//   void init();
// }

// //two
// abstract class BaseViewModel {
//   late ReactiveContext context; // ReactiveContext olarak değiştirildi
//   void setContext(ReactiveContext context); // Bu da ReactiveContext olarak değiştirildi
//   void init();
// }

// abstract class BaseViewModel {
//   late ReactiveContext context; // ReactiveContext olarak değiştirildi
//   void setContext(
//       ReactiveContext context); // Bu da ReactiveContext olarak değiştirildi
//   void init();
// }

abstract class BaseViewModel {
  late ReactiveContext context;
  void setContext(ReactiveContext context);
  void init();
}
