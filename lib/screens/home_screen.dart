import 'package:flutter/material.dart';
import 'package:twitter_clone/models/tistory_list_model.dart';
import 'package:twitter_clone/screens/user_screen.dart';
import 'package:twitter_clone/services/tistory_api_service.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Future<TistoryContentList> tistory;

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
  void initState() {
    super.initState();
    tistory = TistoryApiService.getTistoryList();
    print(tistory);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        toolbarHeight: 60,
        elevation: 2,
        backgroundColor: Theme.of(context).colorScheme.background,
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
          const Text(
            "hi",
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
          FutureBuilder(
            future: tistory,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Column(
                  children: [
                    Text(
                      snapshot.data!.url,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      snapshot.data!.count,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      snapshot.data!.page,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      snapshot.data!.page,
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ],
                );
              }
              return const Text(
                "...loading...",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              );
            },
          )
        ],
      ),
    );
  }
}

// 해야할것,
// ListView로 티스토리 리스트 받기 