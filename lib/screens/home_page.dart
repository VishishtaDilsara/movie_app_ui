import 'package:flutter/material.dart';
import 'package:movie_app/components/category_card.dart';
import 'package:movie_app/models/movie_model.dart';
import 'package:movie_app/utils/custom_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<MovieModel> movies = [
    MovieModel(
      image:
          'https://media.themoviedb.org/t/p/w440_and_h660_face/x26MtUlwtWD26d0G0FXcppxCJio.jpg',
      name: 'The Fantastic 4',
      date: 'Jul 22, 2025',
    ),
    MovieModel(
      image:
          'https://media.themoviedb.org/t/p/w440_and_h660_face/yueXS3q8BtoWekcHOATFHicLl3e.jpg',
      name: 'Alien: Earth',
      date: 'Aug 12, 2025',
    ),
    MovieModel(
      image:
          'https://media.themoviedb.org/t/p/w440_and_h660_face/gxCv6kUdywxYzIXX6xYcmX5APUV.jpg',
      name: 'Splitsville',
      date: 'Aug 21, 2025',
    ),
    MovieModel(
      image:
          'https://media.themoviedb.org/t/p/w440_and_h660_face/a40Gi0Zq4Ecqu3obmOp6TSgEne1.jpg',
      name: 'Adulthood',
      date: 'Sep 19, 2025',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome Mark 👋',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Book your favourite movie',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey.shade900,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage('assets/images/profilepic.jpg'),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: size.width * 0.75,

                    child: TextField(
                      decoration: InputDecoration(
                        label: Text(
                          'Search',
                          style: TextStyle(color: Colors.grey.shade600),
                        ),
                        border: UnderlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        fillColor: Colors.grey.shade100,
                        filled: true,
                        prefixIcon: Icon(Icons.search, size: 30),
                      ),
                    ),
                  ),
                  Container(
                    width: size.width * 0.135,
                    height: size.width * 0.135,
                    decoration: BoxDecoration(
                      color: CustomColors.primaryColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Icon(
                      Icons.filter_alt_sharp,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Category',
                    style: TextStyle(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      color: CustomColors.primaryColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CategoryCard(
                    size: size,
                    emoji: '🥰',
                    categoryName: 'Romance',
                  ),
                  CategoryCard(size: size, emoji: '😃', categoryName: 'Comedy'),
                  CategoryCard(size: size, emoji: '😨', categoryName: 'Horror'),
                  CategoryCard(size: size, emoji: '😆', categoryName: 'Drama'),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Latest Movie',
                    style: TextStyle(
                      color: Colors.grey.shade800,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      color: CustomColors.primaryColor,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: movies.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: NetworkImage(movies[index].image),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            movies[index].name,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.grey.shade900,
                            ),
                          ),
                          Text(movies[index].date),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
