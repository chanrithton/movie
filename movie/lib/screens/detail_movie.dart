import 'package:flutter/material.dart';

class MovieDetailScreens extends StatefulWidget {
  const MovieDetailScreens({super.key});

  @override
  State<MovieDetailScreens> createState() => _MovieDetailScreensState();
}

class _MovieDetailScreensState extends State<MovieDetailScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actions: const [Icon(Icons.back_hand)],
      // ),
      body: GestureDetector(
        // onTap: () {
        //   Navigator.push(
        //       context, MaterialPageRoute(builder: (context) => PageView()));
        // },
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 400,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 234, 231, 231)),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    SizedBox(
                      // color: Colors.transparent,
                      height: 250,
                      width: double.infinity,
                      child: Image.network(
                        "https://static01.nyt.com/images/2023/05/01/multimedia/01supermario-1-cjwz/01supermario-1-cjwz-superJumbo.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                      bottom: -1,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20.0, vertical: 20.0),
                            child: Row(
                              children: [
                                SizedBox(
                                  height: 220,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(10),
                                    child: Image.network(
                                      "https://pbs.twimg.com/media/FtJXWsnWIAEoMAa.jpg:large",
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 220,
                            width: MediaQuery.of(context).size.width * 0.5,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Row(
                                      children: const [
                                        Icon(Icons.star,
                                            size: 20, color: Colors.white),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "7.1",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white),
                                        ),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text(
                                          "(4123 Reviews)",
                                          style: TextStyle(
                                              fontSize: 13,
                                              color: Colors.white),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.watch_later_outlined,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "27 May 2023",
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.white),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Row(
                                  children: const [
                                    Icon(
                                      Icons.calendar_month,
                                      size: 20,
                                      color: Colors.white,
                                    ),
                                    Text(
                                      "27 May 2023",
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.white),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10.0, vertical: 10.0),
                                  // color: Colors.red,
                                  margin: const EdgeInsets.only(top: 50),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: SizedBox(
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: const [
                                              Icon(Icons.add_circle_outline),
                                              Text(
                                                "Watchlist",
                                                style: TextStyle(
                                                    fontSize: 10,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Icon(Icons.favorite_border),
                                            Text(
                                              "Favorite",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: const [
                                            Icon(Icons.share_outlined),
                                            Text(
                                              "Share",
                                              style: TextStyle(
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.bold,
                                                  color: Colors.white),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                child: const Padding(
                  padding: EdgeInsets.all(9.0),
                  child: Text(
                    "Overview",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const Text(
                "Super Mario Bros is a platform game. In the game, Mario must race through the Mushroom Kingdom and save Princess Toadstool (later Princess Peach) from Bowser. Mario jumps, runs, and walks across each level. The worlds are full of enemies and platforms, and open holes.",
                style: TextStyle(fontSize: 18, color: Colors.black),
                textAlign: TextAlign.start,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "Cast",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.black),
                          ),
                          Text(
                            "view all",
                            style: TextStyle(fontSize: 20, color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: const [
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes-thumbnail.png",
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes-thumbnail.png",
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes-thumbnail.png",
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes-thumbnail.png",
                              ),
                            ),
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes-thumbnail.png",
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                "https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes-thumbnail.png",
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
