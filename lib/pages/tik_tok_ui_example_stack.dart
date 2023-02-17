import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TikTokUiExampleStack extends StatelessWidget {
  const TikTokUiExampleStack({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
    );
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              left: 20,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(Icons.close),
                  Row(
                    children: const [
                      Icon(Icons.music_note),
                      Text('Sound'),
                    ],
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * .42,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: const [
                            Icon(Icons.flip),
                            Text('Flip'),
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(Icons.speed),
                            Text('Speed'),
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(Icons.card_membership),
                            Text('Beauty'),
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(Icons.filter),
                            Text('Filters'),
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(Icons.timelapse),
                            Text('Time'),
                          ],
                        ),
                        Column(
                          children: const [
                            Icon(Icons.flash_on),
                            Text('Flash'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 20,
              right: 20,
              left: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 5.0),
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Icon(
                          Icons.image,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      const Text('Effects'),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.all(5.0),
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Colors.red.withOpacity(.5),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(50),
                          border: Border.all(
                            width: 2,
                            color: Colors.black,
                          )),
                    ),
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 5.0),
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Icon(
                          Icons.upload,
                          size: 35,
                          color: Colors.white,
                        ),
                      ),
                      const Text('Upload'),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
