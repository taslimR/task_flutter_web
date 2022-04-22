import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/constants/style.dart';
import 'package:task1/controllers/search_controller.dart';

class Details extends StatelessWidget {
  Details({Key? key}) : super(key: key);

  final SearchController searchController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Details",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Container(
          child: Obx(() {
            return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                      width: 80,
                      child: Text(
                        "Name: ",
                        style: kLabelStyle,
                      ),
                    ),
                    // SizedBox(
                    //   height: 4,
                    // ),
                    Expanded(
                      child: Text(
                        searchController
                            .users[searchController.selectedUser.value - 1]
                            .name,
                        style: kTextStyle,
                      ),
                    )
                  ]),
                  SizedBox(
                    height: 4,
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                      width: 80,
                      child: Text(
                        "Username: ",
                        style: kLabelStyle,
                      ),
                    ),
                    // SizedBox(
                    //   height: 4,
                    // ),
                    Text(
                      searchController
                          .users[searchController.selectedUser.value - 1]
                          .userName
                          .toLowerCase(),
                      style: kTextStyle,
                    ),
                  ]),
                  SizedBox(
                    height: 4,
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                      width: 80,
                      child: Text(
                        "Email: ",
                        style: kLabelStyle,
                      ),
                    ),
                    // SizedBox(
                    //   height: 4,
                    // ),
                    Text(
                      searchController
                          .users[searchController.selectedUser.value - 1].email
                          .toLowerCase(),
                      style: kTextStyle,
                    ),
                  ]),
                  SizedBox(
                    height: 4,
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                      width: 80,
                      child: Text(
                        "Phone: ",
                        style: kLabelStyle,
                      ),
                    ),
                    // SizedBox(
                    //   height: 4,
                    // ),
                    Text(
                      searchController
                          .users[searchController.selectedUser.value - 1].phone
                          .toLowerCase(),
                      style: kTextStyle,
                    ),
                  ]),
                  SizedBox(
                    height: 4,
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                      width: 80,
                      child: Text(
                        "Address: ",
                        style: kLabelStyle,
                      ),
                    ),
                    // SizedBox(
                    //   height: 4,
                    // ),
                    Expanded(
                      child: Text(
                        "${searchController.users[searchController.selectedUser.value - 1].address["suite"]}, ${searchController.users[searchController.selectedUser.value - 1].address["street"]}, ${searchController.users[searchController.selectedUser.value - 1].address["city"]}, ZIP Code - ${searchController.users[searchController.selectedUser.value - 1].address["zipcode"]}",
                        style: kTextStyle,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                      ),
                    ),
                  ]),
                  SizedBox(
                    height: 4,
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Container(
                      width: 80,
                      child: Text(
                        "Website: ",
                        style: kLabelStyle,
                      ),
                    ),
                    // SizedBox(
                    //   height: 4,
                    // ),
                    Text(
                      searchController
                          .users[searchController.selectedUser.value - 1]
                          .website
                          .toLowerCase(),
                      style: kTextStyle,
                    ),
                  ]),
                  SizedBox(
                    height: 4,
                  ),
                  Row(
                    children: [
                      Container(
                        width: 80,
                        child: Text(
                          "Company: ",
                          style: kLabelStyle,
                        ),
                      ),
                      // SizedBox(
                      //   height: 4,
                      // ),
                      Text(
                        '${searchController.users[searchController.selectedUser.value - 1].company["name"]},  ',
                        style: kTextStyle,
                      )
                    ],
                  ),
                ]);
          }),
        ),
      ],
    );
  }
}
