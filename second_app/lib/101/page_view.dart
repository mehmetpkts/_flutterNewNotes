import 'package:flutter/material.dart';
import 'package:second_app/101/scaffold_learn.dart';
import 'package:second_app/demos/note_demos.dart';
import 'package:second_app/demos/stack_demo_view.dart';

class PageViewWidget extends StatefulWidget {
  const PageViewWidget({super.key});

  @override
  State<PageViewWidget> createState() => _PageViewWidgetState();
}

class _PageViewWidgetState extends State<PageViewWidget> {
  int _currentPageIndex = 0;
  void _updatePageIndex(int index) {
    setState(() {
      _currentPageIndex = index;
    });
  }

  final _pageController = PageController(viewportFraction: _UsedNumbers._viewportNumber);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Scaffold(
        // appBar: AppBar(),
        floatingActionButton: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(_UsedNumbers._paddingNumber),
              child: Container(
                color: Colors.green,
                child: Text(
                  _currentPageIndex.toString(),
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
              ),
            ),
            const Spacer(),
            FloatingActionButton(
              onPressed: () {
                _pageController.previousPage(
                    duration: _DurationUtility._durationUtility, curve: _CurveUtulity._curveUtulity);
              },
              child: const Icon(Icons.chevron_left),
            ),
            FloatingActionButton(
              onPressed: () {
                _pageController.nextPage(
                    duration: _DurationUtility._durationUtility, curve: _CurveUtulity._curveUtulity);
              },
              child: const Icon(Icons.chevron_right),
            ),
          ],
        ),
        body: PageView(
          // bu component img'lerde ve birden fazla sayfa atanmak istediğinde kullanılır.

          padEnds: false,

          controller: _pageController, // bu da yandaki sayfanın ön izlemesini gösterir.

          onPageChanged: _updatePageIndex,

          children: const [
            // Container(
            //   color: Colors.red,
            // ),
            // Container(
            //   color: Colors.blue,            // bu şekilde fotolarda koyulabilir
            // ),
            // Container(
            //   color: Colors.yellow,
            // ),

            NoteDemosView(),
            StackDemoViewWidget(), // bu şekilde yapmış olduğumuz sayfalarda
            ScaffoldLearnView(),
          ],
        ),
      ),
    );
  }
}

class _DurationUtility {
  static const _durationUtility = Duration(seconds: 1);
}

class _CurveUtulity {
  static const _curveUtulity = Curves.slowMiddle;
}

class _UsedNumbers {
  static const double _paddingNumber = 20;
  static const double _viewportNumber = 0.7;
}
