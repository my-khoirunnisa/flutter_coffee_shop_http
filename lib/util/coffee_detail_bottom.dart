import 'package:flutter/material.dart';
import 'package:flutter_coffee_shop/data/models/product_response_model.dart';
import 'package:flutter_coffee_shop/pages/edit_page.dart';
import 'package:google_fonts/google_fonts.dart';

class CoffeeDetailBottom extends StatelessWidget {
  const CoffeeDetailBottom({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Price',
                style: GoogleFonts.poppins(
                  color: Colors.grey.shade500,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                children: [
                  Text(
                    '\$ ',
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      color: Colors.orange,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    product.attributes.price.toString(),
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (builder) {
                return const EditPage();
              }));
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange.shade700,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              child: Text(
                'Edit Product',
                style: GoogleFonts.poppins(fontSize: 18, color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
