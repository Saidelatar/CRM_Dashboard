import 'package:flutter/material.dart';

class ActiveIndexController {
  ValueNotifier<int> activeListIndex =
      ValueNotifier<int>(-1); // To track which list is active
  ValueNotifier<int> activeItemIndex =
      ValueNotifier<int>(-1); // To track which item in the list is active
}
