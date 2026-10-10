import 'package:flutter/material.dart';
import 'package:isd_project/constants.dart';
import 'package:isd_project/models/product.dart';
import 'package:isd_project/widgets/details/color_dot.dart';
import 'package:isd_project/widgets/details/product_image.dart';

class DetailsBody extends StatelessWidget {
  final Product product;

  const DetailsBody({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;

    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5,
            ),
            decoration: const BoxDecoration(
              color: kBackgroundColor,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
                bottomRight: Radius.circular(50),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: ProductImage(
                    size: size,
                    image: product.image,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: kDefaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ColorDot(fillColor: kTextLightColor, isSelected: true),
                      ColorDot(fillColor: Colors.blue, isSelected: false),
                      ColorDot(fillColor: Colors.red, isSelected: false),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: kDefaultPadding / 2,
                  ),
                  child: Text(
                    product.title,
                    style: textTheme.titleLarge,
                  ),
                ),
                Text(
                  'السعر: \$${product.price}',
                  style: const TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                    color: kSecondaryColor,
                  ),
                ),
                const SizedBox(height: kDefaultPadding),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 2),
            padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding * 1.5,
              vertical: kDefaultPadding / 2,
            ),
            child: Text(
              product.description,
              style: const TextStyle(color: Colors.white, fontSize: 19),
            ),
          ),
        ],
      ),
    );
  }
}