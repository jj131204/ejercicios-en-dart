import 'package:flutter/material.dart';
import 'package:musica_historica/pages/myBlogFiles/editBlog.dart';
import 'package:musica_historica/pages/myBlogFiles/infoBlogs.dart';



class Blogs {
  String name;
  String description;
  /** si no se van a hacer operaciones matematicaas se recomineda crear la variables como string */

  Blogs(this.name, this.description);
}


List<Blogs> blogs = [
  Blogs("Legends never die", "Legends never die When the world is calling you"),
  Blogs("Enemy", "Oh, the misery Everybody wants to be my enemy"),
  Blogs("Ojos color sol", "Cuando amanece, tu lindura Cualquier constelación se pone insegura"),
  Blogs("Bomba para fincar", "Que la guitarra me haga un sonido así...  Seguido por el bajo"),
  Blogs("Bomba para fincar", "Que la guitarra me haga un sonido así...  Seguido por el bajo"),
];

miCard(context, index) {
  return Column(
    children: [
      SizedBox(
        height: 15.0,
      ),
      GestureDetector(
        child: Card(
        
        child: Column(
          children: [
            ListTile(
              iconColor: Color(0xff005fae),
              leading: Icon(Icons.music_note_rounded),
              title: Text(blogs[index].name),
              subtitle: Text(blogs[index].description),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: Text(
                    "Editar",
                    style: TextStyle(fontSize: 15, color: Color(0xff005fae)),
                  ),
                  onPressed: () {
                    Navigator.push(
                context, MaterialPageRoute(builder: (context) => editBlog(context, blogs[index].name, blogs[index].description))
              );
                  },
                ),
                TextButton(
                  child: Text(
                    "Compartir",
                    style: TextStyle(fontSize: 15, color: Color(0xff005fae)),
                  ),
                  onPressed: () {/* ... */},
                ),
                const SizedBox(width: 10),
              ],
            ),
          ],
        ),
      ),
      ),
      
      SizedBox(
        height: 15.0,
      ),
    ],
  );
}