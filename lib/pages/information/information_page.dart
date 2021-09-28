import 'package:flutter/material.dart';
import 'package:rentx/pages/information/widget/first_page_widget.dart';
import 'package:rentx/styles/app_colors.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  final PageController controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: PageView(
          children: [FirstPageWidget()],
        ),
      ),
      bottomNavigationBar: buildBottomNavigation(),
    );
  }

  Widget buildBottomNavigation() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(right: 25, left: 25, bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.grayDart),
                ),
                SizedBox(width: 10),
                Container(
                  width: 5,
                  height: 5,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.grayLight),
                )
              ],
            ),
            Icon(Icons.navigate_next)
          ],
        ),
      ),
    );
  }
}
