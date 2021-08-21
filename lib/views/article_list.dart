import 'package:flutter/material.dart';
import 'package:newsworld/models/article_model.dart';
import 'package:newsworld/views/blog_tile.dart';

class ArticleList extends StatelessWidget {
  final List<ArticleModel> articles;

  ArticleList({required this.articles});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 16,
      ),
      child: ListView.builder(
          itemCount: articles.length,
          shrinkWrap: true,
          physics: ClampingScrollPhysics(),
          itemBuilder: (context, index) {
            return BlogTile(
              imageUrl: articles[index].urlToImage,
              title: articles[index].title,
              desc: articles[index].description,
              url: articles[index].url,
            );
          }),
    );
  }
}
