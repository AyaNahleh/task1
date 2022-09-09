import 'package:flutter/material.dart';

class EventsAndExperiences extends StatelessWidget {
  const EventsAndExperiences({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          EventsAndExperiencesItems(
            title: 'Working Parents',
            description: 'Understanding of human behaviour',
            lessonsCount: '13 Feb, Sunday ',
            imagePath: 'assets/images/young-woman-doing-natarajasana-exercise 1.jpg',
          ),
          EventsAndExperiencesItems(
            title: 'Working Parents',
            description: 'Understanding of human behaviour',
            lessonsCount: '13 Feb, Sunday',
            imagePath: 'assets/images/young-woman-doing-natarajasana-exercise 1.jpg',
          ),

        ],
      ),
    );
  }
}

class EventsAndExperiencesItems extends StatelessWidget {
  const EventsAndExperiencesItems({
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
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [
                    Text(title,style: Theme.of(context).textTheme.bodyText2,),
                    Text(description,style: Theme.of(context).textTheme.bodyText1,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(lessonsCount,style: Theme.of(context).textTheme.headline2,
                        ),
                        OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Colors.blue,width: 1),
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18))
                          ),
                          onPressed: (){},
                            child: const Text('Book'),
                        )

                      ],
                    )
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

