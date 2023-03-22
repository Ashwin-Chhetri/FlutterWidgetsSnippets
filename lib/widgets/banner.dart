import 'package:flutter/material.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Banner"),
        ),
        body: Center(
          child: Container(
              margin: const EdgeInsets.all(10.0),
              child: ClipRect(
                child: Banner(
                  location: BannerLocation.topEnd,
                  message: "25% Off",
                  child: Container(
                      color: Colors.grey,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.network(
                                "https://docs.flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png"),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Get your laptop servicing Now!',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                ),
                                ElevatedButton(
                                    onPressed: () {},
                                    child: const Text('Register Now'))
                              ],
                            )
                          ],
                        ),
                      )),
                ),
              )),
        ));
  }
}
