import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final double rating;
  final double currentPrice;
  final double originalPrice;
  final String discountLabel;

  ProductCard({
    required this.imagePath,
    required this.title,
    required this.rating,
    required this.currentPrice,
    required this.originalPrice,
    required this.discountLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imagePath,
                  height: 150,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                top: 8,
                left: 8,
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    discountLabel,
                    style: TextStyle(color: Colors.white, fontSize: 10),
                  ),
                ),
              ),
              Positioned(
                top: 8,
                right: 8,
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.star, color: Colors.green, size: 16),
              SizedBox(width: 4),
              Text(
                rating.toString(),
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
              ),
              Spacer(),
              Icon(Icons.lock_outline, color: Colors.grey, size: 16),
            ],
          ),
          SizedBox(height: 8),
          Text(
            title,
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 4),
          Row(
            children: [
              Text(
                'SAR ${currentPrice.toStringAsFixed(2)}',
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.black),
              ),
              SizedBox(width: 8),
              Text(
                'SAR ${originalPrice.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
          Text(
            '25% OFF',
            style: TextStyle(fontSize: 12, color: Colors.green),
          ),
        ],
      ),
    );
  }
}
