import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 2),
        height: 75,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color(0xFF212D3D),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            menuBottom(menu1: "assets/explore.png"),
            menuBottom(menu1: "assets/reserv.png"),
            menuBottom(menu1: "assets/saved.png"),
            menuBottom(menu1: "assets/profile.png"),
          ],
        ),
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 24, right: 24, left: 24),
            height: MediaQuery.of(context).size.height / 2.2,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/home_one.png"),
                    fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/avatar.png",
                      fit: BoxFit.cover,
                      height: 55,
                    ),
                    SizedBox(
                      width: 55,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor:
                                  const Color(0xFFFFFFFF).withOpacity(0.2)),
                          onPressed: () {},
                          child: Image.asset("assets/menu.png")),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                const Text(
                  "Hi Marcelo",
                  style: TextStyle(color: Colors.white, fontSize: 14),
                ),
                const SizedBox(
                  height: 12,
                ),
                const Text(
                  "Find the best place \nhere",
                  style: TextStyle(color: Colors.white, fontSize: 22),
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Expanded(
                        child: Container(
                            height: 55,
                            color: Colors.white,
                            child: TextFormField(
                              style: const TextStyle(
                                  color: Colors.black,
                                  backgroundColor: Colors.white),
                            ))),
                    SizedBox(
                      height: 55,
                      width: 65,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0)),
                            backgroundColor: const Color(0xFF01957D)),
                        child: Image.asset("assets/search.png"),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Row(
                  children: menu
                      .asMap()
                      .entries
                      .map((e) => ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0)),
                            elevation: 0,
                            backgroundColor: (e.key == 0)
                                ? const Color(0xFF01957D)
                                : Colors.transparent,
                          ),
                          onPressed: () {},
                          child: Text(e.value)))
                      .toList(),
                ),
              ],
            ),
          ),
          Expanded(
              child: ListView(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 12),
            children: [
              // menu

              Row(
                children: [
                  const Text(
                    "Places Near You",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Text(
                    "View all",
                    style: TextStyle(color: Color(0xFF01957D)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    "assets/arrow.png",
                    width: 35,
                  )
                ],
              ),

              SizedBox(
                height: 220,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    container(context),
                    const SizedBox(
                      width: 12,
                    ),
                    container(context)
                  ],
                ),
              ),

              const SizedBox(
                height: 12,
              ),

              Row(
                children: [
                  const Text(
                    "Places Near You",
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  const Text(
                    "View all",
                    style: TextStyle(color: Color(0xFF01957D)),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Image.asset(
                    "assets/arrow.png",
                    width: 35,
                  )
                ],
              ),
            ],
          ))
        ],
      ),
    );
  }

  Container container(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height / 3,
      width: MediaQuery.of(context).size.width / 1.2,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 105,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(12),
                    topLeft: Radius.circular(12)),
                image: DecorationImage(
                    image: AssetImage(
                      "assets/img_satu.png",
                    ),
                    fit: BoxFit.cover)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                const Text(
                  "Long Beach Ixtpa",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                Image.asset("assets/star.png"),
                const Text(
                  "4.5",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "4 room - 6 bedroom - 2 bathroom",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: [
                Text(
                  "500 MXN",
                  style: TextStyle(
                      color: Color(0xFF01957D),
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "/night",
                  style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Column menuBottom({required String menu1}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        SizedBox(
          height: 25,
          width: 30,
          child: Image.asset(
            menu1,
            fit: BoxFit.fitHeight,
          ),
        ),
        const Text(
          "Explore",
          style: TextStyle(color: Color(0xFF01957D)),
        )
      ],
    );
  }
}

List<String> menu = ["Home", "Apartement", "Cabins", "Beachfront"];
