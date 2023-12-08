import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Models/Movie.dart';
import 'Widget/MovieWidget.dart';

class HomePageMovie extends StatefulWidget {
  @override
  _HomePageMovie createState() => _HomePageMovie();
}

class _HomePageMovie extends State<HomePageMovie> {
  // ignore: deprecated_member_use
  List<Movie> _movies = <Movie>[];

  @override
  void initState() {
    super.initState();
    _populateAllMovies();
  }

  void _populateAllMovies() async {
    final movies = await _fetchAllMovies();
    setState(() {
      _movies = movies;
    });
  }

  Future<List<Movie>> _fetchAllMovies() async {
    final response = await http.get(
        Uri.parse("http://www.omdbapi.com/?s=Batman&page=2&apikey=564727fa"));

    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      Iterable list = result["Search"];
      return list.map((movie) => Movie.fromJson(movie)).toList();
    } else {
      throw Exception("Failed to load movies!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Movies"),
          elevation: 0.0,
          backgroundColor: Colors.white,
          centerTitle: true,
        ),
        body: MoviesWidget(movies: _movies));
  }
}
