import 'package:card_app/components/onHover.dart';
import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String? title;
  final String? imgLink;
  const MyCard({
    Key? key,
    this.title,
    this.imgLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OnHover(builder: (isHover) {
      return Container(
        width: 270,
        height: 235,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
                blurRadius: 15,
                spreadRadius: !isHover ? 2 : 10,
                color: Colors.black.withOpacity(.1))
          ],
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ImageWidget(image: imgLink),
            TextWidget(title: title),
          ],
        ),
      );
    });
  }
}

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
    required this.title,
  });

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 8.0,
          bottom: 8.0,
          left: 24,
        ),
        child: Text(
          title ?? '',
          style: const TextStyle(
            color: Color(0xff040e17),
            fontWeight: FontWeight.w700,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class ImageWidget extends StatelessWidget {
  const ImageWidget({
    super.key,
    required this.image,
  });

  final String? image;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
            color: const Color(0xffA4F6C4),
            image: DecorationImage(
              image: NetworkImage(
                image.toString(),
              ),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(12),
          ),
        ),
      ),
    );
  }
}
