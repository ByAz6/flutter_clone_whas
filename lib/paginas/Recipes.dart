import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_clone_whas/json/chat_json.dart';
import 'package:flutter_clone_whas/temas/colores.dart';
import 'package:line_icons/line_icons.dart';

class Recipes extends StatefulWidget {
  const Recipes({super.key});

  @override
  State<Recipes> createState() => _RecipesState();
}

class _RecipesState extends State<Recipes> {
  int MenuActivo = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: getBody(),
    );
  }

  

      Widget getBody() {
        return ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Recipes",
                    style: TextStyle(
                        fontSize: 23, color: white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    height: 38,
                    decoration: BoxDecoration(
                      color: textfieldColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: TextField(
                      style: TextStyle(color: white),
                      cursorColor: primary,
                      decoration: InputDecoration(
                          prefixIcon:
                              Icon(LineIcons.search, color: black.withOpacity(0.3)),
                          border: InputBorder.none,
                          hintText: "Busqueda",
                          hintStyle: TextStyle(
                              color: black.withOpacity(0.3), fontSize: 17)),
                    ),
                  ),
                  SizedBox(
                    height: 2,
                  ),
                  Row(
                    children: [
                      
                        Padding(
                            padding: EdgeInsets.only(top: 10, left: 25),
                            child: Column(
                              children: [
                                Container(
                                  height: 200,
                                  width: 300,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.0),
                                    image: DecorationImage(
                                      image: NetworkImage(
                                        'https://images.pexels.com/photos/1049626/pexels-photo-1049626.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 2),
                                Text(
                                  "Revisar Menu",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Container(
                            
                          ),
                        
                          Padding(
                            padding: EdgeInsets.only(top: 5, right: 0, left: 0),
                            child: Divider(color: white.withOpacity(0.3)),
                          ),
                          MenuActivo == 0 ? getRecipes() : getRecipesPerdidas()
                        ],
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        );
      }

      Widget getRecipes() {
      var tamanio = MediaQuery.of(context).size;
      return SingleChildScrollView(
        child: Column(
          children: List.generate(chat_data.length, (index) {
            return Padding(
              padding: const EdgeInsets.only(left: 0, right: 0, top: 15),
              child: FadeInDown(
                duration: Duration(milliseconds: 100 * index),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          // width: (tamanio.width - 30) * 0.4,
                          child: Row(children: [
                            Container(
                              width: 45,
                              height: 45,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: NetworkImage(chat_data[index]['img']),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              // width: (tamanio.width - 100) * 0.4,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    chat_data[index]['name'],
                                    style: TextStyle(
                                        fontSize: 16,
                                        color: white,
                                        fontWeight: FontWeight.w600),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.fastfood,
                                        color: white.withOpacity(0.5),
                                      ),
                                      SizedBox(
                                        width: 3,
                                      ),
                                      Text(
                                        "Realizar pedido",
                                        style: TextStyle(
                                            fontSize: 14,
                                            color: white.withOpacity(0.5),
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ]),
                        ),
                        Container(
                          width: 150,
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text(
                                  chat_data[index]['date'],
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                      color: white.withOpacity(0.5)),
                                ),
                                Icon(
                                  Icons.info_outline,
                                  color: primario,
                                )
                              ]),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 55),
                      child: Divider(
                        color: white.withOpacity(0.3),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
        ),
      );
    }

  Widget getRecipesPerdidas() {
    return Container();
  }
}
