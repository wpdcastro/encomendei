import 'package:encomendei/views/publish/publish2.page.dart';
import 'package:encomendei/widgets/tourItem.widget.dart';
import 'package:flutter/material.dart';

class PublishPage extends StatelessWidget {
  final _tutorial = false;
  @override
  Widget build(BuildContext context) {

    if (_tutorial == true) { 

      return Scaffold( body: PublishTour());

    } else {

      return Scaffold( 

        appBar: AppBar(title: Text("Publicação"),),
        body: Publish(),
      );
    }
  }
}

class PublishTour extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget> [
        PageView(
          children: <Widget> [
            TourItemWidget(textContent: "Walkthrough1 one"),
            TourItemWidget(textContent: "Walkthrough2 two"),
            TourItemWidget(textContent: "Walkthrough3 three"),
          ],
          onPageChanged: (value) {
            
          },
        ),
      ],
    );
  }
}