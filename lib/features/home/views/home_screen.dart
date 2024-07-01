import 'package:crypto_app/features/home/views/asset_card.dart';
import 'package:crypto_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'asset_row.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Investor,stock',
                fillColor: AppColors.lightBlue.withOpacity(0.6),
                filled: true,
                contentPadding: const EdgeInsets.all(4),
                prefixIcon: const Icon(Icons.search),
                suffixIcon: const Icon(Icons.mic),
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(16)),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Featured Investments',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
            ),
            const SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  AssetCard(
                      title: 'Bitcoin',
                      ticker: 'BTC',
                      backgroundColor: AppColors.lightBlue,
                      asseturl:
                          'https://s2.coinmarketcap.com/static/img/coins/64x64/1.png'),
                  const SizedBox(
                    width: 20,
                  ),
                  AssetCard(
                      title: 'Ethereum',
                      ticker: 'ETH',
                      backgroundColor: AppColors.purple,
                      asseturl:
                          'https://s2.coinmarketcap.com/static/img/coins/64x64/1027.png'),
                  const SizedBox(
                    width: 20,
                  ),
                  AssetCard(
                      title: 'DogeCoin',
                      ticker: 'DOGE',
                      backgroundColor: AppColors.pink,
                      asseturl:
                          'https://s2.coinmarketcap.com/static/img/coins/64x64/74.png'),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                Text(
                  'My portfolio',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
                ),
                Spacer(),
                Text(
                  'View all',
                  style: TextStyle(fontSize: 15),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const SingleChildScrollView(
              child: Column(
                children: [
                  AssetRow(
                    title: 'Bitcoin',
                    ticker: 'BTC',
                    asseturl:
                        'https://s2.coinmarketcap.com/static/img/coins/64x64/1.png',
                    price: '\$ 40,000',
                    percentageChange: '+ 2.5%',
                  ),
                  SizedBox(
                    height: 14,
                  ),
                  AssetRow(
                      title: 'Ethereum',
                      ticker: 'ETH',
                      asseturl:
                          'https://s2.coinmarketcap.com/static/img/coins/64x64/1027.png',
                      price: '\$ 4,000',
                      percentageChange: '+ 0%'),
                  SizedBox(
                    height: 14,
                  ),
                  AssetRow(
                      title: 'DogeCoin',
                      ticker: 'DOGE',
                      asseturl:
                          'https://s2.coinmarketcap.com/static/img/coins/64x64/74.png',
                      price: '\$ 0.03',
                      percentageChange: '+ 20.5%'),
                  SizedBox(
                    height: 14,
                  ),
                  AssetRow(
                      title: 'LiteCoin',
                      ticker: 'LTC',
                      asseturl:
                          'https://s2.coinmarketcap.com/static/img/coins/64x64/2.png',
                      price: '\$ 74',
                      percentageChange: '+ 5%'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
