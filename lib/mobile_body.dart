import 'package:flutter/material.dart';
class MobileBody extends StatefulWidget {
  const MobileBody({Key? key}) : super(key: key);

  @override
  State<MobileBody> createState() => _MobileBodyState();
}

class _MobileBodyState extends State<MobileBody> {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: height*0.3,
                  width: width,
                  child: Card(
                    clipBehavior: Clip.none,
                    color: Colors.red[300],
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            constraints: const BoxConstraints(
                              maxHeight: 80,
                              maxWidth: 200
                            ),
                            alignment: Alignment.topLeft,
                            color: Colors.grey,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Container(
                            width: width*0.9,
                            height: 80,
                            color: Colors.green[400],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
               const SizedBox(height: 40,),
               Padding(
                 padding: const EdgeInsets.all(10.0),
                 child: Stack(
                   clipBehavior: Clip.none,
                   alignment: Alignment.topCenter,
                   children: [
                     SizedBox(
                       height: height*0.25,
                       width: width,
                       child: Card(
                         color: Colors.red[300],
                         child: Column(
                           mainAxisAlignment: MainAxisAlignment.end,
                           children: [
                             Padding(
                               padding: const EdgeInsets.all(10.0),
                               child: SizedBox(
                                 height: 80,
                                 width: width * 0.9,
                                 child: Card(
                                   color: Colors.green[400],
                                 ),
                               ),
                             ),
                           ],
                         ),
                       ),
                     ),
                     Positioned(
                       bottom: 135,
                       child: Container(
                        constraints: const BoxConstraints(
                          maxWidth: 200,
                          maxHeight: 80,
                        ),
                         alignment: Alignment.topCenter,
                         color: Colors.grey,
                       ),
                     )
                   ],
                 ),
               )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
