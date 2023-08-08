import 'package:flutter/material.dart';
import 'package:movie/screens/movie_detail_sceen.dart';

// ignore: must_be_immutable
class MovieApp extends StatelessWidget {
  MovieApp({super.key});
  var listImage1 = [
    "https://static.dc.com/2022-11/Black_Adam_S_DD_KA_TT_3000x3000_300dpi_EN.jpeg?w=1200",
    "https://resizing.flixster.com/MQwHilOB18wHj3daf6qJceM3yic=/206x305/v2/https://resizing.flixster.com/8ZFc4VKwZN8NGV3ZqhCIFCHekxM=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzLzJlNDAyYWUzLWEwZTUtNDVlNy04MDliLTRmZWIzNDMzMzJmYS5qcGc=",
    "https://i.ytimg.com/vi/c7mW2tCd81M/movieposter_en.jpg",
    "https://cdn.shopify.com/s/files/1/0057/3728/3618/products/wandavision.mp_240x360_crop_center.progressive.jpg?v=1614371756",
  ];

  var listImage2 = [
    "https://m.media-amazon.com/images/M/MV5BZDFjYjdlODItN2MzMC00YzgxLWJiMDktOTI3MGQyOGY2YmQxXkEyXkFqcGdeQXVyMTIwMjY0NjQz._V1_FMjpg_UX1000_.jpg",
    "https://www.justwatch.com/images/poster/301752151/s332/bhediya",
    "https://c.ndtvimg.com/2019-10/2uuqsfpg_war-movie-review_625x300_02_October_19.jpg",
    "https://www.sonypictures.com/sites/default/files/styles/max_560x840/public/title-key-art/65_onesheet_1400x2100_he.jpg?itok=FbbE_0lI",
  ];

  var listImage3 = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXU_Au-H7S31FG98NryYIyWtjF4-P4oVu7iw&usqp=CAU",
    "https://static-koimoi.akamaized.net/wp-content/new-galleries/2023/04/the-kerala-story-01.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3rI0uVt3lJqXdtLg3XUNLh1MT1vh0NnPoJQ&usqp=CAU",
    "https://lumiere-a.akamaihd.net/v1/images/p_encanto_homeent_22359_4892ae1c.jpeg",
  ];

  var listImage4 = [
    "https://static.toiimg.com/photo/msid-87360866/87360866.jpg?491524",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDbXMPkT7wV6_At0-g_pNJ8p2mTpPEEebbJD3ed8pGBjmJE8l5UT_LBNpr2-EdNF18Clo&usqp=CAU",
    "https://play-lh.googleusercontent.com/E27TLOS1g3N4BF6oSke_DfT2Kd6VNAtTQfYCt4gKumthqUOPzYDfRz3O-3rUZVR1vGIN7d19FoyhYJe3J2E",
    "https://www.commonsensemedia.org/sites/default/files/styles/ratio_2_3_medium/public/product-images/csm-movie/lightyear-movie-poster.jpeg",
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "THE MOVIE",
            style: TextStyle(fontSize: 20, color: Colors.red),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
          actions: const [
            Padding(
              padding: EdgeInsets.all(6.0),
              child: CircleAvatar(
                radius: 22,
                backgroundImage: NetworkImage(
                  "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes-thumbnail.png",
                ),
              ),
            ),
          ],
        ),
        body: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MovieDetailScreen()));
            //  debugPrint("Click");
          },
          // push scree
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: SingleChildScrollView(
              
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Recommend For You",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text(
                        "Show all",
                        style: TextStyle(color: Colors.blue, fontSize: 17),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: listImage1.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: NetworkImage(
                                    listImage1[index],
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Popular Movies",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Text(
                          "Show all",
                          style: TextStyle(color: Colors.blue, fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: listImage1.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: NetworkImage(listImage2[index]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Text(
                          "Comming Soon",
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Text(
                          "Show all",
                          style: TextStyle(color: Colors.blue, fontSize: 17),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: listImage1.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: NetworkImage(listImage3[index]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Top Rates Movies",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text(
                        "Show all",
                        style: TextStyle(color: Colors.blue, fontSize: 17),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: SizedBox(
                      height: 200,
                      width: double.infinity,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: listImage1.length,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 200,
                              width: 150,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                image: DecorationImage(
                                  image: NetworkImage(listImage4[index]),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
