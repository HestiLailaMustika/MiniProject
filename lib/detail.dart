import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_a/profil.dart';
import 'package:url_launcher/url_launcher.dart';

class Detail extends StatelessWidget {
  final url;
  final title;
  final content;
  final publishedAt;
  final author;
  final urlToImage;

  Detail(
      {this.url,
      this.title,
      this.content,
      this.publishedAt,
      this.author,
      this.urlToImage});

  @override
  Widget build(BuildContext context) {
    final Uri _url = Uri.parse('$url');
    Future<void> _launchUrl() async {
      if (!await launchUrl(_url)) {
        throw 'Could not launch $_url';
      }
    }

    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: <Widget>[
            urlToImage != null
                ? Image.network(urlToImage)
                : Container(
                    height: 250,
                    color: Colors.grey[200],
                  ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '$title',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    '$publishedAt',
                    style: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  SizedBox(height: 5),
                  Text('$content'),
                  Divider(),
                  Text('Author : $author'),
                  //Text('$url'),
                  ElevatedButton(
                    onPressed: _launchUrl,
                    child: Text('Lihat Berita Selengkapnya ...'),
                  ),
                ],
              ),
            )
          ],
        ),

        // ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FloatingActionButton(
                    onPressed: () => Navigator.pop(context),
                    child: Icon(Icons.navigate_before),
                  ),
                  FloatingActionButton(
                    onPressed: () => Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Profile())),
                    child: Icon(Icons.navigate_next),
                  )
                ])));
  }
}
