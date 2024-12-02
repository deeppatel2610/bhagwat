import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/home_provider.dart';
import '../../utils/all_list.dart';
import '../component/app_bar_method.dart';
import '../component/title_verses_widhet.dart';

class VersesPage extends StatelessWidget {
  const VersesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent.shade100,
      appBar: AppBarMethod(
          context: context,
          isButton: true,
          isTitle: false,
          isDropdownButton: true),
      body: Consumer<HomeProvider>(
        builder: (context, provider, child) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount:
                provider.chapterList[selectedChapterIndex].verses!.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                selectedVerseIndex = index;
                Navigator.of(context).pushNamed("/verse");
              },
              child: Container(
                margin: const EdgeInsets.all(8),
                width: double.infinity,
                height: 70,
                decoration: BoxDecoration(
                  color: Colors.deepOrange.shade400,
                  borderRadius: BorderRadius.circular(15),
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TitleVersesWidhet(index: index),
                ),
              ),
            ),
            // itemBuilder: (context, index) => Card(
            //   color: Colors.deepOrange.shade400,
            //   child: ListTile(
            //     leading: Text(
            //       provider.chapterList[selectedChapterIndex].verses![index]
            //           .VerseNumber
            //           .toString(),
            //       style: const TextStyle(
            //         fontSize: 17,
            //         color: Colors.black,
            //       ),
            //     ),
            //     title: TitleVersesWidhet(index: index),
            //     trailing: IconButton(
            //       onPressed: () {
            //         selectedVerseIndex = index;
            //         Navigator.of(context).pushNamed("/verse");
            //       },
            //       icon: const Icon(
            //         Icons.arrow_forward_ios_outlined,
            //         color: Colors.black,
            //       ),
            //     ),
            //   ),
            // ),
          ),
        ),
      ),
    );
  }
}
