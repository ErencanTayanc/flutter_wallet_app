import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:wallet_app/constants/colors.dart';
import 'package:wallet_app/constants/text_styles.dart';
import 'package:wallet_app/models/wealth.dart';

class WealthContainer extends StatefulWidget {
  const WealthContainer({
    Key? key,
  }) : super(key: key);

  @override
  State<WealthContainer> createState() => _WealthContainerState();
}

class _WealthContainerState extends State<WealthContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Colors.white,
        //borderRadius: BorderRadius.all(),
        border: Border(
          bottom:
              BorderSide(color: appGold, width: 5, style: BorderStyle.solid),
        ),
      ),
      child: ListTile(
        onTap: () => print("Tapped"),
        dense: true,
        trailing: SvgPicture.asset("assets/gold_ignot.svg", height: 50),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Altın Hesabı",
              style: cardTitleStyle,
            ),
            Text(
              "100,0 Gr",
              style: prize,
            )
          ],
        ),
      ),
    );
  }
}


/*
Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Altın Hesabı", style: cardTitleStyle),
              Icon(Icons.more_horiz),
            ],
          ),
          Text("100 Gr"),
        ],
      )*/