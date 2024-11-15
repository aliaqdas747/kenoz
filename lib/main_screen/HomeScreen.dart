import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:kenoz/utils/CategoryBox.dart';
import 'package:kenoz/utils/Custom_roundedBox.dart';
import 'package:kenoz/utils/ProductCard.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 55, left: 24, ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 4, child: CustomTextField(hintText: 'Search here')),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(right: 20),
                      height: 50,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF5F5F5), // Light pink color
                        borderRadius:
                            BorderRadius.circular(10), // Rounded corners
                      ),
                      child: Icon(
                        Iconsax.heart,
                      ),
                    ),
                  )
                ],
              ),
          
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Shop By Category',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'View all',
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              ),
          
              SizedBox(
                height: 10,
              ),
          
              ///Categories
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
          
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
          
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CategoryItem(imagePath: 'assets/images/person.png', label: 'men’s fashion'),
                            CategoryItem(imagePath: 'assets/images/person.png', label: 'men’s fashion'),
                            CategoryItem(imagePath: 'assets/images/person.png', label: 'men’s fashion'),
                            CategoryItem(imagePath: 'assets/images/person.png', label: 'men’s fashion'),
                            CategoryItem(imagePath: 'assets/images/person.png', label: 'men’s fashion'),
                            CategoryItem(imagePath: 'assets/images/person.png', label: 'men’s fashion'),
          
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CategoryItem(imagePath: 'assets/images/person.png', label: 'men’s fashion'),
                            CategoryItem(imagePath: 'assets/images/person.png', label: 'men’s fashion'),
                            CategoryItem(imagePath: 'assets/images/person.png', label: 'men’s fashion'),
                            CategoryItem(imagePath: 'assets/images/person.png', label: 'men’s fashion'),
                            CategoryItem(imagePath: 'assets/images/person.png', label: 'men’s fashion'),
                            CategoryItem(imagePath: 'assets/images/person.png', label: 'men’s fashion'),
                            CategoryItem(imagePath: 'assets/images/person.png', label: 'men’s fashion'),
          
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
          
          ///
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'flash sale',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                    Text(
                      'See all',
                      style: TextStyle(color: Colors.grey.shade700),
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ProductCard(imagePath: 'assets/images/person.png', title: 'Lounge Pique Terry T-Shirt', rating: 4.5, currentPrice: 250.0, originalPrice: 350.0, discountLabel: 'Sale'),
                    ProductCard(imagePath: 'assets/images/person.png', title: 'Lounge Pique Terry T-Shirt', rating: 4.5, currentPrice: 250.0, originalPrice: 350.0, discountLabel: 'Sale'),
                    ProductCard(imagePath: 'assets/images/person.png', title: 'Lounge Pique Terry T-Shirt', rating: 4.5, currentPrice: 250.0, originalPrice: 350.0, discountLabel: 'Sale'),
                    ProductCard(imagePath: 'assets/images/person.png', title: 'Lounge Pique Terry T-Shirt', rating: 4.5, currentPrice: 250.0, originalPrice: 350.0, discountLabel: 'Sale'),
                    ProductCard(imagePath: 'assets/images/person.png', title: 'Lounge Pique Terry T-Shirt', rating: 4.5, currentPrice: 250.0, originalPrice: 350.0, discountLabel: 'Sale'),
          
                  ],
                ),
              )
          
            ],
          ),
        ),
      ),

 
    );
  }
}
