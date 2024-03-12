// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert' as convert;

// import 'package:ite52024/models/products.dart';
// import 'package:ite52024/widgets/productcard.dart';

// class HomeAPI extends StatefulWidget {
//   const HomeAPI({super.key});

//   @override
//   State<HomeAPI> createState() => _HomeAPIState();
// }

// class _HomeAPIState extends State<HomeAPI> {
//   List<CProducts> myProducts = [];

//   @override
//   void initState() {
// // TODO: implement initState
//     super.initState();
//     loadData();
//   }

//   Future<void> loadData() async {
//     var response = await http.get(Uri.parse(
//         "https://www.themealdb.com/api/json/v1/1/filter.php?a=Indian"));
//     if (response.statusCode == 200) {
//       print(response.body);
//       var jsonResponse =
//           convert.jsonDecode(response.body) as Map<String, dynamic>;
//       List<CProducts> fromJson = [];
//       for (var i = 0; i < jsonResponse['meals'].length; i++) {
// // Meals ulam = Meals(i,jsonResponse['meals'][i]['strMeal'], jsonResponse['meals'][i]['strMealThumb']);
//         CProducts oneProduct = CProducts(
//             id: i.toString(),
//             name: jsonResponse['meals'][i]['strMeal'],
//             picture: jsonResponse['meals'][i]['strMealThumb'],
//             price: 0);
//         fromJson.add(oneProduct);
//       }
// // print(fromJson);
//       setState(() {
//         myProducts = fromJson;
//       });
//     } else {
//       print('Request failed with status: ${response.statusCode}.');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Home API"),
//       ),
//       body: SingleChildScrollView(
//         scrollDirection: Axis.vertical,
//         child: Wrap(
//           alignment: WrapAlignment.center,
//           crossAxisAlignment: WrapCrossAlignment.start,
//           direction: Axis.horizontal,
//           children: myProducts.map((oneProduct) {
//             return ProductCard(myProducts: oneProduct);
//           }).toList(),
//         ),
//       ),
//     );
//   }
// }
