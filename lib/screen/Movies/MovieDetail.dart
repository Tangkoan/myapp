import 'package:flutter/material.dart';
import 'package:homework_four/constant.dart';

class MovieDetail extends StatelessWidget {
  const MovieDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.35,
              child: Stack(
                  children: <Widget>[
                    Image.network(
                      width: MediaQuery.of(context).size.width *1,
                      fit: BoxFit.cover,
                      'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/mztdt3y6GBsJR69zHtszFezTCLT.jpg',
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(0.5),
                            ),
                            child: IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.arrow_back_ios_new_outlined)),
                          ),
                          Spacer(),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(0.5),
                            ),
                            child: IconButton(onPressed: (){},
                                icon: Image.asset("assets/icons/retweet.png",width: 24,height: 24,)),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(0.5),
                            ),
                            child: IconButton(onPressed: (){},
                                icon: Image.asset("assets/icons/share.png",width: 24,height: 24,)),
                          ),
                        ],
                      ),
                    ),
                  ]
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                children: [
                  Text("The Acolyte",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 26,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Text("2019 Adventure, Comedy 2h 8min",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 80,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(kButtonPrimaryColor),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.play_arrow,color: Colors.white,),
                            Text("Play",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.only(left: 8.0),
                      height: 50,
                      child: ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(DButtonPrimaryColor),
                        ),
                        onPressed: () {},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.download,color: Colors.white,),
                            Text("Download",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Text("Aladdin a street boy who fails in love."
                          "with differences in caste and weaith. Aladding tries to find a way to become price...",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              bottom: BorderSide(
                                  width: 2,
                              color: kButtonPrimaryColor),
                          ),
                      ),
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: (){},
                              child: Text("Episode",
                                style: TextStyle(
                                  color: kButtonPrimaryColor,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: (){},
                              child: Text("Slimiliar",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        child: Row(
                          children: [
                            TextButton(
                              onPressed: (){},
                              child: Text("About",
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Card(
                child: Container(
                  width: double.infinity,
                  height: 170,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: NBackgroundColor,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)
                          ),
                          child: Row(
                            children: [
                              Image.network(
                                'https://www.themoviedb.org/t/p/w600_and_h900_bestv2/mztdt3y6GBsJR69zHtszFezTCLT.jpg',
                              )
                            ],
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
                            child: Row(
                              children: [
                                Text("Trailer",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                                SizedBox(
                                  width: 140,
                                ),
                                Image.asset("assets/icons/download.png",width: 24,height: 24,color: Colors.white,)],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Container(
                              width: 220,
                              height: 80,
                              child: Row(
                                children: [
                                  Text("Aladdin,a street boy who faills in love with a princess.whit differnces in caste and wealth, Aladdin tries to find..")
                                ],
                              ),
                            ),
                          ),
                
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
