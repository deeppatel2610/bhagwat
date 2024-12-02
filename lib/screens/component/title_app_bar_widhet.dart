import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/home_provider.dart';
import '../../utils/all_list.dart';

class TitleAppBarWidget extends StatelessWidget {
  const TitleAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    if (Provider.of<HomeProvider>(context, listen: true).languages ==
        languages[1]) {
      return Text(
        Provider.of<HomeProvider>(context)
            .chapterList[selectedChapterIndex]
            .chapterName!
            .Hindi
            .toString(),
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
      );
    } else if (Provider.of<HomeProvider>(context, listen: true).languages ==
        languages[2]) {
      return Text(
        Provider.of<HomeProvider>(context)
            .chapterList[selectedChapterIndex]
            .chapterName!
            .Gujarati
            .toString(),
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
      );
    } else if (Provider.of<HomeProvider>(context, listen: true).languages ==
        languages[3]) {
      return Text(
        Provider.of<HomeProvider>(context)
            .chapterList[selectedChapterIndex]
            .chapterName!
            .English
            .toString(),
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          letterSpacing: 1,
        ),
      );
    }

    return Text(
      Provider.of<HomeProvider>(context)
          .chapterList[selectedChapterIndex]
          .chapterName!
          .Sanskrit
          .toString(),
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        letterSpacing: 1,
      ),
    );
  }
}
