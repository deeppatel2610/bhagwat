import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/home_provider.dart';
import '../../utils/all_list.dart';

class TitleWidhet extends StatelessWidget {
  const TitleWidhet({super.key, required this.index});

  final index;

  @override
  Widget build(BuildContext context) {
    if (Provider.of<HomeProvider>(context, listen: true).languages ==
        languages[1]) {
      return Text(
        Provider.of<HomeProvider>(context, listen: true)
            .chapterList[index]
            .chapterName!
            .Hindi
            .toString(),
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      );
    } else if (Provider.of<HomeProvider>(context, listen: true).languages ==
        languages[2]) {
      return Text(
        Provider.of<HomeProvider>(context, listen: true)
            .chapterList[index]
            .chapterName!
            .Gujarati
            .toString(),
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      );
    } else if (Provider.of<HomeProvider>(context, listen: true).languages ==
        languages[3]) {
      return Text(
        Provider.of<HomeProvider>(context, listen: true)
            .chapterList[index]
            .chapterName!
            .English
            .toString(),
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      );
    }

    return Text(
      Provider.of<HomeProvider>(context, listen: true)
          .chapterList[index]
          .chapterName!
          .Sanskrit
          .toString(),
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
    );
  }
}
