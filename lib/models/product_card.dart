import 'package:flutter/material.dart';

class Bagcard extends StatelessWidget {
  const Bagcard({super.key, required this.press});

  final VoidCallback press;
  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 100,
      //  height:700,
      //width:MediaQuery.of(context).size.width/2,
      //padding:EdgeInsets.all(5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26.0),
      ),
      child: GestureDetector(onTap: press,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
        
              Container(
                  height: 150,
                  width: 160,
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.circular(8.0)),
                  child: Image.asset('', fit: BoxFit.cover)),
            
            Padding(
                padding: EdgeInsets.only(right: 80),
                child: Text('', style: TextStyle(color: Colors.grey))),
            Padding(padding: EdgeInsets.only(right: 100), child: Text(""))
          ],
        ),
      ),
    );
  }
}
