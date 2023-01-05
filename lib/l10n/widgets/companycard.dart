import 'package:flutter/material.dart';
import 'package:size_config/size_config.dart';
import 'package:tryagain/l10n/widgets/constants.dart';
import 'package:tryagain/models/company.dart';

class CompanyCard extends StatelessWidget {
  final Company company;
  CompanyCard({required this.company});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280.0,
      margin: EdgeInsets.only(right: 18.0),
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: kBlack,
      ),
      // child:ListView(scrollDirection: Axis.horizontal,
      // children: [
      //   _jobs("Design System Developer"),
      //   SizedBox(width: 4,),
      //   _jobs("Design System Developer"),
      //    SizedBox(width: 4,),
      //   _jobs("Design System Developer"),
      //    SizedBox(width: 4,),
      // ],)
    );
  }

}
