import 'package:flutter/material.dart';

class SearchForm extends StatefulWidget {
  const SearchForm({super.key});

  @override
  State<SearchForm> createState() => _SearchFormState();
}

class _SearchFormState extends State<SearchForm> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

void updateList(String value) {
  //Filter function
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            'Search a golf course',
            style: TextStyle(
              color: Colors.black,
              fontSize: 14,
              fontFamily: 'Mulish',
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
          SizedBox(height: 10),
          TextField(
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
              filled: true,
              fillColor: Colors.blueAccent,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.0),
                borderSide: BorderSide.none,
              ),
              hintText: 'eg: Mountain, Florest',
              prefixIcon: Image.asset('assets/search.png'),
              prefixIconColor: Colors.grey,
            ),
          ),
          SizedBox(),
        ],
      ),
    ),
  );
}
