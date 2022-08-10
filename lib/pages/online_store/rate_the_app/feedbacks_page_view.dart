import 'package:flutter/material.dart';
import 'components/feedbacks_page.dart';
import 'components/rate_the_app.dart';


class AppRatePageView extends StatefulWidget {
  static String routeName = "rateApp";
  final isHome;

  const AppRatePageView({Key key, this.isHome=false}) : super(key: key);

  @override
  _AppRatePageViewState createState() => _AppRatePageViewState();
}

class _AppRatePageViewState extends State<AppRatePageView> {

  PageController controller = PageController(initialPage: 0);
  List boxes;

  @override
  void initState() {
    super.initState();
    boxes = [RateTheAppPage(controller: controller), FeedbackScreen(controller: controller,)];
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        controller: controller,
        scrollDirection: Axis.vertical,
        itemCount: 2,
        itemBuilder: (context, index)=>boxes[index],
      ),
    );
  }
}
