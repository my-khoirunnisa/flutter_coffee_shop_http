// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop/util/coffee_detail_bottom.dart';
import 'package:flutter_coffee_shop/util/coffee_information.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:flutter_coffee_shop/data/models/product_response_model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    final List size = ['S', 'M', 'L'];
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.black45,
          body: SingleChildScrollView(
            physics: const ScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CoffeeInformation(product: product),
                const SizedBox(height: 135),
                Padding(
                  padding: const EdgeInsets.all(25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Description',
                        style: GoogleFonts.poppins(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        product.attributes.description[0].children[0].text,
                        textAlign: TextAlign.justify,
                        style: GoogleFonts.poppins(),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        'Size',
                        style: GoogleFonts.poppins(
                          color: Colors.grey.shade500,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 10),
                      GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 8.0,
                          childAspectRatio: 2 / 0.65,
                        ),
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Container(
                            decoration: BoxDecoration(
                              // color: Colors.grey.shade900.withOpacity(0.75),
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  color: size[index] == product.attributes.size
                                      ? Colors.orange
                                      : Colors.grey.shade900,
                                  width: 1),
                              color: size[index] == product.attributes.size
                                  ? Colors.transparent
                                  : Colors.grey.shade900,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 50),
                              child: Text(
                                size[index],
                                style: GoogleFonts.poppins(fontSize: 16),
                              ),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: CoffeeDetailBottom(product: product)),
    );
  }
}
