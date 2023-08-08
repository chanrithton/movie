import 'package:flutter/material.dart';
import 'package:movie/screens/detail_movie.dart';

class MovieDetailScreen extends StatefulWidget {
  const MovieDetailScreen({super.key});

  // var listImage = [
  //   "https://m.media-amazon.com/images/I/81KdmiQh+jL._AC_UF894,1000_QL80_.jpg",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXkgqSCVOAdJV_mkiGd5jt9vhplIAZeOeQgg&usqp=CAU",
  //   "https://i.ytimg.com/vi/m5r0GYgDmiU/movieposter_en.jpg",
  //   "https://cdn.marvel.com/content/1x/antmanandthewaspquantumania_lob_crd_03.jpg",
  //   "https://i1.wp.com/raisingwhasians.com/wp-content/uploads/2018/02/Black-panther-movie-review-safe-for-kids.jpg",
  //   "https://www.justwatch.com/images/poster/301752151/s332/bhediya",
  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSy8rm03uCesJ5yC5fhRralNJmawcBttGtINQ&usqp=CAU",
  //   "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:oi-discovery-catalog@@icons@@like_202006280402.png,ox-24,oy-617,ow-29:q-80/et00337077-hpdszpszml-portrait.jpg",
  //   "https://m.media-amazon.com/images/M/MV5BZDFjYjdlODItN2MzMC00YzgxLWJiMDktOTI3MGQyOGY2YmQxXkEyXkFqcGdeQXVyMTIwMjY0NjQz._V1_FMjpg_UX1000_.jpg",
  //   "https://asianwiki.com/images/8/84/Soul_Mate_Korean_Movie-p2.jpg",
  //   "https://resizing.flixster.com/scSP_rQ9yFiBxoXqIk6_gGjpgpw=/206x305/v2/https://resizing.flixster.com/JH4n6n1XT3UqIo9gFEbNka4AFWQ=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzL2E1OTRkNzEwLTJiY2ItNGFkNS1iNTU3LTJjNzZlZWI4YzU1MC5qcGc=",
  // ];

  @override
  State<MovieDetailScreen> createState() => _MovieDetailScreenState();
}

class _MovieDetailScreenState extends State<MovieDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "show all movie".toUpperCase(),
          style: const TextStyle(fontSize: 22, color: Colors.black),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(7.0),
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
                  builder: (context) => const MovieDetailScreens()));
          //  debugPrint("Click");
        },
        child: Padding(
          padding: const EdgeInsets.all(6.0),
          child: SizedBox(
            width: 600,
            height: double.infinity,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  // when you across phone
                  crossAxisCount:
                      MediaQuery.of(context).orientation == Orientation.portrait
                          ? 2
                          : 4,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 10.0,

                  // set wight and hieht
                  childAspectRatio: 0.7),
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 120,
                    width: 100,
                    color: Colors.pink,
                    child: Image.network(
                      "https://m.media-amazon.com/images/I/81KdmiQh+jL._AC_UF894,1000_QL80_.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    height: 120,
                    width: 100,
                    color: Colors.black,
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXkgqSCVOAdJV_mkiGd5jt9vhplIAZeOeQgg&usqp=CAU",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 100,
                    height: 120,
                    color: Colors.blue,
                    child: Image.network(
                      "https://i.ytimg.com/vi/m5r0GYgDmiU/movieposter_en.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 100,
                    height: 120,
                    color: Colors.green,
                    child: Image.network(
                      "https://cdn.marvel.com/content/1x/antmanandthewaspquantumania_lob_crd_03.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 100,
                    height: 120,
                    color: Colors.blue,
                    child: Image.network(
                      "https://i1.wp.com/raisingwhasians.com/wp-content/uploads/2018/02/Black-panther-movie-review-safe-for-kids.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 100,
                    height: 120,
                    color: Colors.green,
                    child: Image.network(
                      "https://www.justwatch.com/images/poster/301752151/s332/bhediya",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 100,
                    height: 120,
                    color: Colors.green,
                    child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSy8rm03uCesJ5yC5fhRralNJmawcBttGtINQ&usqp=CAU",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 100,
                    height: 120,
                    color: Colors.blue,
                    child: Image.network(
                      "https://assets-in.bmscdn.com/discovery-catalog/events/tr:w-400,h-600,bg-CCCCCC:w-400.0,h-660.0,cm-pad_resize,bg-000000,fo-top:oi-discovery-catalog@@icons@@like_202006280402.png,ox-24,oy-617,ow-29:q-80/et00337077-hpdszpszml-portrait.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 100,
                    height: 120,
                    color: Colors.green,
                    child: Image.network(
                      "https://m.media-amazon.com/images/M/MV5BZDFjYjdlODItN2MzMC00YzgxLWJiMDktOTI3MGQyOGY2YmQxXkEyXkFqcGdeQXVyMTIwMjY0NjQz._V1_FMjpg_UX1000_.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 100,
                    height: 120,
                    color: Colors.green,
                    child: Image.network(
                      "https://asianwiki.com/images/8/84/Soul_Mate_Korean_Movie-p2.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 100,
                    height: 120,
                    color: Colors.blue,
                    child: Image.network(
                      "https://resizing.flixster.com/scSP_rQ9yFiBxoXqIk6_gGjpgpw=/206x305/v2/https://resizing.flixster.com/JH4n6n1XT3UqIo9gFEbNka4AFWQ=/ems.cHJkLWVtcy1hc3NldHMvbW92aWVzL2E1OTRkNzEwLTJiY2ItNGFkNS1iNTU3LTJjNzZlZWI4YzU1MC5qcGc=",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 100,
                    height: 120,
                    color: Colors.green,
                    child: Image.network(
                      "https://www.gscmovies.com.my/wp-content/uploads/2022/09/LDTM-GSCMPoster-1-ePost-768x1280.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
