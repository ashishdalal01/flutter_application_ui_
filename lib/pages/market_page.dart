import 'package:flutter/material.dart';
import 'package:flutter_application_ui/modles/marketplace_model.dart';

class MarketPage extends StatefulWidget {
  const MarketPage({super.key});

  @override
  State<MarketPage> createState() => _MarketPageState();
}

class _MarketPageState extends State<MarketPage> {
  @override
  Widget build(BuildContext context) {
  
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 10.0,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Market Place',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                child: IconButton(
                  icon: const Icon(
                    Icons.search_outlined,
                  ),
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onPressed: () {
                    print('search Clicked');
                  },
                ),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 3,
          color: Colors.black12,
        ),
        Expanded(
          child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: (2 / 3),
            children: [
              for (int i = 0; i < marketplaceData.length; i++) ...[
                InkWell(
                  child: Card(
                    child: Column(children: [
                      Expanded(
                        child: Image(
                          image: AssetImage(marketplaceData[i].photo),
                        ),
                      ),
                      Text(
                        marketplaceData[i].title,
                        style: const TextStyle(
                          color: Colors.red,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        marketplaceData[i].prise.toString(),
                        style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ]),
                  ),
                  onTap: () => {
                    print(
                      'bick 2 month old clicked',
                    ),
                  },
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
