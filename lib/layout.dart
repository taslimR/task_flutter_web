import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task1/constants/style.dart';
import 'package:task1/controllers/search_controller.dart';
import 'package:task1/helpers/responsiveness_helper.dart';
import 'package:task1/wigets/large_screen.dart';
import 'package:task1/wigets/small_screen.dart';

class SiteLayout extends StatelessWidget {
  final TextEditingController _c = TextEditingController();

  final SearchController searchController = Get.put(SearchController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        elevation: 0,
        title: !ResponsiveWidget.isSmallScreen(context)
            ? Row(
                children: [
                  Expanded(child: SizedBox()),
                  Expanded(
                    flex: 4,
                    child: TextField(
                      onChanged: (value) =>
                          searchController.setSearchText(value),
                      controller: _c,
                      decoration: InputDecoration(
                        suffixIcon: Align(
                            widthFactor: 1.0,
                            heightFactor: 1.0,
                            child: Icon(Icons.search_rounded)),
                        suffixIconColor: lightBlue,
                        hintText: 'Search User by name or email',
                        hintStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontStyle: FontStyle.italic,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide:
                              const BorderSide(width: 2, color: lightGrey),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              width: 3, color: Colors.lightBlue),
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  Expanded(child: SizedBox()),
                ],
              )
            : TextField(
                controller: _c,
                decoration: InputDecoration(
                  suffixIcon: Align(
                      widthFactor: 1.0,
                      heightFactor: 1.0,
                      child: Icon(Icons.search_rounded)),
                  suffixIconColor: lightBlue,
                  hintText: 'Search User by name or email',
                  hintStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: const BorderSide(width: 2, color: lightGrey),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(width: 3, color: Colors.lightBlue),
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ResponsiveWidget(
          largeScreen: LargeScreen(),
          smallScreen: SmallScreen(),
        ),
      ),
      // ListView.builder(
      //     itemCount: searchController.filteredList.length,
      //     itemBuilder: (context, index) {
      //       return Text(searchController.filteredList[index].name);
      //     }),
    );
  }
}
