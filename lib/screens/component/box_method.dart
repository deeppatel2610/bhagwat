import 'package:flutter/material.dart';

import '../../provider/home_provider.dart';
import '../../utils/all_list.dart';
import 'All_languages_methos.dart';

Container boxMethod({
  required HomeProvider provider,
  required int languagesIndex,
}) {
  return Container(
    width: double.infinity,
    decoration: BoxDecoration(
      color: Colors.deepOrange.shade400,
      borderRadius: BorderRadius.circular(15),
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Text(
            languages[languagesIndex],
            style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22,
              letterSpacing: 1,
            ),
            textAlign: TextAlign.center,
          ),
          AllLanguagesMethos(
            provider: provider,
            index: languagesIndex,
          ),
        ],
      ),
    ),
  );
}
