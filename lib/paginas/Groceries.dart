import 'package:flutter/material.dart';
import 'package:flutter_clone_whas/temas/colores.dart';

class Groceries extends StatelessWidget {
  final categories = [    {'title': 'Comida rapida', 'image': 'https://images.pexels.com/photos/3023476/pexels-photo-3023476.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'},    {'title': 'Platillos tipicos', 'image': 'https://images.pexels.com/photos/4724380/pexels-photo-4724380.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'},    {'title': 'Taqiza', 'image': 'https://images.pexels.com/photos/4958641/pexels-photo-4958641.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1'},  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        title: Text('Comestibles'),
        backgroundColor: bgColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Categorías',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            Container(
              height: categories.length * 200.0,
              child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: categories.length,
                itemBuilder: (context, index) {
                  return CategoryCard(
                    title: categories[index]['title']!,
                    image: categories[index]['image']!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String image;

  CategoryCard({required this.title, required this.image});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // TODO: Navegar a la pantalla de la categoría seleccionada
      },
      child: Container(
        height: 200.0,
        margin: EdgeInsets.only(bottom: 16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          image: DecorationImage(
            image: NetworkImage(image),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}