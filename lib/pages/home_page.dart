import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:project2/constants/nav_item.dart';
import 'package:project2/constants/size.dart';
import 'package:project2/widgets/header_desktop.dart';
import 'package:project2/widgets/header_mobile.dart';
import 'package:project2/widgets/mobile_drawer.dart';
import 'package:project2/widgets/site_icon.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

//0xFF131933 dark blue
// 0xFF1D4C4F dark green
// 28b67e light green
// new dark blue 023246
class _HomePageState extends State<HomePage> {
  final ScaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      return Scaffold(
        key: ScaffoldKey,
        endDrawer: MobileDrawer(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            if (Constraints.maxWidth >= sizeOfScreen)
              HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  ScaffoldKey.currentState?.openEndDrawer();
                },
              ),
            // const Divider(
            //   color: Color(0xff28b67e), // Customize the color of the divider
            //   thickness: 1.0, // Customize the thickness of the divider
            //   height: 1.0, // Customize the height of the divider
            // ),
            Container(
              child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Hi\nI'm Noman Ahmed\nA Flutter Developer",
                          style: TextStyle(
                            fontSize: 50,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            foregroundColor:
                                Color(0xFF131933), // Color when hovered
                            backgroundColor:
                                Color(0xff28b67e), // Color when pressed
                          ),
                          onPressed: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "Get In Touch",
                              style: TextStyle(
                                  color: Color(0xFF131933),
                                  fontWeight: FontWeight.w800,
                                  fontSize: 20),
                            ),
                          ),
                        )
                      ],
                    ),
                    LayoutBuilder(
                      builder: (context, constraints) {
                        double width = constraints.maxWidth;

                        // Decide the image size based on screen width
                        double imageSize = width > 600 ? 400 : 200;

                        return Image.asset(
                          'assests/noman.png', // Replace this URL with your image URL
                          width: imageSize,
                          height: imageSize,
                        );
                      },
                    ),
                  ]),
              // color: const Color(0xFF131933),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color(0xFF131933),
                    Color.fromARGB(255, 7, 11, 28),
                  ],
                ),
              ),
              height: 700,
              width: double.maxFinite,
            ),
            Container(
              child: Center(
                  child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      "About Me",
                      style: TextStyle(
                          fontSize: 40,
                          color: Color(0xff28b67e),
                          fontWeight: FontWeight.w700),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CircleAvatar(
                          radius: 150,
                          backgroundColor: Color(0xFF131933),
                          backgroundImage: AssetImage('assests/noman.png'),
                          child: Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: Color(0xff28b67e), // Border color
                                width: 3, // Border width
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 400,
                          width: 500,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // RichText(
                              //   child: Text(
                              //     "My name is Noman Ahmed",
                              //     style: TextStyle(
                              //         fontSize: 20, color: Colors.white),
                              //   ),
                              // ),
                              RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'My name is',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Colors
                                              .white), // Color for "Hello"
                                    ),
                                    TextSpan(
                                      text: ' Noman Ahmed.',
                                      style: TextStyle(
                                          fontSize: 20,
                                          color: Color(0xff28b67e),
                                          fontWeight: FontWeight
                                              .w600), // Color for "Flutter"
                                    ),
                                  ],
                                ),
                              ),
                              Text(
                                "Welcome to my portfolio! I'm a skilled Flutter developer and mobile app enthusiast, currently pursuing a Bachelor's in Software Engineering at SMI University. With focused training from SMIT and NAVTTC, I bring a blend of theoretical knowledge and practical experience to the table. My passion lies in crafting intuitive user experiences and innovative solutions. Proficient in Dart and Flutter, I excel in creating cross-platform apps with efficiency and elegance. My portfolio showcases diverse projects, highlighting my commitment to quality and creativity. Let's collaborate on impactful ventures, leveraging my expertise to drive success in the ever-evolving realm of mobile app development.",
                                style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.white60,
                                    fontWeight: FontWeight.w100),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Name",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xff28b67e),
                                          )),
                                      Text("Noman Ahmed",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white60,
                                          ))
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("Phone",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xff28b67e),
                                          )),
                                      Text("03236684026",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white60,
                                          ))
                                    ],
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Country",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xff28b67e),
                                          )),
                                      Text("Karachi, Pakistan",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white60,
                                          ))
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Text("Email",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w800,
                                            color: Color(0xff28b67e),
                                          )),
                                      Text("nomanpb234@gmail.com",
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w900,
                                            color: Colors.white60,
                                          ))
                                    ],
                                  )
                                ],
                              ),
                              Container(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("Education",
                                        style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.w800,
                                          color: Color(0xff28b67e),
                                        )),
                                    Text(
                                        "Bachelor of Science in Software Engineering from Sindh Madressa-tul-Islam University",
                                        style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w700,
                                          color: Colors.white60,
                                        ))
                                  ],
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              )),
              height: 600,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 7, 11, 28),
                    Color(0xFF131933),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Skills",
                    style: TextStyle(
                        fontSize: 40,
                        color: Color(0xff28b67e),
                        fontWeight: FontWeight.w700),
                  ),
                  Container(
                    width: 700,
                    height: 250,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Languages and Frameworks",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white54),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Card(
                              shadowColor: Color(0xFF131933),
                              elevation: 5,
                              color: Color.fromARGB(255, 7, 11, 28),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage('assests/dart.png'),
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              shadowColor: Color(0xFF131933),
                              elevation: 5,
                              color: Color.fromARGB(255, 7, 11, 28),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage('assests/flutter.png'),
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              shadowColor: Color(0xFF131933),
                              elevation: 5,
                              color: Color.fromARGB(255, 7, 11, 28),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage('assests/git.png'),
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              shadowColor: Color(0xFF131933),
                              elevation: 5,
                              color: Color.fromARGB(255, 7, 11, 28),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage('assests/css.png'),
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              shadowColor: Color(0xFF131933),
                              elevation: 5,
                              color: Color.fromARGB(255, 7, 11, 28),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage('assests/html.png'),
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              shadowColor: Color(0xFF131933),
                              elevation: 5,
                              color: Color.fromARGB(255, 7, 11, 28),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage('assests/js.png'),
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              shadowColor: Color(0xFF131933),
                              elevation: 5,
                              color: Color.fromARGB(255, 7, 11, 28),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage('assests/ts.png'),
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Card(
                              shadowColor: Color(0xFF131933),
                              elevation: 5,
                              color: Color.fromARGB(255, 7, 11, 28),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage('assests/python.png'),
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              shadowColor: Color(0xFF131933),
                              elevation: 5,
                              color: Color.fromARGB(255, 7, 11, 28),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage('assests/java.png'),
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              shadowColor: Color(0xFF131933),
                              elevation: 5,
                              color: Color.fromARGB(255, 7, 11, 28),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage('assests/node.png'),
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              shadowColor: Color(0xFF131933),
                              elevation: 5,
                              color: Color.fromARGB(255, 7, 11, 28),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage('assests/numpy.png'),
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              shadowColor: Color(0xFF131933),
                              elevation: 5,
                              color: Color.fromARGB(255, 7, 11, 28),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage('assests/firebase.png'),
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              shadowColor: Color(0xFF131933),
                              elevation: 5,
                              color: Color.fromARGB(255, 7, 11, 28),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage('assests/anaconda.png'),
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 700,
                    height: 150,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "IDEs and Softwares",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                              color: Colors.white54),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Card(
                              shadowColor: Color(0xFF131933),
                              elevation: 5,
                              color: Color.fromARGB(255, 7, 11, 28),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage('assests/git.png'),
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              shadowColor: Color(0xFF131933),
                              elevation: 5,
                              color: Color.fromARGB(255, 7, 11, 28),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage('assests/vscode.png'),
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              shadowColor: Color(0xFF131933),
                              elevation: 5,
                              color: Color.fromARGB(255, 7, 11, 28),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage('assests/firebase.png'),
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              shadowColor: Color(0xFF131933),
                              elevation: 5,
                              color: Color.fromARGB(255, 7, 11, 28),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage(
                                          'assests/visual_studio.png'),
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              shadowColor: Color(0xFF131933),
                              elevation: 5,
                              color: Color.fromARGB(255, 7, 11, 28),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage('assests/firebase.png'),
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              shadowColor: Color(0xFF131933),
                              elevation: 5,
                              color: Color.fromARGB(255, 7, 11, 28),
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image(
                                      image: AssetImage('assests/anaconda.png'),
                                      height: 70,
                                      width: 70,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              height: 650,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF131933),
                    Color.fromARGB(255, 7, 11, 28),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    "Projects",
                    style: TextStyle(
                        fontSize: 40,
                        color: Color(0xff28b67e),
                        fontWeight: FontWeight.w700),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Project 1",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Color(0xff28b67e),
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                " Healthcare App UI Design",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: const Color.fromARGB(
                                        255, 243, 243, 243),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Container(
                                width: 400,
                                height: 400,
                                child: Text(
                                  "Explore my Java-based healthcare app on Android, boasting robust Firebase authentication for secure login/signup. Navigate doctor profiles effortlessly, scheduling appointments for a seamless patient journey. With optimized Firebase integration, enjoy real-time data sync and reliability. Embracing user convenience, the app offers intuitive UI design and smooth navigation, enhancing engagement. Witness the seamless synergy of Java, Android, and Firebase in delivering a tailored healthcare solution. Dive into my portfolio for more.",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white70),
                                ),
                              )
                            ]),
                      ),
                      Card(
                        shadowColor: Color(0xff28b67e),
                        elevation: 5,
                        color: Color.fromARGB(255, 7, 11, 28),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage('assests/ts.png'),
                                height: 400,
                                width: 400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              height: 600,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF131933),
                    Color.fromARGB(255, 7, 11, 28),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Card(
                        shadowColor: Color(0xff28b67e),
                        elevation: 5,
                        color: Color.fromARGB(255, 7, 11, 28),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage('assests/ts.png'),
                                height: 400,
                                width: 400,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Project 2",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Color(0xff28b67e),
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                " QuizUp App UI Design",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: const Color.fromARGB(
                                        255, 243, 243, 243),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Container(
                                width: 400,
                                height: 400,
                                child: Text(
                                  "Dive into an engaging world of knowledge with my Quiz app 'QuizUP' designed to captivate students and foster learning. Experience an attractive interface reminiscent of games, enticing users to explore and expand their knowledge. With a focus on intuitive design, users can navigate seamlessly through a variety of quizzes, enhancing their understanding in a fun and interactive way. Discover a new dimension of learning and enjoyment as you delve into topics with ease. Download now and embark on a journey of discovery!",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white70),
                                ),
                              )
                            ]),
                      ),
                    ],
                  )
                ],
              ),
              height: 600,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF131933),
                    Color.fromARGB(255, 7, 11, 28),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Project 3",
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Color(0xff28b67e),
                                    fontWeight: FontWeight.w700),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                " Islamic Learning App UI Design (In Progress)",
                                style: TextStyle(
                                    fontSize: 25,
                                    color: const Color.fromARGB(
                                        255, 243, 243, 243),
                                    fontWeight: FontWeight.w500),
                              ),
                              SizedBox(
                                height: 40,
                              ),
                              Container(
                                width: 400,
                                height: 400,
                                child: Text(
                                  "Embark on a transformative journey of Islamic learning with our Flutter-powered app. Immerse yourself in a rich tapestry of knowledge, conveniently accessible at your fingertips. Explore diverse topics of Islamic teachings, from Quranic studies to Hadith, with interactive modules designed to engage and enlighten learners of all levels. With user-friendly navigation and immersive content, our app offers a seamless experience for deepening your understanding of Islam. Embrace the convenience of modern technology as you embark on a path of spiritual growth and enlightenment.",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w300,
                                      color: Colors.white70),
                                ),
                              )
                            ]),
                      ),
                      Card(
                        shadowColor: Color(0xff28b67e),
                        elevation: 5,
                        color: Color.fromARGB(255, 7, 11, 28),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image(
                                image: AssetImage('assests/ts.png'),
                                height: 400,
                                width: 400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              height: 600,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF131933),
                    Color.fromARGB(255, 7, 11, 28),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Text(
                    "Certificates",
                    style: TextStyle(
                        fontSize: 40,
                        color: Color(0xff28b67e),
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              height: 600,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color(0xFF131933),
                    Color.fromARGB(255, 7, 11, 28),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }
}
