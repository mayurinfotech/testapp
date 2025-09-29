import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lucide_icons_flutter/lucide_icons.dart';
import 'package:testapp/features/messages/controller/search_bar_controller.dart';

class SearchbarStatusWidget extends StatefulWidget {
  /// A custom search bar with horizontal status filters.
  ///
  /// This widget displays a horizontal list of status chips
  /// like **Active**, **Requests**, **Archived**, and **Blocked**.
  ///
  /// - Use this widget inside a screen where you need quick
  ///   filtering of user status.
  /// - By default, the first chip will be selected.
  ///
  /// Example:
  /// ```dart
  /// SearchbarStatusWidget()
  /// ```
  const SearchbarStatusWidget({super.key});

  @override
  State<SearchbarStatusWidget> createState() => _SearchbarStatusWidgetState();
}

class _SearchbarStatusWidgetState extends State<SearchbarStatusWidget> {
  var selectedIndex = 0.obs;
  List<String> statusIndicator = ["Active", "Requests", "Archived", "Blocked"];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //<---------------------search bar ------------------------->
        Container(
          // height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
            color: const Color(0xFFF9F6F1),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(24),
              bottomRight: Radius.circular(24),
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xFFFFFFFF),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(
                        color: Color(0xFFCED9D4),
                        width: 1,
                      ),
                    ),
                    prefixIcon: Icon(LucideIcons.search),
                    hintText: "Search for profile",
                    hintStyle: TextStyle(
                      color: Color(0xFF9DB2AA),
                      fontFamily: "Roboto",
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              //<---------------------search bar ------------------------->
              //<------------------SizedBox---------------------------------->
              SizedBox(height: 16),
              // <-----------------Status Indicator-------------------------->
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                  height: 52,
                  child: Obx(() {
                    print(selectedIndex);
                    return ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: statusIndicator.length,

                      itemBuilder: (context, index) {
                        final status = statusIndicator[index];
                        final isActive = selectedIndex.value == index;
                        return GestureDetector(
                          onTap: () {
                            selectedIndex.value = index;
                            debugPrint("This is Status: $status");
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: isActive
                                  ? Color(0xFF5C7F71)
                                  : Color(0xFFFFFFFF),
                              border: Border.all(
                                width: 1,
                                color: isActive
                                    ? Color(0xFF5C7F71)
                                    : Color(0xFFCED9D4),
                              ),
                              borderRadius: BorderRadius.circular(24),
                            ),
                            child: Center(
                              child: Text(
                                status,
                                style: TextStyle(
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                  color: isActive
                                      ? Color(0xFFFFFFFF)
                                      : Color(0xFF5C7F71),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(width: 12);
                      },
                    );
                  }),
                ),
              ),

              //<--------------------------Status Indicator--------------->
            ],
          ),
        ),
      ],
    );
  }
}
