import 'package:flutter/material.dart';
import 'package:rentx/pages/information/widget/first_page_widget.dart';
import 'package:rentx/pages/information/widget/second_page_widget.dart';
import 'package:rentx/pages/welcome/welcome_page.dart';
import 'package:rentx/styles/app_colors.dart';

class InformationPage extends StatefulWidget {
  const InformationPage({Key? key}) : super(key: key);

  @override
  _InformationPageState createState() => _InformationPageState();
}

class _InformationPageState extends State<InformationPage> {
  final PageController controller = PageController(initialPage: 0);
  var currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: PageView(
          onPageChanged: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          controller: controller,
          children: const [FirstPageWidget(), SecondPageWidget()],
        ),
      ),
      bottomNavigationBar: buildBottomNavigation(),
    );
  }

  Widget buildBottomNavigation() {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(right: 32, left: 32, bottom: 25),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                indicatorPage(isFirstPage()),
                SizedBox(width: 10),
                indicatorPage(!isFirstPage())
              ],
            ),
            InkWell(
              child: Icon(Icons.navigate_next),
              onTap: () {
                setState(() {
                  currentIndex = 1;
                });
                controller.animateToPage(1,
                    duration: const Duration(milliseconds: 400),
                    curve: Curves.easeIn);
                if (currentIndex == 1) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => WelcomePage()));
                }
              },
            )
          ],
        ),
      ),
    );
  }

  Widget indicatorPage(bool isIndicator) {
    return Container(
      width: isIndicator ? 8 : 5,
      height: isIndicator ? 8 : 5,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isIndicator ? AppColors.grayDart : AppColors.grayLight),
    );
  }

  bool isFirstPage() => currentIndex == 0;
}
