import 'package:flutter/material.dart';
import 'package:gifando/CategoriaPage.dart';

import 'ContainerFuture.dart';

class RowCategoria extends StatelessWidget {
  final String title;
  final Color color;
  final String categoriaSearch;

  const RowCategoria({Key key, this.title, this.color, this.categoriaSearch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Row(
      children: <Widget>[
        Container(
          width: width * 0.015,//6,
          height: height * 0.3,//* 0.24,//213,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(0),
              bottomRight: Radius.circular(0)
            )
            ),
        ),
        Column(
          //mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: width *0.03, bottom: width *0.04),
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) => CategoriaPage(categoria: title,search: categoriaSearch,color: color,)
                  ));
                },
                child: Text(
                title,
                style: TextStyle(
                    fontSize: width *0.06,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              ),
            ),
            ContainerFuture(
              categoria: categoriaSearch,
            ),
          ],
        )
      ],
    );
  }
}
