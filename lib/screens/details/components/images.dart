import 'package:flutter/material.dart';
import 'package:finalproj/models/rent.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class RentCarImages extends StatefulWidget {
  const RentCarImages({
    Key? key,
    required this.rentcar,
  }) : super(key: key);

  final RentCar rentcar;

  @override
  _RentcarImagesState createState() => _RentcarImagesState();
}

class _RentcarImagesState extends State<RentCarImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(238), // TODO : DEAULT IS 238
          child: AspectRatio(
            aspectRatio: 1,
            child: Hero(
              tag: widget.rentcar.id.toString(),
              child: Image.asset(widget.rentcar.images[selectedImage]),
            ),
          ),
        ),
        // SizedBox(height: getProportionateScreenWidth(20)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.rentcar.images.length,
                (index) => buildSmallProductPreview(index)),
          ],
        )
      ],
    );
  }

  GestureDetector buildSmallProductPreview(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedImage = index;
        });
      },
      child: AnimatedContainer(
        duration: defaultDuration,
        margin: EdgeInsets.only(right: 15),
        padding: EdgeInsets.all(8),
        height: getProportionateScreenWidth(48),
        width: getProportionateScreenWidth(48),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
              color: kPrimaryColor.withOpacity(selectedImage == index ? 1 : 0)),
        ),
        child: Image.asset(widget.rentcar.images[index]),
      ),
    );
  }
}
