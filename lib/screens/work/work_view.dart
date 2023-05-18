import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:notesapp/screens/work/work_view_model.dart';
import 'package:notesapp/themes/brand_theme.dart';
import 'package:stacked/stacked.dart';
import 'dart:math';
import '../../themes/brand_theme.dart';

class WorkView extends StatelessWidget {
  static String routeName = 'workview';
  const WorkView({super.key});

  @override
  Widget build(BuildContext context) =>
      ViewModelBuilder<WorkViewModel>.reactive(
        viewModelBuilder: () => WorkViewModel(),
        builder: (context, model, _) => SafeArea(
          child: Scaffold(
            backgroundColor: BrandTheme.keydark,
            appBar: AppBar(
              leading: IconButton(
                icon: Icon(Icons.check),
                onPressed: () {
                  // do something
                },
              ),
              actions: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon: Icon(Icons.undo),
                      onPressed: () {
                        // do something
                      },
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    IconButton(
                      icon: Icon(Icons.redo),
                      onPressed: () {
                        // do something
                      },
                    ),
                    SizedBox(
                      width: 110,
                    ),
                    IconButton(
                      icon: Icon(Icons.more_vert),
                      onPressed: () {
                        // do something
                      },
                    ),
                  ],
                ),
              ],
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30), top: Radius.circular(30)),
              ),
              backgroundColor: BrandTheme.keylight_black,
            ),
            body: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                children: [
                  const TextField(
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                    decoration: InputDecoration(
                        hintText: 'Enter text',
                        hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                        border: InputBorder.none,
                        fillColor: Colors.blue),
                  ),
                  const TextField(
                    //maxLines: 3,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    decoration: InputDecoration(
                      //contentPadding: EdgeInsets.symmetric(vertical: 10),
                      hintText: 'Enter text',
                      hintStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30.0),
                    child: Image.network(
                      'https://p7.hiclipart.com/preview/13/757/168/note-taking-paper-notebook-writing-clip-art-writing-free-download-images-thumbnail.jpg',
                      // width: 300,
                      // height: 300,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
}
