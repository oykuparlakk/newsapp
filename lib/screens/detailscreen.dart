import 'package:flutter/material.dart';

import '../vm/viewmodel.dart';
import '../widgets/circleImage.dart';

class DetailScreen extends StatelessWidget {
  ViewModel article;
  DetailScreen(this.article);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(article.title),
      ),
      body: Container(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 20),
        child: Column(
          children: <Widget>[
            Container(
              height: 300,
              child: CircleImage(
                imageUrl: this.article.urlToImage,
              ),
            ),
            Text(
              this.article.publishedAt,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5),
            Center(
                child: Text(
              this.article.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            )),
            const SizedBox(height: 9),
            Text(
              this.article.description,
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
