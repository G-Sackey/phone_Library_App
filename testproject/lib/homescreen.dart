import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:testproject/selectedBookScreen.dart';
import 'models/newbook_model.dart';
import 'models/popularbook_model.dart';

class Homescreen extends StatelessWidget {
  Homescreen({super.key});

  final searchBookController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Container(
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(left: 25, top: 25),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Hi, User",
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      "Discover Lastest Books",
                      style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    ),
                  ],
                )),
            Container(
              height: 39,
              margin: EdgeInsets.only(left: 25, right: 25, top: 18),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[200],
              ),
              child: Stack(
                children: <Widget>[
                  TextField(
                    maxLengthEnforcement: MaxLengthEnforcement.enforced,
                    style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                    decoration: InputDecoration(
                        contentPadding:
                            EdgeInsets.only(left: 19, right: 50, bottom: 8),
                        border: InputBorder.none,
                        hintText: 'Search Book...',
                        hintStyle: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[350],
                          fontWeight: FontWeight.w600,
                        )),
                  ),
                  const Positioned(
                      right: 5,
                      top: 8,
                      child: Column(
                        children: [Icon(Icons.search)],
                      ))
                ],
              ),
            ),
            Container(
              height: 25,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.only(left: 20),
              child: DefaultTabController(
                  length: 3,
                  child: TabBar(
                      labelPadding: EdgeInsets.all(0),
                      indicatorPadding: EdgeInsets.all(0),
                      isScrollable: true,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      labelStyle: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                      unselectedLabelStyle: TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                      tabs: [
                        Tab(
                          child: Container(
                            margin: EdgeInsets.only(right: 23),
                            child: Text('New'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            margin: EdgeInsets.only(right: 23),
                            child: Text('Trending'),
                          ),
                        ),
                        Tab(
                          child: Container(
                            margin: EdgeInsets.only(right: 23),
                            child: Text('BestSeller'),
                          ),
                        ),
                      ])),
            ),
            Container(
              margin: EdgeInsets.only(top: 21),
              height: 210,
              child: ListView.builder(
                  padding: EdgeInsets.only(left: 25, right: 4),
                  itemCount: newbooks.length,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      margin: EdgeInsets.only(right: 19),
                      height: 210,
                      width: 153,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          // add image here later....
                          image: DecorationImage(
                              image: AssetImage(newbooks[index].image))),
                    );
                  }),
            ),
            Padding(
              padding: EdgeInsets.only(left: 25, top: 25),
              child: Text(
                'Popular',
                style: TextStyle(
                  fontStyle: FontStyle.normal,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            ListView.builder(
                itemCount: populars.length,
                padding: EdgeInsets.only(top: 25, right: 25, left: 25),
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: ((context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => selectedBookScreen(
                                  popularBookModel: populars[index]))));
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 19),
                      height: 81,
                      width: MediaQuery.of(context).size.width - 50,
                      color: Colors.white,
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 81,
                            width: 62,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                // add images later
                                image: DecorationImage(
                                    image: AssetImage(populars[index].image))),
                          ),
                          SizedBox(
                            width: 21,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                populars[index].title,
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                populars[index].author,
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                '\$' + populars[index].price,
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }))
          ],
        ),
      ),
    );
  }
}
