import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tryagain/l10n/widgets/companycard.dart';
import 'package:tryagain/l10n/widgets/constants.dart';
import 'package:tryagain/models/company.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Container(
          height: 64,
          decoration: BoxDecoration(),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home_filled,
                    color: Colors.deepOrange,
                    size: 28,
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  CircleAvatar(
                    radius: 3,
                    backgroundColor: Colors.deepOrange,
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.chat_bubble_outline,
                    color: Colors.grey,
                    size: 28,
                  ),
                  // SizedBox(height: 4,),
                  // CircleAvatar(
                  //   radius: 3,
                  //   backgroundColor: Colors.deepOrange,
                  // )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.notifications_active_outlined,
                    color: Colors.grey,
                    size: 28,
                  ),
                  // SizedBox(height: 4,),
                  // CircleAvatar(
                  //   radius: 3,
                  //   backgroundColor: Colors.deepOrange,
                  // )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.bookmark_border,
                    color: Colors.grey,
                    size: 28,
                  ),
                  // SizedBox(height: 4,),
                  // CircleAvatar(
                  //   radius: 3,
                  //   backgroundColor: Colors.deepOrange,
                  // )
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: kSilver,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: kSilver,
        leading: Padding(
          padding: EdgeInsets.only(
            left: 18.0,
            top: 15.0,
            bottom: 7.0,
            right: 4,
          ),
          child: Image.network(
            'https://static.thenounproject.com/png/3547976-200.png',
            color: kBlack,
          ),
        ),
        actions: <Widget>[
          Image.network(
            'https://icons.veryicon.com/png/o/internet--web/prejudice/user-128.png',
            width: 25.0,
            color: kBlack,
          ),
          SizedBox(
            width: 18.0,
          ),
        ],
      ),
      body: Container(
        margin: EdgeInsets.only(left: 18.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 25.0,
              ),
              Text(
                "Hi Robert ,\nFind your Dream Job",
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                height: 25.0,
              ),
              Container(
                width: double.infinity,
                height: 50.0,
                margin: EdgeInsets.only(right: 18.0),
                child: Row(
                  children: <Widget>[
                    //?Search TextField
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 15.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: TextField(
                          cursorColor: kBlack,
                          decoration: InputDecoration(
                              icon: Icon(
                                Icons.search,
                                size: 25.0,
                                color: kBlack,
                              ),
                              border: InputBorder.none,
                              hintText: "Search for job title",
                              hintStyle: kSubTitleStyle.copyWith(
                                color: Colors.black38,
                              )),
                        ),
                      ),
                    ),
                    Container(
                      width: 50.0,
                      height: 50.0,
                      margin: EdgeInsets.only(left: 12.0),
                      decoration: BoxDecoration(
                          color: kBlack,
                          borderRadius: BorderRadius.circular(12.0)),
                      child: Icon(
                        FontAwesomeIcons.slidersH,
                        color: Colors.white,
                        size: 20.0,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25.0,
              ),
              Text(
                "Popular Company",
                style: kTitleStyle,
              ),
              SizedBox(height: 15.0),
              Container(
                width: double.infinity,
                height: 190.0,
                child: ListView.builder(
                    itemCount: companyList.length,
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      var company = companyList[index];
                      return CompanyCard(company: company,);
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
