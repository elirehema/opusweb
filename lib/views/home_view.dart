import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:opus_web/widgets/NavigationBar/navigation_bar.dart';
import 'package:opus_web/widgets/call_to_action.dart';
import 'package:opus_web/widgets/centered_view/center_view.dart';
import 'package:opus_web/widgets/course_details/course_details.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: [
            NavigationBar(),
            Expanded(
              child: Row(children: [
                CourseDetails(),
                Expanded(
                  child: Center(
                    child: CallToAction('Join Course'),
                  ),
                )
              ]),
            )
          ],
        ),
      ),
    );
  }
}
