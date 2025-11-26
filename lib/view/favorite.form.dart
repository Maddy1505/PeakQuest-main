import 'package:flutter/material.dart';
import 'package:login_page/view/widgets/bottomnavigation.dart';

class FavoriteForm extends StatelessWidget {
  final int initialIndex;
  FavoriteForm({super.key, this.initialIndex=1});
  late final ValueNotifier<int> selectedIndex = ValueNotifier<int>(initialIndex);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(

          padding: EdgeInsets.all(20),
          scrollDirection: Axis.vertical,

          child: Column(
            children: [
              Center(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "assets/images/Mount.jpg",
                        height: 250,
                        width: 350,
                        fit: BoxFit.cover,
                      ),
                    ),

                    // 🔹 ONLY THE ICON MOVED TO RIGHT
                    Container(
                      padding: EdgeInsets.only(left: 20.0, right: 25.0),
                      margin: EdgeInsets.only(top: 20.0),
                      width: 350,                                         //  needed to align icon inside full width
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,    //  ICON RIGHT
                            children: [
                              Container(
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(60),
                                ),
                                child: Icon(
                                  Icons.favorite_outline,
                                  color: Color.fromARGB(255, 74, 73, 73),
                                  size: 20.0,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 130.0),

                          // 🔹 TEXT stays left
                          Text(
                            "Mount Fuji",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Text(
                            "Tokyo",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20.0),

              /* Second Image Card 2 */

              Center(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "assets/images/ladakh-woman.jpg",
                        height: 250,
                        width: 350,
                        fit: BoxFit.cover,
                      ),
                    ),

                    // 🔹 ONLY THE ICON MOVED TO RIGHT
                    Container(
                      padding: EdgeInsets.only(left: 20.0, right: 25.0),
                      margin: EdgeInsets.only(top: 20.0),
                      width: 350,                                         //  needed to align icon inside full width
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,    //  ICON RIGHT
                            children: [
                              Container(
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(60),
                                ),
                                child: Icon(
                                  Icons.favorite_outline,
                                  color: Color.fromARGB(255, 74, 73, 73),
                                  size: 20.0,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 130.0),

                          // 🔹 TEXT stays left
                          Text(
                            "Everest Base Camp",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Text(
                            "Nepal",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20.0),

              /* Second Image Card 3 */

              Center(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "assets/images/eifel-tower.jpg",
                        height: 250,
                        width: 350,
                        fit: BoxFit.cover,
                      ),
                    ),

                    /* ONLY THE ICON MOVED TO RIGHT */

                    Container(
                      padding: EdgeInsets.only(left: 20.0, right: 25.0),
                      margin: EdgeInsets.only(top: 20.0),
                      width: 350,                                         //  needed to align icon inside full width
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,     //  ICON RIGHT
                            children: [
                              Container(
                                padding: EdgeInsets.all(10.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(60),
                                ),
                                child: Icon(
                                  Icons.favorite_outline,
                                  color: Color.fromARGB(255, 74, 73, 73),
                                  size: 20.0,
                                ),
                              ),
                            ],
                          ),

                          SizedBox(height: 130.0),

                          // 🔹 TEXT stays left
                          Text(
                            "Eiffel Tower",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            ),
                          ),
                          Text(
                            "Paris",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
              SizedBox(height: 20.0),


            ],
          ),


        ),



      ),
      /* BottomNavigationBar */

      bottomNavigationBar: Padding(
        padding:  EdgeInsets.only(bottom: 20),
        child: BottomNavigation(initialIndex: 1),
      ),


    );
  }
}
