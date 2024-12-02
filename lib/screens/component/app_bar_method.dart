import 'package:bhagwat/screens/component/title_app_bar_widhet.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/home_provider.dart';

AppBar AppBarMethod({
  required BuildContext context,
  required bool isButton,
  required bool isTitle,
  required bool isDropdownButton,
}) {
  return AppBar(
    leading: (isButton)
        ? IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios_outlined),
          )
        : null,
    backgroundColor: Colors.deepOrange.shade500,
    actions: (isDropdownButton)
        ? [
            DropdownButton(
              items: const [
                DropdownMenuItem(
                  value: 'Sanskrit',
                  child: Text('Sanskrit'),
                ),
                DropdownMenuItem(
                  value: 'Hindi',
                  child: Text('Hindi'),
                ),
                DropdownMenuItem(
                  value: 'Gujarati',
                  child: Text('Gujarati'),
                ),
                DropdownMenuItem(
                  value: 'English',
                  child: Text('English'),
                ),
              ],
              icon: const Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.black,
              ),
              value: Provider.of<HomeProvider>(context, listen: true).languages,
              onChanged: (value) {
                Provider.of<HomeProvider>(context, listen: false)
                    .dropdown(value!);
              },
            ),
            const SizedBox(
              width: 20,
            )
          ]
        : [],
    title: (isTitle)
        ? const Text(
            'Bhagavad  Geeta',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
          )
        : const TitleAppBarWidget(),
  );
}
