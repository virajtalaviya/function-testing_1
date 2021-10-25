// import 'package:flutter/material.dart';
//
// class Screen extends StatelessWidget {
//   const Screen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           TextField(
//             decoration: InputDecoration(
//               prefixIcon: Icon(Icons.person)
//             ),
//           ),
//           TextField(
//             decoration: InputDecoration(
//                 prefixIcon: Icon(Icons.lock_outline)
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'dart:async';
// import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:test2/variables/variable.dart';

//import 'package:http/http.dart' as http;
//import 'package:test2/test/testing.dart';

// Future<Album> fetchAlbum(http.Client client) async {
//   final response = await client
//       .get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
//
//   if (response.statusCode == 200) {
//     // If the server did return a 200 OK response,
//     // then parse the JSON.
//     return Album.fromJson(jsonDecode(response.body));
//   } else {
//     // If the server did not return a 200 OK response,
//     // then throw an exception.
//     throw Exception('Failed to load album');
//   }
// }
//
// class Album {
//   final int userId;
//   final int id;
//   final String title;
//
//   const Album({required this.userId, required this.id, required this.title});
//
//   factory Album.fromJson(Map<String, dynamic> json) {
//     return Album(
//       userId: json['userId'],
//       id: json['id'],
//       title: json['title'],
//     );
//   }
// }

class Screen extends StatefulWidget {
  const Screen({Key? key}) : super(key: key);

  @override
  _ScreenState createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {


  // @override
  // void initState() {
  //   super.initState();
  //   futureAlbum = fetchAlbum(http.Client());
  // }

  void time() {
    setState(() {
      dateTime = DateTime.utc(2003, 5, 3);
    });
  }

  @override
  Widget build(BuildContext context) {
    // Color getColor(Set<MaterialState> states) {
    //   const Set<MaterialState> interactiveStates = <MaterialState>{
    //     MaterialState.pressed,
    //     MaterialState.hovered,
    //     MaterialState.focused,
    //   };
    //   if (states.any(interactiveStates.contains)) {
    //     return Colors.blue;
    //   }
    //   return Colors.red;
    // }
    return Scaffold(
        appBar: AppBar(
          title: const Text('Fetch Data Example'),
        ),
        body: Column(
          children: [
            TextField(
              controller: emailController,
              key: Key("EmailId"),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.person),
              ),
            ),
            TextField(
              controller: passwordController,
              key: Key("Password"),
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
              ),
            ),
            ElevatedButton(
              key: Key("OkButton"),
              onPressed: () {
                setState(() {
                  email = emailController.text;
                  password = passwordController.text;
                });
                print("Ok Done");
              },
              child: Text("OK"),
            ),
            Text("XYZ"),
            Container(
                height: 300,
                width: 300,
                color: Colors.amberAccent,
                child: ListView.builder(

                  itemCount: one.length,
                  itemBuilder: (context, index) => Row(
                    children: [
                      Checkbox(
                          key: Key("CheckButton"),
                          value: isChecked[index],
                          onChanged: (value) {
                            setState(() {
                              isChecked[index] = value!;
                              email = isChecked[index] == true ? one[index] : " ";
                            });
                          }),
                      Text(one[index]),
                    ],
                  ),
                ),
            ),
            // Container(
            //   width: 100,
            //   height: 200,
            //   color: Colors.blue,
            //   child: ListView(
            //     children: [
            //       Text(email)
            //     ],
            //   ),
            // ),
            // Row(
            //   children: [
            //     Checkbox(
            //         value: isChecked,
            //         onChanged: (value) {
            //           setState(() {
            //             isChecked = value!;
            //             email = isChecked == true ? "Email Sent" : " ";
            //           });
            //         }),
            //     Text("One"),
            //   ],
            // ),
            // Row(
            //   children: [
            //     Checkbox(
            //         value: isChecked,
            //         onChanged: (value) {
            //           setState(() {
            //             isChecked = value!;
            //             email = isChecked == true ? "Email Sent" : " ";
            //           });
            //         }),
            //     Text("Two"),
            //   ],
            // ),
            // Row(
            //   children: [
            //     Checkbox(
            //         value: isChecked,
            //         onChanged: (value) {
            //           setState(() {
            //             isChecked = value!;
            //             email = isChecked == true ? "Email Sent" : " ";
            //           });
            //         }),
            //     Text("Three"),
            //   ],
            // ),
            //
            // Row(
            //   children: [
            //     Checkbox(
            //         value: isChecked2,
            //         onChanged: (value) {
            //           setState(() {
            //             isChecked2 = value!;
            //             password = isChecked == true ? "Checked" : " ";
            //           });
            //         }),
            //     Text("Four"),
            //   ],
            // ),
            // Text(email),
            // Text(password),
            // Checkbox(
            //   checkColor: Colors.white,
            //   fillColor: MaterialStateProperty.resolveWith(getColor),
            //   value: isChecked,
            //   onChanged: (bool? value) {
            //     setState(() {
            //       isChecked = value!;
            //     });
            //   },
            // )
            Text(email),
            Text(password),
            // Text(dateTime.toString()),
            // Text(Maths().day().toString())
          ],
        ),
        // body: Center(
        //   child: FutureBuilder<Album>(
        //     future: futureAlbum,
        //     builder: (context, snapshot) {
        //       if (snapshot.hasData) {
        //         return Text(snapshot.data!.title);
        //       } else if (snapshot.hasError) {
        //         return Text('${snapshot.error}');
        //       }
        //
        //       // By default, show a loading spinner.
        //       return const CircularProgressIndicator();
        //     },
        //   ),
        // ),
      );
  }
}
