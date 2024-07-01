import 'package:crypto_app/theme.dart';
import 'package:flutter/material.dart';

class AssetCard extends StatelessWidget {
  const AssetCard(
      {super.key,
      required this.asseturl,
      required this.title,
      required this.backgroundColor,
      required this.ticker});
  final String asseturl;
  final String title;
  final String ticker;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: backgroundColor,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            asseturl,
            height: 40,
            width: 40,
          ),
          const Spacer(),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(
            ticker,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
