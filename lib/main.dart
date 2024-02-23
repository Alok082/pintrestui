import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() => runApp(Myapp());

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "pintrest",
      home: Homescreen(),
    );
  }
}

class Homescreen extends StatefulWidget {
  const Homescreen({
    super.key,
  });

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  List<String> urls = [
    "https://images.pexels.com/photos/7919366/pexels-photo-7919366.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "https://images.pexels.com/photos/5708064/pexels-photo-5708064.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/4309369/pexels-photo-4309369.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/8797307/pexels-photo-8797307.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/6843561/pexels-photo-6843561.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/5326965/pexels-photo-5326965.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/6749092/pexels-photo-6749092.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/2534523/pexels-photo-2534523.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/3540807/pexels-photo-3540807.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/10124639/pexels-photo-10124639.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/6526177/pexels-photo-6526177.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1011302/pexels-photo-1011302.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/8383864/pexels-photo-8383864.jpeg?auto=compress&cs=tinysrgb&w=600",
    "https://images.pexels.com/photos/1287142/pexels-photo-1287142.jpeg?auto=compress&cs=tinysrgb&w=600"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MasonryGridView.count(
        crossAxisCount: 2,
        itemCount: urls.length,
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
        physics: BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
            decelerationRate: ScrollDecelerationRate.normal),
        itemBuilder: (BuildContext context, int index) {
          return Container(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                urls[index],
              ),
            ),
          );
        },
      ),

      // body: Row(
      //   children: [
      //     Expanded(
      //       child: Container(
      //         // height: 500,
      //         // width: 600,
      //         child: ListView.builder(
      //           itemCount: 7,
      //           itemBuilder: (BuildContext context, int index) {
      // return Card(
      //   elevation: 2.0,
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(20),
      //   ),
      //   child: Container(
      //     // // height: 150.0,
      //     // decoration: BoxDecoration(
      //     //   borderRadius:
      //     //       BorderRadius.vertical(top: Radius.circular(8.0)),
      //     //   // image: DecorationImage(
      //     //   //   image: NetworkImage(urls[index]),
      //     //   //   fit: BoxFit.cover,
      //     //   // ),
      //     // ),
      //     child: ClipRRect(
      //       borderRadius: BorderRadius.circular(20),
      //       child: Image.network(
      //         urls[index * 2 + 1],
      //         fit: BoxFit.fitWidth,
      //       ),
      //     ),
      //   ),
      // );
      //           },
      //         ),
      //       ),
      //     ),
      //     Expanded(
      //       child: Container(
      //         child: ListView.builder(
      //           itemCount: 7,
      //           itemBuilder: (BuildContext context, int index) {
      //             return Card(
      //               elevation: 2.0,
      //               shape: RoundedRectangleBorder(
      //                 borderRadius: BorderRadius.circular(20),
      //               ),
      //               child: Container(
      //                 // height: 150.0,
      //                 decoration: BoxDecoration(
      //                   borderRadius:
      //                       BorderRadius.vertical(top: Radius.circular(8.0)),
      //                   // image: DecorationImage(
      //                   //   image: NetworkImage(urls[index]),
      //                   //   fit: BoxFit.cover,
      //                   // ),
      //                 ),
      //                 child: ClipRRect(
      //                   borderRadius: BorderRadius.circular(20),
      //                   child: Image.network(
      //                     urls[index * 2],
      //                     fit: BoxFit.fitWidth,
      //                   ),
      //                 ),
      //               ),
      //             );
      //           },
      //         ),
      //       ),
      //     ),
      //   ],
      // )
    );
  }
}
