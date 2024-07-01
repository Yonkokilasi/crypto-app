import 'package:crypto_app/theme.dart';
import 'package:flutter/material.dart';

class AssetRow extends StatelessWidget {
  const AssetRow(
      {super.key,
      required this.asseturl,
      required this.title,
      required this.ticker,
      required this.price,
      required this.percentageChange});
  final String asseturl;
  final String title;
  final String ticker;
  final String price;
  final String percentageChange;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(asseturl),
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  ticker,
                  style: const TextStyle(fontSize: 16),
                ),
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  price,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                Text(
                  percentageChange,
                  style: const TextStyle(fontSize: 16, color: Colors.green),
                ),
              ],
            )
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        const Divider(
          color: Colors.grey,
          thickness: 0.4,
        )
      ],
    );
  }
}
