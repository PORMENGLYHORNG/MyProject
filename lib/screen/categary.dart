import 'package:flashy_tab_bar2/flashy_tab_bar2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:piseth_phon_shop/screen/welcom_screen.dart';

class Categary extends StatefulWidget {
  const Categary({super.key});

  @override
  State<Categary> createState() => _CategaryState();
}

class _CategaryState extends State<Categary> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "ប្រភេទទូរស័ព្ធ",
          style: GoogleFonts.aBeeZee(
            color: const Color.fromARGB(255, 0, 0, 0),
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => WelcomScreen()),
            );
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.qr_code_scanner_rounded),
          ),
        ],
      ),
      bottomNavigationBar: FlashyTabBar(
        selectedIndex: _selectedIndex,
        showElevation: true,
        onItemSelected:
            (index) => setState(() {
              _selectedIndex = index;
            }),
        items: [
          FlashyTabBarItem(
            icon: Icon(Icons.home_outlined),
            title: Text('Home'),
          ),
          FlashyTabBarItem(icon: Icon(Icons.settings), title: Text('Settings')),
          FlashyTabBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            title: Text('Shop'),
          ),
        ],
      ),
      body: ListView(
        children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.blue),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      children: [
                        Icon(Icons.search, color: Colors.grey),
                        const SizedBox(width: 10),
                        Expanded(
                          child: TextField(
                            decoration: const InputDecoration(
                              hintText: 'ការស្វែងរក',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(right: 12),
                child: CircleAvatar(
                  radius: 25,
                  backgroundColor: Colors.teal,
                  child: IconButton(
                    onPressed: () {
                      // Navigator.pushReplacement(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => WelcomScreen()),
                      // );
                    },
                    icon: Icon(Icons.grid_view, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Container(
                        height: 195,
                        width: 350,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color.fromARGB(255, 206, 18, 18),
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://tomindia.s3.ap-south-1.amazonaws.com/prod/uploads/image/KQNGJTvFqkGEkibbeNOE_Apple-iPhone-16-Pro-Max_TomorrowsIndia.jpg',
                                  fit: BoxFit.cover,
                                  height: 195,
                                  width: double.infinity,
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                right: 5,
                                child: Center(
                                  child: SizedBox(
                                    width: 120,
                                    height: 36,
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'មើលទាំងអស់',
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.red[600],
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        height: 195,
                        width: 350,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Stack(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.network(
                                  'https://static.vecteezy.com/system/resources/previews/001/084/303/non_2x/happy-father-s-day-sale-banner-smart-phone-design-vector.jpg',
                                  fit: BoxFit.cover,
                                  width: double.infinity,
                                  height: 195,
                                ),
                              ),
                              Positioned(
                                bottom: 10,
                                right: 5,
                                child: Center(
                                  child: SizedBox(
                                    width: 120,
                                    height: 36,
                                    child: TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        'មើលទាំងអស់',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      style: TextButton.styleFrom(
                                        foregroundColor: Colors.yellow[400],
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                            18,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best Saler",
                      style: TextStyle(
                        fontSize: 20,
                        fontFamily: "Raleway-Italic.ttf",
                        color: Colors.deepPurple[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: TextButton(
                        onPressed: () {},
                        child: Text("See All", style: TextStyle(fontSize: 18)),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 6),
                child: Container(
                  height: 195,
                  width: 120,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 206, 18, 18),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://i5.walmartimages.com/seo/Verizon-Apple-iPhone-15-Plus-256GB-Green_6d244cdd-91b7-459d-a06f-ac2fb4985ac6.cd60b0df29b9f2aa78eb5c0cafe3a346.jpeg?odnHeight=768&odnWidth=768&odnBg=FFFFFF',
                            fit: BoxFit.cover,
                            height: 195,
                            width: double.infinity,
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 5,
                          child: Center(
                            child: SizedBox(
                              width: 120,
                              height: 36,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'មើលទាំងអស់',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.red[600],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 10),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Container(
                  height: 200,
                  width: 120,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://www.upfrica.com/rails/active_storage/representations/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBBeDhRQVE9PSIsImV4cCI6bnVsbCwicHVyIjoiYmxvYl9pZCJ9fQ==--5a7efeda642783ff0c1c4af34b7d9f795a6959cd/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaDdCem9MWm05eWJXRjBTU0lJYW5CbkJqb0dSVlE2REdOdmJuWmxjblE2Q1hkbFluQT0iLCJleHAiOm51bGwsInB1ciI6InZhcmlhdGlvbiJ9fQ==--6ebee877eb446e7a3476cc7c3aed153245b974c5/techno-phone-r30pro-smartphone-8gb256gb-62-inch-android-100.jpg?h=1400',
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 120,
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 5,
                          child: Center(
                            child: SizedBox(
                              width: 120,
                              height: 36,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'មើលទាំងអស់',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.yellow[400],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Column(
                              children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 116,right: 15),
                                    child: Text("\$130",
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                   ),
                                  ), 
                                   Text(
                                      "Vivo A17",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 12,
                                  ),
                                ),   
                              ],
                            ) 
                          ]
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5),
                child: Container(
                  height: 195,
                  width: 120,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.network(
                            'https://www.samsungplaza.com.np/public/files/A46BBED0905004D-010-galaxy-a36-5g-awesomeblack-front.jpgq',
                            fit: BoxFit.cover,
                            width: double.infinity,
                            height: 195,
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 5,
                          child: Center(
                            child: SizedBox(
                              width: 120,
                              height: 36,
                              child: TextButton(
                                onPressed: () {},
                                child: Text(
                                  'មើលទាំងអស់',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                style: TextButton.styleFrom(
                                  foregroundColor: Colors.yellow[400],
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(18),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}




