import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../constants/common/colors.dart';

class ContainerImage extends StatelessWidget {
  final String name, content, image;
  const ContainerImage({
    Key? key,
    required this.name,
    required this.content,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        height: 176,
        width: 158,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: backgroundColor),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: SizedBox(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                    Text(name,
                        style: const TextStyle(fontSize: 35, color: textColorWhite)),
                    Text(content,
                        style: const TextStyle(fontSize: 14, color: textColorWhite)),
                  ])),
            ),
            Container(
                alignment: Alignment.bottomRight,
                child: Image.asset(
                  image,
                  height: 99,
                  width: 120,
                ))
          ],
        ),
      ),
    );
  }
}
