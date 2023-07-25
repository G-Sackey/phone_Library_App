import 'package:flutter/material.dart';
import 'package:testproject/models/popularbook_model.dart';

// ignore: camel_case_types
class selectedBookScreen extends StatelessWidget {
  final PopularBookModel popularBookModel;

  const selectedBookScreen({super.key, required this.popularBookModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            backgroundColor: const Color.fromARGB(255, 252, 192, 212),
            expandedHeight: MediaQuery.of(context).size.height * 0.5,
            flexibleSpace: SizedBox(
              height: MediaQuery.of(context).size.height * 0.5,
              child: SizedBox(
                height: 50,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                        left: 25,
                        top: 35,
                        child: SizedBox(
                          height: 50,
                          width: 50,
                          child: GestureDetector(
                            onTap: () {},
                          ),
                        )),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        margin: const EdgeInsets.only(bottom: 62),
                        width: 270,
                        height: 220,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          image: DecorationImage(
                              image: AssetImage(popularBookModel.image)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.only(top: 24, left: 25),
              child: Text(
                popularBookModel.title,
                style: const TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 27,
                  color: Colors.black,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7, left: 25),
              child: Text(
                popularBookModel.author,
                style: const TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7, left: 25),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    "\$",
                    style: TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 14,
                      color: Color.fromARGB(255, 253, 140, 178),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    popularBookModel.price,
                    style: const TextStyle(
                      fontFamily: 'OpenSans',
                      fontSize: 32,
                      color: Color.fromARGB(255, 253, 140, 178),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 28,
              margin: const EdgeInsets.only(top: 23, bottom: 36),
              padding: const EdgeInsets.only(left: 25),
              child: DefaultTabController(
                  length: 3,
                  child: TabBar(
                      labelPadding: const EdgeInsets.all(0),
                      indicatorPadding: const EdgeInsets.all(0),
                      indicatorColor: Colors.grey[700],
                      isScrollable: true,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      labelStyle: const TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      unselectedLabelStyle: const TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      tabs: [
                        Tab(
                          child: Container(
                            margin: const EdgeInsets.only(right: 39),
                            child: const Text('Description'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            margin: const EdgeInsets.only(right: 39),
                            child: const Text('Reviews'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            margin: const EdgeInsets.only(right: 29),
                            child: const Text('Similar'),
                          ),
                        ),
                      ])),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
                child: Text(popularBookModel.description)),
          ]))
        ],
      )),
    );
  }
}
