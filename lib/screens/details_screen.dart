import 'package:flutter/material.dart';
import 'package:isd_project/constants.dart';
import 'package:isd_project/models/product.dart';
import 'package:isd_project/widgets/details/details_body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: _buildAppBar(context),
      body: DetailsBody(product: product),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kBackgroundColor,
      leading: IconButton(
        padding: const EdgeInsets.only(right: kDefaultPadding),
        icon: const Icon(Icons.arrow_back, color: kPrimaryColor),
        onPressed: () => Navigator.pop(context),
      ),
      centerTitle: false,
      title: Text(
        'رجوع',
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    );
  }
}