import 'package:flutter/material.dart';
import 'package:twitter_clone/screens/user_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isRecommendActive = true;
  bool isFollowActive = false;

  void toggleRecommendState() {
    setState(() {
      isRecommendActive = true;
      isFollowActive = false;
    });
  }

  void toggleFollowState() {
    setState(() {
      isRecommendActive = false;
      isFollowActive = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 2,
        backgroundColor: Colors.black,
        title: const Icon(
          Icons.clear_outlined,
          size: 50,
        ),
        leading: IconButton(
          icon: const Icon(Icons.person),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const UserScreen(),
              ),
            );
          },
          iconSize: 40,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.settings_outlined,
            ),
            iconSize: 40,
          )
        ],
        // shape 밑에 줄 추가
        // shape: const Border(
        //   bottom: BorderSide(
        //     color: Colors.grey,
        //   ),
        // ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  onPressed: toggleRecommendState,
                  child: Text(
                    "recommend",
                    style: TextStyle(
                      fontSize: 20,
                      color: isRecommendActive ? Colors.white : Colors.grey,
                      fontWeight: isRecommendActive
                          ? FontWeight.bold
                          : FontWeight.normal,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: toggleFollowState,
                  child: Text(
                    "Follow",
                    style: TextStyle(
                      fontSize: 20,
                      color: isFollowActive ? Colors.white : Colors.grey,
                      fontWeight:
                          isFollowActive ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Divider 기준선 추가하기
          const Divider(
            thickness: 0.3,
            height: 0.5,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}
