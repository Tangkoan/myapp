import 'package:flutter/material.dart';
import 'package:homework_four/constant.dart';

class MovieScreen extends StatelessWidget {
  MovieScreen({super.key});
  var _lstImageMovies = [
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/cMD9Ygz11zjJzAovURpO75Qg7rT.jpg',
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/mztdt3y6GBsJR69zHtszFezTCLT.jpg',
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/j886YEkIUsiImY53px5VHKD4lRa.jpg',
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/z1p34vh7dEOnLDmyCrlUVLuoDzd.jpg',
  ];
  var _lstImageMoviestwo = [
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/z1p34vh7dEOnLDmyCrlUVLuoDzd.jpg',
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/j886YEkIUsiImY53px5VHKD4lRa.jpg',
    'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/mztdt3y6GBsJR69zHtszFezTCLT.jpg',
  ];
  var _lstCategories = [
    'All',
    'Action',
    'Comedy',
    'Anime',
    'Super Santai',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            // set height , wrap Expanded widget , flexible
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  PageView.builder(
                    itemCount: _lstImageMovies.length,
                    itemBuilder: (context,index){
                      var img = _lstImageMovies[index];
                      return Image.network(
                        img,
                        fit: BoxFit.cover,
                      );
                    },
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    left: 0,
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: _lstImageMovies.map((e) => Container(
                        margin: EdgeInsets.only(
                          right: 10,
                        ),
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.red,
                          shape: BoxShape.circle,
                        ),
                      ),
                      ).toList(),
                    ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10),
                    child: Text("Categories",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
        
                    ),
                  ),
                  Container(
                    height: 40,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _lstCategories.length,
                      itemBuilder: (context,index){
                          return Container(
                            alignment: Alignment.center,
                            margin: EdgeInsets.only(
                              right: 10
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: kButtonPrimaryColor,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 20),
                              child: Text(_lstCategories[index],
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          );
                      },
                    ),
                  )
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Most Popular",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  TextButton(
                      onPressed: (){},
                      child: Text(
                        "See All",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 10,
              ),
              child: SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _lstImageMovies.length,
                  itemBuilder: (context,index){
                    var img = _lstImageMovies[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          img,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Lates Movies",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  TextButton(
                    onPressed: (){},
                    child: Text(
                      "See All",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 10,
              ),
              child: SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _lstImageMoviestwo.length,
                  itemBuilder: (context,index){
                    var img = _lstImageMoviestwo[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          img,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ]
        ),
      ),
      bottomNavigationBar:  BottomNavigationBar(
        backgroundColor: NBackgroundColor,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.search_rounded),
            label: 'Search',
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.share_outlined),
            label: 'Share',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.downloading_rounded),
              label: 'Download',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
      ),
    );
  }
}
