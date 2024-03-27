import 'package:flutter/material.dart';

import '../../../core.dart';
import '../../convert/convert_wallet_view.dart';
import '../controller/detail_wallet_controller.dart';

class DetailWalletView extends StatefulWidget {
  const DetailWalletView({super.key});

  Widget build(context, DetailWalletController controller) {
    controller.view = this;

    return Scaffold(
      backgroundColor: Colors.black38,
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.only(top: 40.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: InkWell(
                        onTap: () => Get.to(const DashboardView()),
                        child: CircleAvatar(
                          backgroundColor: Colors.white.withAlpha(50),
                          radius: 32.0,
                          child: const Icon(
                            Icons.arrow_back_ios_new_rounded,
                            color: Colors.white,
                            size: 20.0,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 52.0,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Small Balances",
                            style: TextStyle(
                              fontSize: 28.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "You can convert it to BNB",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey[200],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(20),
                    borderRadius: BorderRadius.circular(44.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () => Get.to(const DashboardView()),
                          child: CircleAvatar(
                            backgroundColor: Colors.white.withAlpha(50),
                            radius: 32.0,
                            child: const Icon(
                              Icons.check,
                              color: Colors.white,
                              size: 24.0,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 52.0,
                        ),
                        const Text(
                          "Select all to get 0.00321 BNB",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 12.0,
              ),
              Stack(children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white.withAlpha(20),
                      borderRadius: BorderRadius.circular(48.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20.0,
                            color: Colors.grey[600],
                          ),
                          const Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 20.0,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 8.0,
                          ),
                          const Text(
                            "Slide to",
                            style: TextStyle(
                              fontSize: 12.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 110,
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple[200],
                      borderRadius: BorderRadius.circular(48.0),
                    ),
                    child: Padding(
                        padding: const EdgeInsets.all(40.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                              backgroundColor: Colors.white.withAlpha(0),
                              radius: 32.0,
                              child: Image.asset(
                                "assets/images/arbitrum-arb-logo.png",
                                width: 120.0,
                                height: 120.0,
                                fit: BoxFit.fill,
                              ),
                            ),
                            const SizedBox(
                              width: 25.0,
                            ),
                            const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "ARB",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      "Arbitrum",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(
                                      width: 80.0,
                                    ),
                                    Text(
                                      "Available",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        )),
                  ),
                )
              ]),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(20),
                    borderRadius: BorderRadius.circular(48.0),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white.withAlpha(50),
                            radius: 32.0,
                            child: Image.asset(
                              "assets/images/Solana_logo.png",
                              width: 120.0,
                              height: 120.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            width: 25.0,
                          ),
                          const Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "SOL",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "0.0072",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Solana",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Available Balance",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  height: 150,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white.withAlpha(20),
                    borderRadius: BorderRadius.circular(48.0),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(40.0),
                      child: Row(
                        children: [
                          CircleAvatar(
                            backgroundColor: Colors.white.withAlpha(50),
                            radius: 32.0,
                            child: Image.asset(
                              "assets/images/Ethereum-ETH-icon.png",
                              width: 120.0,
                              height: 120.0,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            width: 25.0,
                          ),
                          const Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "ETH",
                                        style: TextStyle(
                                          fontSize: 20.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "0.054",
                                      style: TextStyle(
                                        fontSize: 20.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      child: Text(
                                        "Ethereum",
                                        style: TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Available Balance",
                                      style: TextStyle(
                                        fontSize: 12.0,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 16, left: 2.0, right: 2.0),
                  child: Transform.rotate(
                    angle: 5 * 3.1416 / 180,
                    child: Container(
                      height: 150,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Colors.white.withAlpha(20),
                        borderRadius: BorderRadius.circular(48.0),
                      ),
                      child: Padding(
                          padding: const EdgeInsets.all(40.0),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white.withAlpha(50),
                                radius: 32.0,
                                child: Image.asset(
                                  "assets/images/bitcoin-btc-logo.png",
                                  width: 120.0,
                                  height: 120.0,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              const SizedBox(
                                width: 25.0,
                              ),
                              const Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "BTC",
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "0.002541",
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Text(
                                            "Bitcoin",
                                            style: TextStyle(
                                              fontSize: 12.0,
                                              color: Colors.grey,
                                            ),
                                          ),
                                        ),
                                        Text(
                                          "Available Balance",
                                          style: TextStyle(
                                            fontSize: 12.0,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )),
                    ),
                  )),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Stack(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white.withAlpha(30),
              shape: BoxShape.circle, // Mengatur bentuk lingkaran
            ),
          ),
          Positioned(
            top: 15,
            left: 15,
            child: InkWell(
              onTap: () => Get.to(const ConvertWalletView()),
              child: Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.arrow_forward_ios_rounded,
                  size: 20.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  State<DetailWalletView> createState() => DetailWalletController();
}
