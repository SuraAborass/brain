import 'package:brain/Constants/font_styles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constants/colors.dart';

class Project extends StatelessWidget {
  const Project({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final deviceSize=MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(expandedHeight: 300,
          pinned: true,
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          flexibleSpace: FlexibleSpaceBar(
            background: Hero(
              tag: "to project",
              child: Stack(
                children: [
                  Container(
                    height:320,
                    decoration: BoxDecoration(
                        color: BrainColors.primary,
                      borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))
                    ),
                  ),
                  Container(
                    height:300,
                    decoration: BoxDecoration(
                        image: DecorationImage(image:AssetImage('assets/images/Mockup6.png'),fit: BoxFit.cover),
                        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20))

                    ),
                  ),
                ],
              ),
            ),
          ), ),
          SliverList(delegate: SliverChildListDelegate([
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: const [
                  Icon(Icons.task,color: BrainColors.secondary,),
                  Text("Tasks ",style: title8,),
                  Text("(3 of 5 Done)",style: title9,)
                ],
              ),
            ),
            Column(
              children: [
                Padding(padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: const BoxDecoration(color: BrainColors.secondary,
                                borderRadius: BorderRadius.all(Radius.circular(10.0))),
                            height: 63,
                            width: deviceSize.width,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              //margin: const EdgeInsets.all(8.0),
                              decoration: const BoxDecoration(color: BrainColors.White,
                                  borderRadius: BorderRadius.all(Radius.circular(100.0))),
                              height: 51 ,
                              width: 51 ,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: const BoxDecoration(color: BrainColors.secondary,
                                borderRadius: BorderRadius.all(Radius.circular(10.0))),
                            height: 63,
                            width: deviceSize.width,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              //margin: const EdgeInsets.all(8.0),
                              decoration: const BoxDecoration(color: BrainColors.White,
                                  borderRadius: BorderRadius.all(Radius.circular(100.0))),
                              height: 51 ,
                              width: 51 ,
                              //child: Image.asset('assets/images/logo-dark.png'),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: const BoxDecoration(color: BrainColors.secondary,
                                borderRadius: BorderRadius.all(Radius.circular(10.0))),
                            height: 63,
                            width: deviceSize.width,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              //margin: const EdgeInsets.all(8.0),
                              decoration: const BoxDecoration(color: BrainColors.White,
                                  borderRadius: BorderRadius.all(Radius.circular(100.0))),
                              height: 51 ,
                              width: 51 ,
                              //child: Image.asset('assets/images/logo-dark.png'),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: const BoxDecoration(color: BrainColors.secondary,
                                borderRadius: BorderRadius.all(Radius.circular(10.0))),
                            height: 63,
                            width: deviceSize.width,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              //margin: const EdgeInsets.all(8.0),
                              decoration: const BoxDecoration(color: BrainColors.White,
                                  borderRadius: BorderRadius.all(Radius.circular(100.0))),
                              height: 51 ,
                              width: 51 ,
                              //child: Image.asset('assets/images/logo-dark.png'),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: const BoxDecoration(color: BrainColors.secondary,
                                borderRadius: BorderRadius.all(Radius.circular(10.0))),
                            height: 63,
                            width: deviceSize.width,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              //margin: const EdgeInsets.all(8.0),
                              decoration: const BoxDecoration(color: BrainColors.White,
                                  borderRadius: BorderRadius.all(Radius.circular(100.0))),
                              height: 51 ,
                              width: 51 ,
                              //child: Image.asset('assets/images/logo-dark.png'),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: const BoxDecoration(color: BrainColors.secondary,
                                borderRadius: BorderRadius.all(Radius.circular(10.0))),
                            height: 63,
                            width: deviceSize.width,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              //margin: const EdgeInsets.all(8.0),
                              decoration: const BoxDecoration(color: BrainColors.White,
                                  borderRadius: BorderRadius.all(Radius.circular(100.0))),
                              height: 51 ,
                              width: 51 ,
                              //child: Image.asset('assets/images/logo-dark.png'),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: const BoxDecoration(color: BrainColors.secondary,
                                borderRadius: BorderRadius.all(Radius.circular(10.0))),
                            height: 63,
                            width: deviceSize.width,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              //margin: const EdgeInsets.all(8.0),
                              decoration: const BoxDecoration(color: BrainColors.White,
                                  borderRadius: BorderRadius.all(Radius.circular(100.0))),
                              height: 51 ,
                              width: 51 ,
                              //child: Image.asset('assets/images/logo-dark.png'),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: const BoxDecoration(color: BrainColors.secondary,
                                borderRadius: BorderRadius.all(Radius.circular(10.0))),
                            height: 63,
                            width: deviceSize.width,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              //margin: const EdgeInsets.all(8.0),
                              decoration: const BoxDecoration(color: BrainColors.White,
                                  borderRadius: BorderRadius.all(Radius.circular(100.0))),
                              height: 51 ,
                              width: 51 ,
                              //child: Image.asset('assets/images/logo-dark.png'),

                            ),
                          )
                        ],
                      ),
                    ],
                  ),)
              ],
            )
          ],),),
        ],
      ),
    );
  }
}
