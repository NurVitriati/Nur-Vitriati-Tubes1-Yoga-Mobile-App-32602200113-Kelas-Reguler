import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tubes_aplikasi/features/home/viewmodels/home_viewmodel.dart';
import 'package:tubes_aplikasi/features/home/widgets/category_card_widget.dart';
import 'package:tubes_aplikasi/features/home/widgets/instructor_card_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  final PageController _pageController = PageController();

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
    _pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeViewModel()..loadInstructors(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background2.png'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const CircleAvatar(
                      radius: 24,
                      backgroundImage: AssetImage('assets/images/avatar.jpg'),
                    ),
                    Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.search, color: Colors.black),
                          onPressed: () {
                            // Add search action
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.notifications,
                              color: Colors.black),
                          onPressed: () {
                            // Add notification action
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: PageView(
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _currentIndex = index;
                    });
                  },
                  children: [
                    Consumer<HomeViewModel>(
                        builder: (context, viewModel, child) {
                      if (viewModel.isLoading) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      return SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Yoga is a gift to keep you fit",
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black87,
                                ),
                              ),
                              const SizedBox(height: 16),
                              const Text(
                                'Find what moves you',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),
                              ),
                              const SizedBox(height: 16),
                              SizedBox(
                                height: 120,
                                child: ListView(
                                  scrollDirection: Axis.horizontal,
                                  children: [
                                    CategoryCardWidget(
                                      imageUrl: 'assets/images/class.jpg',
                                      title: 'Classes',
                                      onTap: () {},
                                    ),
                                    const SizedBox(width: 16),
                                    CategoryCardWidget(
                                      imageUrl: 'assets/images/meditation.jpg',
                                      title: 'Meditations',
                                      onTap: () {},
                                    ),
                                    const SizedBox(width: 16),
                                    CategoryCardWidget(
                                      imageUrl: 'assets/images/gerakan1.jpg',
                                      title: 'Pranayama',
                                      onTap: () {},
                                    ),
                                    const SizedBox(width: 16),
                                    CategoryCardWidget(
                                      imageUrl: 'assets/images/gerakan2.jpg',
                                      title: 'Training Program',
                                      onTap: () {},
                                    ),
                                  ],
                                ),
                              ),
                              const SizedBox(height: 32),
                              const Text(
                                'Our instructors',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black54,
                                ),
                              ),
                              const SizedBox(height: 16),
                              SizedBox(
                                height: 150,
                                child: viewModel.instructors.isNotEmpty
                                    ? ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        itemCount: viewModel.instructors.length,
                                        itemBuilder: (context, index) {
                                          final instructor =
                                              viewModel.instructors[index];
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                right: 16.0),
                                            child: InstructorCardWidget(
                                              imageUrl: instructor.imageUrl,
                                              name: instructor.name,
                                            ),
                                          );
                                        },
                                      )
                                    : const Center(
                                        child: Text(
                                          'No instructors available at the moment.',
                                          style: TextStyle(color: Colors.grey),
                                        ),
                                      ),
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/background2.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: const Center(
                        child: Text(
                          'Self Improvement Content',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/background2.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Yoga Activity Details',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            const SizedBox(height: 16),
                            Expanded(
                              child: ListView(
                                children: const [
                                  YogaActivityCard(
                                    activityName: "Morning Yoga",
                                    duration: "30 minutes",
                                    caloriesBurned: "200 kcal",
                                    programName: "Beginner Program",
                                  ),
                                  YogaActivityCard(
                                    activityName: "Strength Yoga",
                                    duration: "45 minutes",
                                    caloriesBurned: "300 kcal",
                                    programName: "Strength Program",
                                  ),
                                  YogaActivityCard(
                                    activityName: "Evening Relax Yoga",
                                    duration: "20 minutes",
                                    caloriesBurned: "150 kcal",
                                    programName: "Relax Program",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            color: Color(0xFFFFD2A3),
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(
                  Icons.home_rounded,
                  color: _currentIndex == 0 ? Colors.orange : Colors.white60,
                ),
                onPressed: () => onTabTapped(0),
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.orange,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.nightlight_round,
                    color: Colors.white,
                  ),
                  onPressed: () => onTabTapped(1),
                ),
              ),
              IconButton(
                icon: Icon(
                  Icons.menu,
                  color: _currentIndex == 2 ? Colors.orange : Colors.white60,
                ),
                onPressed: () => onTabTapped(2),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class YogaActivityCard extends StatelessWidget {
  final String activityName;
  final String duration;
  final String caloriesBurned;
  final String programName;

  const YogaActivityCard({
    Key? key,
    required this.activityName,
    required this.duration,
    required this.caloriesBurned,
    required this.programName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              activityName,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 8),
            Text("Duration: $duration"),
            Text("Calories Burned: $caloriesBurned"),
            Text("Program: $programName"),
          ],
        ),
      ),
    );
  }
}
