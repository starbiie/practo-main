
import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:practo_main/common/sized_box/sized_box.dart';

import '../../../../common/widgets/best_offers.dart';
import '../../../../common/widgets/cmn_container2.dart';
import '../../../../common/widgets/common_button.dart';
import '../../../../common/widgets/doctorslist.dart';
import '../../../../common/widgets/promotion_banners.dart';
import '../../../../common/widgets/symptoms.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<String> imgList = [
    'asset/dental.jpg',
    'asset/dental.jpg',
    'asset/dental.jpg',
  ];
  String? selectedLocation;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const CircleAvatar(
                              backgroundColor: Color(0xffF0F6F6),
                              child: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 8.0),
                            const Icon(
                              Icons.location_on,
                              size: 15,
                              color: Color(0xff253292),
                            ),
                            SizedBox(
                              width: screenWidth * 0.4,
                              child: DropdownButtonFormField<String>(
                                decoration: InputDecoration(
                                  hintText: 'Location',
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    borderSide: BorderSide.none,
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 12, vertical: 8),
                                  isDense: true,
                                ),
                                value: selectedLocation,
                                onChanged: (String? value) {
                                  setState(() {
                                    selectedLocation = value;
                                  });
                                },
                                items: [
                                  'Bangalore',
                                  'Chennai',
                                  'Hyderabad',
                                  'Andra'
                                ].map((String item) {
                                  return DropdownMenuItem<String>(
                                    value: item,
                                    child: Text(
                                      item,
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              width: screenWidth * 0.19,
                              height: 30,
                              decoration: BoxDecoration(
                                  color: const Color(0XFF98E2FE),
                                  borderRadius: BorderRadius.circular(7)),
                              child: const Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceAround,
                                children: [
                                  Image(image: AssetImage("asset/doc.png")),
                                  Text("ABHA"),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    SizedBox(
                        width: screenWidth * 1,
                        child: TextField(
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: const Color(0xffF0F6F6),
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(50)),
                              prefixIcon: const Icon(Icons.search),
                              hintText: 'Search for clinics and hospitals'),
                        )),
                    SizedBox(height: 10.0),
                    const Divider(),
                    SizedBox(height: 5.0),
                    SizedBox(height: 225, child: DoctorsList()),
                    SizedBox(height: 10.0),
                    const Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffF0F6F6),
                          child: Icon(
                            Icons.star_border,
                            color: Color(0xff253292),
                          ),
                        ),
                        Text(
                          "Featured services",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      width: screenWidth,
                      height: screenHeight * (230 / screenHeight),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: const Color(0xff253292),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Column(
                          children: [
                            SizedBox(height: 10.0),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Flexible(
                                  child: Text(
                                    "Affordable Procedures by",
                                    style: TextStyle(color: Colors.white),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Flexible(
                                  child: Text(
                                    " Expert Doctors",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 10.0),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CustomContainer2(
                                  imagePath: "asset/piles.jpg",
                                  title: "Piles",
                                ),
                                CustomContainer2(
                                  imagePath: "asset/pregnancy.jpg",
                                  title: "Pregnancy",
                                ),
                                CustomContainer2(
                                  imagePath: "asset/knee.jpg",
                                  title: "Knee",
                                ),
                                CustomContainer2(
                                  imagePath: "",
                                  title: "More",
                                  color: Color(0xff00DEFF),
                                  isImage: false,
                                ),
                              ],
                            ),
Spacer(),                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  "All insurance accepted\n& No Cost EMI available",
                                  style: TextStyle(color: Colors.white),
                                ),
                                // SizedBox(width: 2),
                                Flexible(
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: const Color(0XFF98E2FE),
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    child: Text("Get Cost Estimate"),
                                  ),
                                ),
                              ],
                            ),

                            SizedBox(height: 5.0),

                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    PromotionBanner(),
                    const Divider(
                      thickness: 5,
                    ),
                    SizedBox(height: 10.0),
                    const Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Color(0xffF0F6F6),
                          child: Icon(
                            Icons.videocam_outlined,
                            color: Color(0xff253292),
                          ),
                        ),
                        SizedBox(width: 8.0),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Not feeling too well?",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Treat common symptoms with top specialists?",
                              style: TextStyle(fontSize: 10),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 10.0),
                    SizedBox(child: SympToms2()),
                    CommonButton(
                      buttonText: "View All Symptoms",
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Container(
                color: Color(0xff253292),
                width: double.infinity,
                height: 250,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image(image: AssetImage("asset/Vector.png")),
                          SizedBox(width: 8.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Best offers",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Explore deals, offers, health updates and more",
                                style: TextStyle(color: Colors.white, fontSize: 10),
                              ),
                            ],
                          ),
                        ],
                      ),

                      SizedBoxes.largeSizedBox
,                      Container(
                        height: 150,
                        width: 230,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          // color: Colors.white,
                          image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("asset/sexualhealth.png"),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 5.0), // Use SizedBox for spacing
                              Text(
                                "All things Men",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff00B8FE),
                                ),
                              ),
                              SizedBox(height: 5.0), // Use SizedBox for spacing
                              Text(
                                "Get discreet consultations\non sexual health",
                                style: TextStyle(color: Color(0xff00B8FE)),
                              ),
                              Spacer(), // Use Spacer to fill the remaining space
                              Container(
                                alignment: Alignment.center,
                                width: 108,
                                height: 30,
                                decoration: BoxDecoration(
                                  color: Color(0xff00B8FE),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(Icons.video_call_outlined, color: Colors.white),
                                    Text(
                                      "Consult Now",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5.0), // Use SizedBox for spacing
                            ],
                          ),
                        ),
                      )

                    ],
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              const Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xffF0F6F6),
                    child: Icon(
                      Icons.local_hospital_rounded,
                      color: Color(0xff253292),
                    ),
                  ),
                  SizedBox(width: 8.0),
                  Text(
                    "Conditions that can be treated\nthrough surgeries ",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}