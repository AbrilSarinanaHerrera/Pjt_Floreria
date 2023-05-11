import 'package:flutter/material.dart';

import '../widgets/jefe_item.dart';
import '../widgets/trabajadores_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Inicio'),
        backgroundColor: const Color(0xffbc687d),
        centerTitle: true,
      ),
      backgroundColor: Color(0xfffef7f3),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_outlined,
              color: Colors.black54,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month_outlined,
              color: Colors.black54,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.chat_bubble_outline,
              color: Colors.black54,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.black54,
            ),
            label: '',
          ),
        ],
      ),
      body: ListView(
        children: [
          const SizedBox(height: 12),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Hola,",
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    "Abril Sariñana",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.grey,
                child: CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage("assets/p1.png"),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 16,
            ),
            decoration: BoxDecoration(
              color: const Color(0xafde9191),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  "assets/f13.png",
                  width: 92,
                  height: 100,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "¿Qué vas a pedir?",
                      style: TextStyle(
                          color: Colors.black87,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const SizedBox(
                      width: 120,
                      child: Text(
                        "Increible atención al cliente.",
                        style: TextStyle(
                          color: Colors.black87,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 150,
                      height: 35,
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                          color: Color(0xff87242c),
                          borderRadius: BorderRadius.circular(12.0)),
                      child: const Center(
                        child: Text(
                          "Comenzar!",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.only(left: 16),
            height: 64,
            decoration: BoxDecoration(
              color: const Color(0xd8b45757),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: const [
                Icon(
                  Icons.search,
                  size: 32,
                  color: Colors.black54,
                ),
                SizedBox(
                  width: 12,
                ),
                Text(
                  "Buscador",
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 60,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                AnuncioItem(
                  imagePath: "assets/f12.png",
                  imageName: "Rosas",
                ),
                SizedBox(
                  width: 8,
                ),
                AnuncioItem(
                  imagePath: "assets/f11.png",
                  imageName: "Cupleaños",
                ),
                SizedBox(
                  width: 8,
                ),
                AnuncioItem(
                  imagePath: "assets/f13.png",
                  imageName: "XV",
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                "Arreglos",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              Text(
                "Ver Todo",
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 16,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: const [
                EmpleadoItem(
                  image: "assets/f3.png",
                  name: "600",
                  specialist: "tulipanes",
                ),
                EmpleadoItem(
                  image: "assets/f14.png",
                  name: "300",
                  specialist: "rosas",
                ),
                EmpleadoItem(
                  image: "assets/2.jpg",
                  name: "Indah Kusumaningrum",
                  specialist: "Repartidora",
                ),
                EmpleadoItem(
                  image: "assets/4.jpg",
                  name: "Mesty Ariotedjo",
                  specialist: "Vendedora",
                ),
              ],
            ),
          )
        ],
        // ),
        //),
      ),
    );
  }
}
