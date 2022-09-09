import 'package:flutter/material.dart';

class CategoryPrograms extends StatelessWidget {
  const CategoryPrograms({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          ProgramsItems(
            title: 'LIFESTYLE',
            description: 'A complete guide for your new born baby',
            lessonsCount: '16 Lessons',
            imagePath: 'assets/images/Frame 122.jpg',
          ),
          ProgramsItems(
            title: 'Working Parents',
            description: 'Understanding of human behaviour',
            lessonsCount: '12 Lessons',
            imagePath: 'assets/images/Frame 123.jpg',
          ),

        ],
      ),
    );
  }
}
class ProgramsItems extends StatelessWidget {
  const ProgramsItems({
    Key? key, required this.title, required this.description, required this.lessonsCount, required this.imagePath,
  }) : super(key: key);

  final String title;
  final String description;
  final String lessonsCount;
  final String imagePath;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: const EdgeInsets.only(right: 20,bottom: 20),
        width: 250,
        height: 300,
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 10
            )],
            borderRadius: BorderRadius.circular(15)
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15)),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                height: 150,
              ),
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all( 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(title,style:Theme.of(context).textTheme.bodyText2,),
                    Text(description,style:Theme.of(context).textTheme.bodyText1,),
                    Text(lessonsCount,style: Theme.of(context).textTheme.headline2,)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}