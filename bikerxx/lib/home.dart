import 'package:bikerxx/maps.dart';
import 'package:bikerxx/nav_drawer.dart';
import 'package:bikerxx/search.dart';
import 'package:bikerxx/services.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      home: MyStatelessWidget(),
    );
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
      appBar: AppBar(
        centerTitle: true,
        title: const Text('BIKERX'),
        actions: [
          IconButton(
            onPressed: () {
              const SearchPage();
            },
            icon: const Icon(Icons.search_sharp),
            alignment: Alignment.centerLeft,
          ),
        ],
        backgroundColor: const Color(0xffFD4D4D),
      ),
      drawer: NavDrawer(),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.fromLTRB(15, 15, 15, 20),
          //EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CarouselSlider(
                options: CarouselOptions(
                  height: 200,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.8,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enlargeCenterPage: true,
                  //onPageChanged: callbackFunction,
                  //scrollDirection: Axis.horizontal,
                ),
                items: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(
                        image: AssetImage('assets/carousel_slider/ad1.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(
                        image: AssetImage('assets/carousel_slider/ad2.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(
                        image: AssetImage('assets/carousel_slider/ad3.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(
                        image: AssetImage('assets/carousel_slider/ad4.png'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(
                        image: AssetImage('assets/carousel_slider/ad5.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      image: const DecorationImage(
                        image: AssetImage('assets/carousel_slider/ad6.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              const Text('\n'),
              const Text("  Scheduled Services",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  mainAxisSpacing: 9,
                  crossAxisSpacing: 9,
                  childAspectRatio: 1,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Image.asset(
                              'assets/carousel_slider/icons/periodic_services.png',
                              height: 32,
                            ),
                          ),
                          TextButton(
                              child: const Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  'Periodic Services',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 11.5,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          PeriodicServicesPage()),
                                );
                              }),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Image.asset(
                              'assets/carousel_slider/icons/tyrecare.png',
                              height: 32.5,
                            ),
                          ),
                          TextButton(
                              child: const Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  'Tyres & Wheel Care',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 11.5,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => WheelCarePage()),
                                );
                              }),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Image.asset(
                              'assets/carousel_slider/icons/batteries.png',
                              height: 32.5,
                            ),
                          ),
                          TextButton(
                              child: const Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  'Batteries',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 11.5,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => BatteriesPage()),
                                );
                              }),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Image.asset(
                              'assets/carousel_slider/icons/repair.png',
                              height: 32.5,
                            ),
                          ),
                          TextButton(
                              child: const Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  'Oil change & Repair',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 11.5,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RepairPage()),
                                );
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Text("  Value Added Services",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  mainAxisSpacing: 9,
                  crossAxisSpacing: 9,
                  childAspectRatio: 1,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Image.asset(
                              'assets/carousel_slider/icons/denting_and_painting.png',
                              height: 32.6,
                            ),
                          ),
                          TextButton(
                              child: const Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  'Painting',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 11.5,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => PaintingPage()),
                                );
                              }),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Image.asset(
                              'assets/carousel_slider/icons/cleaning.png',
                              height: 32.6,
                            ),
                          ),
                          TextButton(
                              child: const Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  'Cleaning',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 11.5,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CleaningPage()),
                                );
                              }),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Image.asset(
                              'assets/carousel_slider/icons/bike_inspection.png',
                              height: 32.6,
                            ),
                          ),
                          TextButton(
                              child: const Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  'Bike Inspection',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 11.5,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          InspectionDetailsPage()),
                                );
                              }),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Image.asset(
                              'assets/carousel_slider/icons/detailing_services.png',
                              height: 32.6,
                            ),
                          ),
                          TextButton(
                              child: const Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  'Detailing Services',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 11.5,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailedServicesPage()),
                                );
                              }),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const Text("  Mechanical repairs",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  crossAxisCount: 4,
                  shrinkWrap: true,
                  mainAxisSpacing: 9,
                  crossAxisSpacing: 9,
                  childAspectRatio: 1,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Image.asset(
                              'assets/carousel_slider/icons/accidental_repair.png',
                              height: 32.6,
                            ),
                          ),
                          TextButton(
                              child: const Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  'Accidental repair',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 11.5,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          AccidentalRepairPage()),
                                );
                              }),
                        ],
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: 4),
                            child: Image.asset(
                              'assets/carousel_slider/icons/spare_parts.png',
                              height: 32.6,
                            ),
                          ),
                          TextButton(
                              child: const Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  'Spare parts',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 11.5,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SparePartsPage()),
                                );
                              }),
                        ],
                      ),
                      // child: Center(
                      //   child: TextButton(
                      //       child: const Text(
                      //         'OFFERS',
                      //         style: TextStyle(
                      //             fontSize: 18,
                      //             fontWeight: FontWeight.bold,
                      //             color: Colors.black),
                      //       ),
                      //       onPressed: () {}),
                      // ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      // child: Center(
                      //   child: TextButton(
                      //       child: const Text(
                      //         'TERMS',
                      //         style: TextStyle(
                      //             fontSize: 18,
                      //             fontWeight: FontWeight.bold,
                      //             color: Colors.black),
                      //       ),
                      //       onPressed: () {}),
                      // ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      // child: Center(
                      //   child: TextButton(
                      //       child: const Text(
                      //         'LOCATIONS',
                      //         style: TextStyle(
                      //             fontSize: 18,
                      //             fontWeight: FontWeight.bold,
                      //             color: Colors.black),
                      //       ),
                      //       onPressed: () {}),
                      // ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  mainAxisSpacing: 9,
                  crossAxisSpacing: 9,
                  childAspectRatio: 1,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      // child: Center(
                      //   child: TextButton(
                      //       child: const Text(
                      //         'HOME',
                      //         style: TextStyle(
                      //             fontSize: 18,
                      //             fontWeight: FontWeight.bold,
                      //             color: Colors.black),
                      //       ),
                      //       onPressed: () {}),
                      // ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      // child: Center(
                      //   child: TextButton(
                      //       child: const Text(
                      //         'OFFERS',
                      //         style: TextStyle(
                      //             fontSize: 18,
                      //             fontWeight: FontWeight.bold,
                      //             color: Colors.black),
                      //       ),
                      //       onPressed: () {}),
                      // ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  crossAxisCount: 1,
                  shrinkWrap: true,
                  mainAxisSpacing: 9,
                  crossAxisSpacing: 9,
                  childAspectRatio: 3,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      // child: Center(
                      //   child: TextButton(
                      //       child: const Text(
                      //         'HOME',
                      //         style: TextStyle(
                      //             fontSize: 18,
                      //             fontWeight: FontWeight.bold,
                      //             color: Colors.black),
                      //       ),
                      //       onPressed: () {}),
                      // ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.count(
                  crossAxisCount: 1,
                  shrinkWrap: true,
                  mainAxisSpacing: 9,
                  crossAxisSpacing: 9,
                  childAspectRatio: 3,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      // child: Center(
                      //   child: TextButton(
                      //       child: const Text(
                      //         'HOME',
                      //         style: TextStyle(
                      //             fontSize: 18,
                      //             fontWeight: FontWeight.bold,
                      //             color: Colors.black),
                      //       ),
                      //       onPressed: () {}),
                      // ),
                    ),
                  ],
                ),
              ),
              const Text('\n'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Center(
                      child: TextButton(
                          child: const Text(
                            'MAPS',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MapScreen()),
                            );
                          }),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Center(
                      child: TextButton(
                          child: const Text(
                            'CHAT WITH US',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          onPressed: () {}),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
