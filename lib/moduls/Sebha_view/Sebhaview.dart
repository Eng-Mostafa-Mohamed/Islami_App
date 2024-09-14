import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/app-theme.dart';

class SebhaView extends StatefulWidget {
  const SebhaView({super.key});

  @override
  State<SebhaView> createState() => _SebhaViewState();
}

class _SebhaViewState extends State<SebhaView> {
 int current_index = 0;
 int num_of_clicks = 0;
 double angle =0.0;
 List<String> TaspihList=["سبحان الله","الحمد لله","الله اكبر",];
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Center(
        child: Column(
      children: [
        Stack(
          children: [
            Container(
              height: 230,
              margin: const EdgeInsets.only(
                top: 110,
                bottom: 30,
              ),
              child: Transform.rotate(
                angle: angle,
                child: Image.asset("assets/icons/body of seb7a.png"),
              ),
            ),
            Container(
              height: 150,
              margin: EdgeInsets.only(
                left: 80,
              ),
              child: Image.asset("assets/icons/head of seb7a.png"),
            ),
          ],
        ),
        Text(
          "عدد التسبيحات",
          style: theme.textTheme.bodyLarge,
        ),
        Container(
          height: 60,
          width: 50,
          margin: EdgeInsets.only(top: 10),
          padding: EdgeInsets.all(10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppTheme.primarycolor,
          ),
          child:  Text(
            "$num_of_clicks"
            ,
            style:const TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        FilledButton(style: FilledButton.styleFrom(
          backgroundColor: AppTheme.primarycolor,
        ),
          onPressed: () {
            Taspih();
          },
          child: Text(TaspihList[current_index]),
        ),
      ],
    ));
  }
  Taspih(){
    num_of_clicks++;
    angle+=30;
    if(num_of_clicks==33){
      num_of_clicks=0;
      current_index++;
    }
    if(current_index==3){
      current_index=0;
    }
    setState(() {

    });
  }
}
