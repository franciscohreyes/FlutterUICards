import 'package:flutter/material.dart';

class ListDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(16),
              child: Stack(
                children: <Widget>[
                  Card(
                    elevation: 12,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    color: Colors.white,
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 24.0, vertical: 36),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                          colors: [Color(0xFF213B6C), Color(0xFF0059A5)]
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          FlutterLogo(size: 48),
                          SizedBox(
                            width: 16,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(
                                  'House of Cards',
                                  style: Theme.of(context)
                                  .textTheme
                                  .headline5
                                  .copyWith(color: Colors.white),
                                ),
                                Text('House of Cards es una serie estadounidense de televisión web de drama político creada por Beau Willimon.',
                                  style: Theme.of(context)
                                  .textTheme
                                  .headline6
                                  .copyWith(color: Colors.white)
                                ),
                              ],
                            ),
                          ),
                          Icon(
                            Icons.navigate_next,
                            size: 36,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 8,
                    // left: 8,
                    top: 8,
                    child: Icon(
                      Icons.favorite,
                      size: 32,
                      color: Colors.pink,
                    ),
                  ),
                ],
              ),
            );
          }),
      ),
    );
  }
}