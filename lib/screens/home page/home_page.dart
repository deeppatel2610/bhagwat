import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../provider/home_provider.dart';
import '../../utils/all_list.dart';
import '../component/app_bar_method.dart';
import '../component/title_widhet.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent.shade100,
      appBar: AppBarMethod(
        context: context,
        isButton: false,
        isTitle: true,
        isDropdownButton: true,
      ),
      body: Consumer<HomeProvider>(
        builder: (context, provider, child) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: provider.chapterList.length,
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                selectedChapterIndex = index;
                Navigator.of(context).pushNamed('/verses');
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
                  child: TitleWidhet(index: index),
                ),
              ),
            ),
            // itemBuilder: (context, index) => Card(
            //   elevation: 5,
            //   color: Colors.deepOrange.shade400,
            //   child: ListTile(
            //     leading: Text(
            //       provider.chapterList[index].Chapter.toString(),
            //       style: const TextStyle(
            //         fontSize: 17,
            //         color: Colors.black,
            //       ),
            //     ),
            //     title: TitleWidhet(index: index),
            //     trailing: IconButton(
            //       onPressed: () {
            //         selectedChapterIndex = index;
            //         Navigator.of(context).pushNamed('/verses');
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
