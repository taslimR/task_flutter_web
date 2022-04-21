import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_grid_list/responsive_grid_list.dart';
import 'package:task1/controllers/search_controller.dart';
import 'package:task1/wigets/card.dart';
import 'package:task1/wigets/details.dart';

class SmallScreen extends StatelessWidget {
  SmallScreen({Key? key}) : super(key: key);

  final SearchController searchController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Container(
            // color: Colors.green,
            child: Obx(() {
              return searchController.filteredList.value.isNotEmpty
                  ? ResponsiveGridList(
                      horizontalGridMargin: 50,
                      verticalGridMargin: 50,
                      minItemWidth: 170,
                      children: List.generate(
                          searchController.filteredList.value.length,
                          (index) => UserCard(
                                user:
                                    searchController.filteredList.value[index],
                                isActive: false,
                              )),
                    )
                  : Text("No user found");
            }),
          ),
        ),
        Expanded(
          child: Container(
            // color: Colors.amber,
            child: Details(),
          ),
        ),
      ],
    );
  }
}
