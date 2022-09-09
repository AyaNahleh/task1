import 'package:flutter/material.dart';
import 'package:task1/category_programs.dart';
import 'package:task1/events_and_experiences.dart';
import 'package:task1/lessons_category.dart';
//import 'package:flutter_svg/svg.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).primaryColor,
        actions: const [
          Icon(
            Icons.chat_bubble_outline,
            color: Color(0xFF6D747A),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20, left: 20),
            child: Icon(Icons.notifications_none_outlined, color: Color(0xFF6D747A)),
          ),
        ],
        leading: const Icon(
          Icons.align_horizontal_left_rounded,
          color: Color(0xFF6D747A),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: 250,
            width: double.infinity,
            color: Theme.of(context).primaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Text(
                  'Hello, Priya',
                  style: Theme.of(context).textTheme.headline1,
                ),
                 Text(
                  'What do you wanna learn today?',
                  style: Theme.of(context).textTheme.headline2,
                ),
                const SizedBox(
                  height: 70,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ButtonInfo(
                      text: 'Programs',
                      icon: Icons.book,
                    ),
                    ButtonInfo(
                      text: 'Get Help',
                      icon: Icons.help,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    ButtonInfo(
                      text: 'Learn',
                      icon: Icons.menu_book_outlined,
                    ),
                    ButtonInfo(
                      text: 'DD Tracker',
                      icon: Icons.book,
                    ),
                  ],
                ),
              ],
            ),
          ),

          Container(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: const [
                ProgramsBar(title: 'Programs For You'),
                SizedBox(height: 20,),
                CategoryPrograms(),
                ProgramsBar(title: 'Events and experiences'),
                SizedBox(height: 20,),
                EventsAndExperiences(),
                ProgramsBar(title: 'Lessons for you'),
                SizedBox(height: 20,),
                LessonsCategory(),


              ],
            ),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color(0xFF598BED),
        showUnselectedLabels: true,

        unselectedItemColor: const Color(0xFF6D747A),

        items:  const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_book_outlined,),
            label: 'Learn',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hub_outlined),
            label: 'Hub',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline_outlined),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_pin),
            label: 'Profile',
          ),

        ],

      ),
    );

  }
}

class ProgramsBar extends StatelessWidget {
  const ProgramsBar({
    Key? key, required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        ),
        TextButton(
          onPressed: () {},
          child: Row(
            children:  [
              Text(
                'View all',
                style: Theme.of(context).textTheme.headline2,
              ),
              const Icon(
                Icons.arrow_forward,
                color: Color(0xFF6D747A),
              )
            ],
          ),
        ),
      ],
    );
  }
}



class ButtonInfo extends StatelessWidget {
  const ButtonInfo({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);
  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        height: 48,
        width: 180,
        decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: const Color(0xFF598BED))),
        child: Row(
          children: [
            Icon(
              icon,
              color:const Color(0xFF598BED),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodyText2,
            )
          ],
        ),
      ),
    );
  }
}
