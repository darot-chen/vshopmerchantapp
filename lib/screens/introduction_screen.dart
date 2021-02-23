import 'package:flutter/material.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:vtenhappmerchant/configs/introduction_config.dart';
import 'package:vtenhappmerchant/extensions/list_map_with_index_extension.dart';
import 'package:vtenhappmerchant/screens/app_bar_main_screen.dart';
import 'package:vtenhappmerchant/storages/main_screen_storage.dart';

class IntroductionScreen extends StatelessWidget {
  // Function goToTab;
  final List<Slide> slides = IntroductionConfig.sliders();

  @override
  Widget build(BuildContext context) {
    return IntroSlider(
      slides: slides,

      renderSkipBtn: Text(
        'SKIP',
        style: TextStyle(color: Theme.of(context).accentColor),
      ),
      highlightColorSkipBtn: null,

      renderPrevBtn: Text('PREV'),

      // Next button
      renderNextBtn: Icon(
        Icons.navigate_next,
        color: Theme.of(context).accentColor,
        size: 30.0,
      ),

      colorPrevBtn: Theme.of(context).errorColor,
      highlightColorPrevBtn: Theme.of(context).errorColor,

      // Done button
      renderDoneBtn: Text(
        'DONE',
        style: TextStyle(color: Theme.of(context).accentColor),
      ),
      onDonePress: () async {
        var landingStorage = MainScreenStorage();
        await landingStorage.setValue(true);
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(
            builder: (_) => AppBarMainScreen(),
          ),
        );
      },
      // Dot indicator
      colorDot: Colors.black54,
      sizeDot: 8.0,
      typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,

      // Tabs
      listCustomTabs: slides.mapWithIndex(
        (e, index) => _renderTabItem(e, index, context: context),
      ),
      backgroundColorAllSlides: Colors.white,

      // Show or hide status bar
      shouldHideStatusBar: true,

      // On tab change completed
      onTabChangeCompleted: (index) {
        print('tab change with index: $index');
      },
    );
  }

  Widget _renderCallToActionLastSlide(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FlatButton(
            onPressed: () {
              print('Sigin');
            },
            child: Text(
              'Signin',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
          OutlineButton(
            color: Theme.of(context).accentColor,
            onPressed: () {
              print('Register');
            },
            child: Text(
              ' Register ',
              style: TextStyle(
                fontSize: 18.0,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _renderTabItem(Slide slide, int index, {@required BuildContext context}) {
    bool isLastSlide = index == slides.length - 1;

    return Container(
      width: double.infinity,
      height: double.infinity,
      child: Container(
        child: ListView(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 120.0, bottom: 30.0),
              child: Text(
                slide.title,
                style: slide.styleTitle,
                textAlign: TextAlign.center,
              ),
              // margin: EdgeInsets.only(top: 20.0),
            ),
            GestureDetector(
              child: Container(
                height: 300,
                padding: EdgeInsets.only(left: 20.0, right: 20.0, bottom: 30.0),
                child: Image.asset(
                  slide.pathImage,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 40.0, right: 40.0),
              child: Text(
                slide.description,
                style: slide.styleDescription,
                textAlign: TextAlign.center,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              margin: EdgeInsets.only(top: 10.0),
            ),
            if (isLastSlide) _renderCallToActionLastSlide(context)
          ],
        ),
      ),
    );
  }
}
