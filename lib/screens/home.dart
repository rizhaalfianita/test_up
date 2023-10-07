import 'package:flutter/material.dart';
import 'package:movie_catalog/constants.dart';
import 'package:movie_catalog/models/movie.dart';
import 'package:movie_catalog/screens/detail.dart';

class Home extends StatefulWidget {
  final String nama;

  const Home({
    super.key,
    required this.nama,
  });

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBlue,
        actions: [
          GestureDetector(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
            onTap: () {
              final snackBar = SnackBar(
                  backgroundColor: darkBlue,
                  content: Text(
                    'Hi, ' + widget.nama,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              ListView.builder(
                shrinkWrap: true,
                primary: false,
                itemCount: movies.length,
                itemBuilder: (context, index) =>
                    MoviesCard(movies: movies[index]),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class MoviesCard extends StatelessWidget {
  final Movie movies;
  const MoviesCard({
    Key? key,
    required this.movies,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => Detail(movie: movies)));
      },
      child: Card(
        child: Container(
          margin: EdgeInsets.only(bottom: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: <Widget>[
              Image.asset(
                movies.image,
                height: 100,
                width: 120,
                fit: BoxFit.cover,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 22),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movies.name,
                        style: TextStyle(
                          fontFamily: 'Poppins-Regular',
                          color: darkGrey,
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        movies.genre,
                        style: TextStyle(
                          fontFamily: 'Poppins-Light',
                          color: lightGrey,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
