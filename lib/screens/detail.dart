import 'package:flutter/material.dart';
import 'package:movie_catalog/constants.dart';
import 'package:movie_catalog/models/movie.dart';

class Detail extends StatelessWidget {
  final Movie movie;
  const Detail({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBlue,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          Image.asset(
            movie.image,
            height: 300,
            fit: BoxFit.cover,
          ),
          Container(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: Text(
                            movie.name,
                            style: TextStyle(
                              fontFamily: 'Poppins-SemiBold',
                              color: semiBlack,
                              fontSize: 25,
                            ),
                          ),
                        ),
                        Text(
                          'Score : ' + movie.score.toString(),
                          style: TextStyle(
                            color: darkGrey,
                            fontSize: 16,
                            fontFamily: 'Poppins-Light',
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Text(
              movie.desc,
              style: TextStyle(
                fontFamily: 'Poppins-Light',
                color: darkGrey,
              ),
              softWrap: true,
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}
