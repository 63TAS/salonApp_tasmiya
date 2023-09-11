import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_salon_app/Api/ApiFile.dart';
import 'package:flutter_salon_app/homepage/ButtonDesign/combuttonPage.dart';
import 'package:flutter_salon_app/homepage/PROFILE/userProfilre.dart';
import 'package:flutter_salon_app/homepage/cartScreen.dart';
import 'PROFILE/Accountpager.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;

  Color _buttonColor = Colors.blue.shade100;

//method for Colors button
  void Changebuttoncolor() {
    setState(() {
      _buttonColor = Colors.pink.shade100;
    });
  }

  @override
  void initState() {
    super.initState();
    getcategoryList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 40,
          ),

          //Top ui
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              const Text(
                'salon App',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 120,
              ),
              IconButton(
                  onPressed: () {
                    getOrderDetails();
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const cartScreen(),
                        ));
                  },
                  icon: const Icon(
                    Icons.shopping_cart,
                    color: Colors.grey,
                    size: 30,
                  )),
              SizedBox(
                width: 50,
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder:(context) => UserProfilepage(),));
                },
                child: CircleAvatar(
                  radius: 20,
                  child: Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 320),
            child: Text('Proifle',
            style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          FutureBuilder(
              future: getcategoryList(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('failed to load');
                } else if (snapshot.hasData) {
                  final categoryList = snapshot.data;
                  return Container(
                    height: 50,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: categoryList?.length,
                        itemBuilder: (BuildContext context, index) {
                          return Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              Container(
                                height: 40,
                                width: 140,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.blue.shade200,
                                ),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: Text(
                                    '${categoryList?[index]['categoryName']}',
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),

                                // SizedBox(height: 20,),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                            ],
                          );
                        }),
                  );
                } else {
                  return Text('Sorry');
                }
              }),

          //Mid ui
          const SizedBox(
            height: 130,
          ),
          Container(
            // color: Colors.white,
            height: 140,
            width: 160,
            child: Image.network(
              'https://i.pinimg.com/564x/c6/1a/7f/c61a7f7923ce87b7dc54809c73f65f30.jpg',
            ),
          ),
          const Text(
            'No data found',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            'No data Found please try again later',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 15,
              fontWeight: FontWeight.normal,
            ),
          )
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(
              () {
                currentIndex = index; // Update the selected tab index
              },
            );
          },
          items: [
            BottomNavigationBarItem(
              icon: Container(
                height: 40,
                child: Image.network(
                  'https://www.clker.com/cliparts/A/u/a/P/t/B/yellow-home-md.png',
                ),
              ),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.book,
                color: Colors.grey,
                size: 30,
              ),
              label: 'booking',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.movie_creation,
                color: Colors.grey,
                size: 30,
              ),
              label: 'credit',
            ),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: const Icon(
                  Icons.person,
                  color: Colors.grey,
                  size: 20,
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const ProfilePage(),
                      ));
                },
              ),
              label: 'profile',
            ),
          ]),
    );
  }
}
