import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/constants/style.dart';
import 'package:task1/controllers/search_controller.dart';
import 'package:task1/models/user_model.dart';

class UserCard extends StatelessWidget {
  final User user;
  final bool? isActive;
  UserCard({Key? key, required this.user, this.isActive}) : super(key: key);

  final SearchController searchController = Get.find();
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        searchController.setSelectdUser(user.id);
      },
      child: Obx(() {
        return Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: searchController.selectedUser.value.toInt() == user.id
                ? Color.fromARGB(31, 77, 111, 129)
                : Colors.white,
            boxShadow: [
              BoxShadow(
                  offset: Offset(0, 3),
                  color: lightGrey.withOpacity(.1),
                  blurRadius: 6)
            ],
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                user.name,
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
                style: kNameStyle,
              ),
              Text(
                user.userName.toLowerCase(),
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
                style: kUserNameStyle,
              ),
              Text(
                user.email.toLowerCase(),
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
                style: kEmailStyle,
              )
            ],
          ),
        );
      }),
    );
  }
}
