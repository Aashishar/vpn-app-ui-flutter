import 'package:fastvpn/colors.dart';
import 'package:flutter/material.dart';

class HomePgae extends StatefulWidget {
  const HomePgae({super.key});

  @override
  State<HomePgae> createState() => _HomePgaeState();
}

class _HomePgaeState extends State<HomePgae> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height * 0.5,
                decoration: BoxDecoration(color: color1),
                alignment: Alignment.topCenter,
                padding: const EdgeInsets.symmetric(horizontal: 16)
                    .copyWith(top: 40),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.menu,
                          size: 35,
                        ),
                        const Expanded(child: SizedBox()),
                        const Text(
                          "VPNTree",
                          style: TextStyle(
                              fontWeight: FontWeight.w900,
                              fontSize: 24,
                              color: Colors.white),
                        ),
                        const Expanded(child: SizedBox()),
                        Container(
                          height: 30,
                          width: 30,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: NetworkImage(
                                    "https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/Flag_of_France.svg/1200px-Flag_of_France.svg.png",
                                  ),
                                  fit: BoxFit.cover)),
                          // you can add image form your asstets also
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 64,
                    ),
                    const Row(
                      children: [
                        Text(
                          "status",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        Expanded(child: SizedBox()),
                        Text(
                          "time",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Row(
                      children: [
                        Text(
                          "connected",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        ),
                        Expanded(child: SizedBox()),
                        Text(
                          "20:12:00",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ],
                ),
              ),

              // bottom part container which includes location and premium

              Container(
                padding: const EdgeInsets.symmetric(horizontal: 16)
                    .copyWith(top: 128, bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "location",
                    ),
                    const Row(
                      children: [
                        Text(
                          "Natherlands",
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Expanded(child: SizedBox()),
                        Icon(Icons.arrow_forward_ios)
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16)
                          .copyWith(bottom: 16),
                      height: 150,
                      width: double.infinity,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(24)),
                          color: Colors.black45),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Go Premium!",
                            style: TextStyle(
                                color: Colors.amber,
                                fontSize: 22,
                                fontWeight: FontWeight.w700),
                          ),
                          SizedBox(height: 16),
                          Row(
                            children: [
                              Icon(
                                Icons.double_arrow_rounded,
                                color: Colors.amber,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                  child: Text(
                                "no Speed Limits",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              )),
                              Icon(
                                Icons.location_on_rounded,
                                color: Colors.amber,
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Expanded(
                                  child: Text(
                                "world wide connection",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500),
                              )),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),

          /// bottom for center t start and stop
//
          Positioned(
              top: MediaQuery.sizeOf(context).height * 0.35,
              left: MediaQuery.sizeOf(context).width * 0.25,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: const Color.fromARGB(255, 255, 255, 255),
                    border: Border.all(color: color1, width: 25)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(
                      Icons.power_settings_new_rounded,
                      color: color1,
                      size: 60,
                    ),
                    Text(
                      "Start",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: color1),
                    )
                  ],
                ),
              )),
        ],
      ),
    );
  }
}



//     thanks for watching  the code is available in github like share and subscribe if you like the video 
// thank you 
