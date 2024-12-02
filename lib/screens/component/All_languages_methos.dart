import 'package:flutter/material.dart';

import '../../utils/all_list.dart';

class AllLanguagesMethos extends StatelessWidget {
  const AllLanguagesMethos({
    super.key,
    required this.provider,
    required this.index,
  });

  final provider;
  final index;

  @override
  Widget build(BuildContext context) {
    if (languages[index] == "Hindi") {
      return Text(
        provider.chapterList[selectedChapterIndex].verses![selectedVerseIndex]
            .text!.Hindi
            .toString(),
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      );
    } else if (languages[index] == "Gujarati") {
      return Text(
        provider.chapterList[selectedChapterIndex].verses![selectedVerseIndex]
            .text!.Gujarati
            .toString(),
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      );
    } else if (languages[index] == "English") {
      return Text(
        provider.chapterList[selectedChapterIndex].verses![selectedVerseIndex]
            .text!.English
            .toString(),
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
        textAlign: TextAlign.center,
      );
    }
    return Text(
      provider.chapterList[selectedChapterIndex].verses![selectedVerseIndex]
          .text!.Sanskrit
          .toString(),
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w500,
        fontSize: 18,
      ),
      textAlign: TextAlign.center,
    );
  }
}
