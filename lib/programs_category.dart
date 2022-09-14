import 'package:flutter/material.dart';
import 'package:task1/models/program.dart';

class CategoryPrograms extends StatefulWidget {
  const CategoryPrograms({Key? key}) : super(key: key);

  @override
  State<CategoryPrograms> createState() => _CategoryProgramsState();
}

class _CategoryProgramsState extends State<CategoryPrograms> {
  late Future<List<Program>> programData;


  @override
  void initState() {
    programData= getProgramInfo() ;
    super.initState();
  }
  @override

  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        // children: const [
        //   ProgramsItems(
        //     title: 'LIFESTYLE',
        //     description: 'A complete guide for your new born baby',
        //     lessonsCount: '16 Lessons',
        //     imagePath: 'assets/images/Frame 122.jpg',
        //   ),
        //   ProgramsItems(
        //     title: 'Working Parents',
        //     description: 'Understanding of human behaviour',
        //     lessonsCount: '12 Lessons',
        //     imagePath: 'assets/images/Frame 123.jpg',
        //   ),
        //
        // ],
        children: [
          FutureBuilder<List<Program>>(
            future: programData,
              builder: (context,snapshot){
                return snapshot.hasData? Expanded(
                  child: SizedBox(
                    // width: MediaQuery.of(context).size.width,
                    height: 300,

                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                        itemCount: snapshot.data!.length,
                        itemBuilder: (context,index){
                          return ProgramsItems(
                              title: snapshot.data![index].category,
                              description: snapshot.data![index].name,
                              lessonsCount: snapshot.data![index].lesson.toString(),
                              imagePath: 'assets/images/Frame 122.jpg');




                        }),
                  ),
                ):const CircularProgressIndicator();

              }),

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
                    Text('$lessonsCount Lesson',style: Theme.of(context).textTheme.headline2,)
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
