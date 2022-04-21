import 'dart:convert';

import 'package:get/state_manager.dart';
import 'package:task1/constants/data.dart';
import 'package:task1/models/user_model.dart';

class SearchController extends GetxController {
  final List<User> users =
      (json.decode(userList) as List).map((e) => User.fromJson(e)).toList();

  Rx<List<User>> filteredList = Rx<List<User>>([]);

  RxInt selectedUser = 1.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    filteredList.value = users;
  }

  void setSearchText(String text) {
    print(text);
    List<User> result = [];
    // filteredList.value.clear();
    if (text.isEmpty) {
      result = users;
    } else {
      for (var user in users) {
        if (user.name.toLowerCase().contains(text.toLowerCase()) ||
            user.userName.toLowerCase().contains(text.toLowerCase()) ||
            user.email.toLowerCase().contains(text.toLowerCase())) {
          result.add(user);
        }
      }
    }

    filteredList.value = result;

    // print(filteredList.length);
  }

  void setSelectdUser(int index) {
    selectedUser.value = index;
  }
}
