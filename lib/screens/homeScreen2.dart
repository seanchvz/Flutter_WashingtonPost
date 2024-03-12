// import 'package:flutter/material.dart';
// import 'package:chavez_1_login/models/meals.dart';
// // import 'package:flutter01/shared/constants.dart';
// // import 'package:flutter01/shared/mealCards.dart';
// import 'dart:convert' as convert;
// import 'package:http/http.dart' as http;

// class HomeScreen2 extends StatefulWidget {
//   HomeScreen2({Key? key}) : super(key: key);

//   @override
//   State<HomeScreen2> createState() => _HomeScreen2State();
// }

// class _HomeScreen2State extends State<HomeScreen2> {
//   List<Meals> meals = [];

//   @override
//   void initState() {
//     super.initState();
//     loadData();
//   }

//   Future<void> loadData() async {
//     var url = Uri.parse("https://www.themealdb.com/api/json/v1/1/filter.php?c=Beef");
//     var response = await http.get(url);
//     if (response.statusCode == 200) {
//       var jsonResponse = convert.jsonDecode(response.body) as Map<String, dynamic>;
//       List<Meals> fromJson = [];
//       for (var i = 0; i < jsonResponse['meals'].length; i++) {
//         Meals ulam = Meals(
//           i,
//           jsonResponse['meals'][i]['strMeal'],
//           jsonResponse['meals'][i]['strMealThumb'],
//         );
//         fromJson.add(ulam);
//       }
//       setState(() {
//         meals = fromJson;
//       });
//     } else {
//       print('Request failed with status: ${response.statusCode}.');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: uiColors,
//         title: const Text("Load to List"),
//         elevation: 0,
//       ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Wrap(
//           alignment: WrapAlignment.center,
//           crossAxisAlignment: WrapCrossAlignment.center,
//           direction: Axis.horizontal,
//           children: meals.map((one_meal) {
//             return MealCards(meal: one_meal);
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
