// ignore_for_file: unnecessary_this

import 'package:demo/details.dart';
import 'package:flutter/material.dart';

class ProductList extends StatelessWidget {
  List<String> imagelist = [
    'https://media.istockphoto.com/photos/male-coat-isolated-on-the-white-picture-id163208487?k=20&m=163208487&s=612x612&w=0&h=TZ5XnBejf_EAnGjMPfsRf3zu-8G9DYHIFyTiyrnwFms=',
    'https://static-01.daraz.com.bd/p/23ee8091577354d0ac77480597c66620.jpg',
    'https://rohan.imgix.net/product/05668P21.jpg?w=2500&auto=format&q=77',
    'https://static.fibre2fashion.com/MemberResources/LeadResources/1/2019/8/Seller/19167233/Images/19167233_0_men-s-jacket.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaFPTO7FxJ64kt3kDzkK2MSZKHEBR0n_dQiA&usqp=CAU',
  ];
  List<String> price = [
    '152',
    '535',
    '696',
    '859',
    '654',
  ];

  List<String> productname = [
    'Read jacket',
    'Black jacket',
    'Read and gray',
    'Brown jacket',
    'Green jacket',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.yellow,
        title: const Text(
          'Product List',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            Container(
              color: Colors.green,
              child: DrawerHeader(
                child: CircleAvatar(
                  backgroundImage:  NetworkImage(
                      'https://thumbs.dreamstime.com/b/man-formal-suit-man-formal-suit-white-background-107682590.jpg'),
                ),
              ),
            ),

            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.message),
              title: Text('Message'),
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text('Share'),
            ),
          ],
        ),
      ),
      body: GridView.builder(
          itemCount: 5,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => Details(
                              imagelist[index],
                              productname[index],
                              price[index])));
                },
                child: Container(
                  color: Colors.white,
                  child: Column(
                    children: [
                      Image.network(
                        imagelist[index],
                        height: 180,
                        width: 180,
                      ),
                      Text(productname[index]),
                      Text(price[index])
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
