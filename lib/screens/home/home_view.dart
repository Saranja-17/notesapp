import 'dart:math';

import 'package:flutter/material.dart';
import 'package:notesapp/screens/home/home_view_model.dart';
import 'package:notesapp/screens/work/work_view.dart';
import 'package:notesapp/themes/brand_theme.dart';
import 'package:stacked/stacked.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) =>
      ViewModelBuilder<HomeViewModel>.reactive(
          viewModelBuilder: () => HomeViewModel(),
          builder: (context, model, child) => SafeArea(
                  child: Scaffold(
                backgroundColor: BrandTheme.keydark,
                appBar: AppBar(
                  leading: IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {},
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search your notes',
                      hintStyle: TextStyle(
                        color: BrandTheme.keyLight,
                        //fontStyle: FontStyle.italic,
                      ),
                    ),
                  ),
                  actions: const [
                    Padding(
                      padding: EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        backgroundImage: AssetImage('assets/user2.png'),
                        radius: 30,
                      ),
                    )
                  ],
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(30), top: Radius.circular(30)),
                  ),
                  backgroundColor: BrandTheme.keylight_black,
                ),
                body: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            width: 80.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(
                                color: BrandTheme.keylight_light,
                                width: 0.2,
                              ),
                              color: BrandTheme.keylight_light,
                            ),
                            child: Center(
                              child: Text('All',
                                  style: TextStyle(
                                    color: BrandTheme.keydark,
                                  )),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              // Handle tap gesture
                              Navigator.pushNamed(context, WorkView.routeName);
                            },
                            child: Container(
                              width: 80.0,
                              height: 40.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15.0),
                                border: Border.all(
                                  color: BrandTheme.keylight_light,
                                  width: 0.2,
                                ),
                              ),
                              child: Center(
                                child: Text('Work',
                                    style: TextStyle(
                                      color: BrandTheme.keyLight,
                                    )),
                              ),
                            ),
                          ),
                          Container(
                            width: 80.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(
                                color: BrandTheme.keylight_light,
                                width: 0.2,
                              ),
                            ),
                            child: Center(
                              child: Text('Reading',
                                  style: TextStyle(
                                    color: BrandTheme.keyLight,
                                  )),
                            ),
                          ),
                          Container(
                            width: 80.0,
                            height: 40.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              border: Border.all(
                                color: BrandTheme.keylight_light,
                                width: 0.2,
                              ),
                            ),
                            child: Center(
                              child: Text('Important',
                                  style: TextStyle(
                                    color: BrandTheme.keyLight,
                                  )),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      Expanded(
                        child: GridView.builder(
                            shrinkWrap: true,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    childAspectRatio: 0.5,
                                    crossAxisSpacing: 30,
                                    mainAxisSpacing: 20),
                            itemCount: 8,
                            itemBuilder: (BuildContext context, int index) =>
                                _NoteCard()),
                      )
                    ],
                  ),
                ),
                bottomNavigationBar: BottomAppBar(
                  color: BrandTheme.keylight_black,
                  elevation: 10.0,
                  //height: 40,
                  shape: const CircularNotchedRectangle(),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(55.0, 10.0, 55.0, 10.0),
                    child: SizedBox(
                      height: 40.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Image.asset(
                              'assets/margin.png',
                              color: BrandTheme.keyLight,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Image.asset(
                              'assets/image.png',
                              color: BrandTheme.keyLight,
                            ),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                resizeToAvoidBottomInset: false,
                floatingActionButton: SizedBox(
                  width: 80.0,
                  height: 80.0,
                  child: FloatingActionButton(
                    backgroundColor: BrandTheme.keylight_black,
                    onPressed: () {},
                    shape: CircleBorder(
                      side: BorderSide(
                        color: BrandTheme.keydark,
                        width: 4.0,
                      ),
                    ),
                    child: Image.asset(
                      'assets/edit-text.png',
                      width: 20.0,
                      height: 20.0,
                      color: BrandTheme.keyLight,
                    ),
                  ),
                ),
                floatingActionButtonLocation:
                    FloatingActionButtonLocation.centerDocked,
              )));
}

class _NoteCard extends ViewModelWidget<HomeViewModel> {
  @override
  Widget build(BuildContext context, HomeViewModel viewModel) => Container(
        //width: 150.0,
        height: 150.0,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(
            color: BrandTheme.keylight_light,
            width: 0.2,
          ),
          color: const Color(0xffFCC8D1),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50.0),
                child: Image.asset(
                  'assets/t.png',
                  width: 350,
                  height: 150,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Book covers',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'You’ve penned the next great page-turner.Or maybe you discovered the next Hemingway.',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 15,
                //fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      );
}
