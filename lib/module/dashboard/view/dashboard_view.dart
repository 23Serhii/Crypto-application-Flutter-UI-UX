import 'package:flutter/material.dart';
import 'package:flutter_crypto_application/module/dashboard/controller/dashboard_controller.dart';
import 'package:flutter_crypto_application/module/detail_wallet/view/detail_wallet_view.dart';
import 'package:flutter_crypto_application/state_util.dart';


class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  Widget build(context, DashboardController controller) {
    controller.view = this;

    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Colors.blue.shade700,
                Colors.blue.shade500,
                Colors.purple.shade500,
                Colors.black,
              ],
              stops: const [0.0, 0.2, 0.5, 0.8],
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  padding: const EdgeInsets.only(top: 60.0),
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: const BoxDecoration(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Row(
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Row(
                                    children: [
                                      Text(
                                        "Main Wallet (BTC)",
                                        style: TextStyle(
                                          fontSize: 16.0,
                                          color: Colors.white,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      Icon(
                                        Icons.keyboard_arrow_down_rounded,
                                        size: 24.0,
                                        color: Colors.white,
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 12.0,
                                  ),
                                  const Text(
                                    "0.002541",
                                    style: TextStyle(
                                      fontSize: 48.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 8.0,
                                  ),
                                  Container(
                                    height: 35,
                                    width: 110,
                                    decoration: BoxDecoration(
                                      color: Colors.yellowAccent[100],
                                      borderRadius: BorderRadius.circular(32.0),
                                    ),
                                    child: const Padding(
                                      padding: EdgeInsets.all(4.0),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            width: 4.0,
                                          ),
                                          Icon(
                                            Icons.upload,
                                            size: 20.0,
                                          ),
                                          SizedBox(
                                            width: 12.0,
                                          ),
                                          Text(
                                            "+ 3,21%",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 150,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.white.withAlpha(50),
                                borderRadius: BorderRadius.circular(40.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  children: [
                                    CircleAvatar(
                                      backgroundColor:
                                          Colors.white.withAlpha(70),
                                      radius: 36.0,
                                      child: const Icon(
                                        Icons.dashboard_outlined,
                                        color: Colors.white,
                                        size: 28.0,
                                      ),
                                    ),
                                    const Expanded(
                                      child: CircleAvatar(
                                        backgroundColor: Colors.transparent,
                                        radius: 28.0,
                                        child: Icon(
                                          Icons.list,
                                          color: Colors.white,
                                          size: 28.0,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          height: 220,
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                            color: Colors.white.withAlpha(50),
                            borderRadius: BorderRadius.circular(40.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(36.0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 20.0, left: 20.0),
                                  child: Row(
                                    children: [
                                      const Expanded(
                                        child: Text(
                                          "We found small\nbalances on your wallet",
                                          style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          const Text(
                                            "18",
                                            style: TextStyle(
                                              fontSize: 36.0,
                                              height: 1,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            "coins",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.grey[200],
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 16.0,
                                ),
                                Expanded(
                                  child: GestureDetector(
                                    onHorizontalDragUpdate: (details) {
                                      if (details.primaryDelta! > 0) {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const DetailWalletView()));
                                      }
                                    },
                                    child: Container(
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        color: Colors.white.withAlpha(70),
                                        borderRadius:
                                            BorderRadius.circular(52.0),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(4.0),
                                        child: Row(
                                          children: [
                                            const CircleAvatar(
                                              backgroundColor: Colors.white,
                                              radius: 32.0,
                                              child: Icon(
                                                Icons.arrow_forward_ios,
                                                color: Colors.black,
                                                size: 20.0,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 56.0,
                                            ),
                                            const Text(
                                              "Check Balances",
                                              style: TextStyle(
                                                fontSize: 12.0,
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                            const Spacer(),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.all(20.0),
                                              child: Row(
                                                children: [
                                                  Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: Colors.grey[200],
                                                    size: 16.0,
                                                  ),
                                                  const Icon(
                                                    Icons.arrow_forward_ios,
                                                    color: Colors.white,
                                                    size: 16.0,
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                bottom: 250,
                left: 20,
                child: Transform.rotate(
                    angle: 10 *
                        3.1416 /
                        180, // Mengubah derajat ke radian (15 derajat)
                    child: Container(
                      height: 250,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.deepPurple[200],
                        borderRadius: BorderRadius.circular(36.0),
                      ),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(28.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "BTC",
                                            style: TextStyle(
                                              fontSize: 24.0,
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "Bitcoin",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.grey[300],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Text(
                                      "+5,21%",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: 40,
                            child: Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              decoration: const BoxDecoration(),
                              child: Image.asset(
                                "assets/images/Line-Chart-Vector-PNG-Cutout.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 32,
                            left: 28,
                            child: Row(
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.white.withAlpha(50),
                                  radius: 28.0,
                                  child: const ImageIcon(
                                    AssetImage(
                                      "assets/images/bitcoin-logo-bitcoin-icon-transparent-free-png.png",
                                    ),
                                    size: 36.0,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Positioned(
                            bottom: 44,
                            right: 28,
                            child: Row(
                              children: [
                                Text(
                                  "\u002435.126",
                                  style: TextStyle(
                                    fontSize: 16.0,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              ),
              Positioned(
                bottom: 160,
                right: 20,
                child: Transform.rotate(
                  angle: -5 *
                      3.1416 /
                      180, // Mengubah derajat ke radian (15 derajat)
                  child: Container(
                    height: 250,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.black54.withAlpha(80),
                      borderRadius: BorderRadius.circular(36.0),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(28.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "SOL",
                                          style: TextStyle(
                                            fontSize: 24.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Solana",
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.grey[300],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    "-12,00%",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 40,
                          child: Transform.rotate(
                            angle: -180 *
                                3.1416 /
                                180, // Mengubah derajat ke radian (15 derajat)
                            child: Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              decoration: const BoxDecoration(),
                              child: Image.asset(
                                "assets/images/Line-Chart-Vector-PNG-Cutout.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 32,
                          left: 28,
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.white,
                                radius: 28.0,
                                child: ImageIcon(
                                  AssetImage(
                                    "assets/images/free-sol-5382327-4498199.png",
                                  ),
                                  size: 36.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const Positioned(
                          bottom: 44,
                          right: 28,
                          child: Row(
                            children: [
                              Text(
                                "\u00240.29",
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -30,
                left: 20,
                child: Transform.rotate(
                  angle: -5 *
                      3.1416 /
                      180, // Mengubah derajat ke radian (15 derajat)
                  child: Container(
                    height: 250,
                    width: 200,
                    decoration: BoxDecoration(
                      color: Colors.black54.withAlpha(80),
                      borderRadius: BorderRadius.circular(36.0),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(28.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "ETH",
                                          style: TextStyle(
                                            fontSize: 24.0,
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Text(
                                          "Ethereum",
                                          style: TextStyle(
                                            fontSize: 16.0,
                                            color: Colors.grey[300],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    "+3,76%",
                                    style: TextStyle(
                                      fontSize: 16.0,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          top: 40,
                          child: Container(
                            height: 100,
                            width: MediaQuery.of(context).size.width,
                            decoration: const BoxDecoration(),
                            child: Image.asset(
                              "assets/images/Line-Chart-Vector-PNG-Cutout.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -100,
                right: 20,
                child: Transform.rotate(
                    angle: 5 *
                        3.1416 /
                        180, // Mengubah derajat ke radian (15 derajat)
                    child: Container(
                      height: 250,
                      width: 200,
                      decoration: BoxDecoration(
                        color: Colors.yellowAccent[100],
                        borderRadius: BorderRadius.circular(36.0),
                      ),
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(28.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            "LTC",
                                            style: TextStyle(
                                              fontSize: 24.0,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "Litecoin",
                                            style: TextStyle(
                                              fontSize: 16.0,
                                              color: Colors.grey[800],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    const Text(
                                      "+2,23%",
                                      style: TextStyle(
                                        fontSize: 16.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            top: 40,
                            child: Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width,
                              decoration: const BoxDecoration(),
                              child: Image.asset(
                                "assets/images/Line-Chart-Vector-PNG-Cutout.png",
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )),
              ),
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
              onTap: () => Get.to(const DetailWalletView()),
              child: Container(
                height: 70,
                width: 70,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.density_small_outlined,
                  size: 24.0,
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
  State<DashboardView> createState() => DashboardController();
}
