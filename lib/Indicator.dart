import 'package:flutter/material.dart';

class Indicator extends AnimatedWidget {

  final PageController controller;
  final int pageCount;
  const Indicator({required this.controller,required this.pageCount}) : super(listenable: controller);

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Container(

        child: Row(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[ListView.builder(
        shrinkWrap: true,
            itemCount: pageCount,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return _createIndicator(index);
            })],
    ),
      ),
    );
  }
  Widget _createIndicator(index) {
    double w=3;
    double h=3;
    MaterialColor color=Colors.grey;

    if(controller.page==index)
    {
      color=Colors.blue;
      h=10;
      w=10;
    }

    return Center(
      child: AnimatedContainer(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
          color: color,
        ),
        margin: EdgeInsets.all(5),
        width: w,
        height: h,
        duration: Duration(milliseconds: 50),
      ),
    );
  }
}