import 'package:flutter/material.dart';
import 'package:flutter_clone_whas/paginas/Personal.dart';
import 'package:flutter_clone_whas/paginas/Plans.dart';

import 'package:flutter_clone_whas/paginas/Recipes.dart';
import 'package:flutter_clone_whas/paginas/Groceries.dart';
import 'package:flutter_clone_whas/temas/colores.dart';

import 'package:line_icons/line_icons.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  int paginaIndex = 0; //inciar index
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: chatBoxMe,
      body: getBody(),
      bottomNavigationBar: getFooter(),
       floatingActionButton: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 20,
            right: 0,
            child: FloatingActionButton(
              onPressed: () {
                // Código que se ejecuta al presionar el botón flotante
                print('Botón de agregar');
              },
              child: Icon(Icons.add),
              backgroundColor: cajasChat,
            ),
          ),
        ],
      ),
    );
  }
//yes
  Widget getBody() {
    return IndexedStack(
      index: paginaIndex,
      children: [
      
        Recipes(),
        Plans(),
        Groceries(),
        Personal(),
      ],
    );
  }

  Widget getFooter() {
    List iconosItems = [           Icons.fastfood,      LineIcons.paypal,      Icons.food_bank_outlined,      Icons.account_box,    ];
    List textoItems = [           "Recipes",      "Plans",      "Groceries",      "Personal Account"    ];
    return Container(
      
      height: 90,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20, top: 5),
          child: Stack(
            alignment: Alignment.center,
            children: [
             
              Row(
                
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(textoItems.length, (index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          paginaIndex = index;
                        });
                      },
                      child: Column(
                        children: [
                          Icon(
                            iconosItems[index],
                            color: paginaIndex == index
                                ? primary
                                : primario.withOpacity(0.5),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(textoItems[index],
                              style: TextStyle(
                                  fontSize: 10,
                                  color: paginaIndex == index
                                      ? primary
                                      : primario.withOpacity(0.9))),
                        ],
                      ),
                    );
                  })),
              
            ],
          ),
        ),
      ),
    );
  }
}
