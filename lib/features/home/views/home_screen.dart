import 'package:crypto_app/features/home/views/asset_card.dart';
import 'package:crypto_app/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
            )
          ],
        ),
      ),
    );
  }
}
