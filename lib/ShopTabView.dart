import 'package:coper/constants/image_constants.dart';
import 'package:coper/models/tab_models.dart';
import 'package:coper/view/shop_home_view.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class ShopTabView extends StatelessWidget {
  ShopTabView({Key? key}) : super(key: key);

  final _items = TabModels.create().tabItems;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            _messageButton(context),
            _notificationButton(),
          ],
        ),
        body: TabBarView(children: _items.map((e) => e.page).toList()),
        bottomNavigationBar: BottomAppBar(
          child: TabBar(
              tabs: _items
                  .map((e) => Tab(text: e.title.tr(), icon: Icon(e.icon)))
                  .toList()),
        ),
      ),
    );
  }

  IconButton _messageButton(BuildContext context) {
    return IconButton(
        onPressed: () {},
        icon: Stack(
          clipBehavior: Clip.none,
          children: [
            Image.asset(ImageConstatns.instance.iconPath.message),
            Positioned(
              bottom: -5,
              left: -5,
              child: CircleAvatar(
                radius: 16 / 2,
                backgroundColor: Theme.of(context).colorScheme.error,
                child: FittedBox(
                    child: Padding(
                  padding: EdgeInsets.all(3),
                  child: FittedBox(
                      child: Text('5',
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onSecondary))),
                )),
              ),
            )
          ],
        ));
  }

  IconButton _notificationButton() => IconButton(
        onPressed: () {},
        icon: Image.asset(ImageConstatns.instance.iconPath.notification),
      );
}
