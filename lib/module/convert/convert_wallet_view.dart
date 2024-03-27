import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_crypto_application/core.dart';

class ConvertWalletView extends StatefulWidget {
  const ConvertWalletView({super.key});

  @override
  State<ConvertWalletView> createState() => _ConvertWalletViewState();
}

class _ConvertWalletViewState extends State<ConvertWalletView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            right: 100,
            bottom: 50,
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    Colors.amber.withOpacity(0.5), // Circle color with opacity
              ),
            ),
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: Get.width,
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
              ),
              child: Stack(
                children: [
                  //Blur Effect
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                    child: Container(),
                  ),
                  //Gradient Effect
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.white.withOpacity(0.20)),
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [
                            Colors.white.withOpacity(0.15),
                            Colors.white.withOpacity(0.05),
                          ]),
                    ),
                  ),
                  //Child
                  Column(
                    children: [
                      Expanded(
                        flex: 8,
                        child: Container(
                          padding: const EdgeInsets.only(top: 80, left: 0),
                          width: Get.width,
                          decoration: const BoxDecoration(
                              color: Color.fromRGBO(237, 251, 139, 1),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(80),
                                  bottomRight: Radius.circular(80))),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              const Padding(
                                padding: EdgeInsets.only(left: 40.0),
                                child: Text(
                                  "You are going\n to convert ",
                                  style: TextStyle(fontSize: 40),
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        height: 100,
                                        width: Get.width / 3,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withAlpha(30),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Positioned(
                                        top: 15,
                                        left: 15,
                                        child: Container(
                                            padding: const EdgeInsets.all(10),
                                            height: 70,
                                            width: 70,
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              shape: BoxShape.circle,
                                            ),
                                            child: Image.network(
                                                "https://cdn.corporatefinanceinstitute.com/assets/icon-cryptocurrency-icx.png")),
                                      ),
                                      Container(
                                        height: 100,
                                        width: 100,
                                        decoration: BoxDecoration(
                                          color: Colors.white.withAlpha(30),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Positioned(
                                        top: 15,
                                        left: 65,
                                        child: Container(
                                          padding: const EdgeInsets.all(10),
                                          height: 70,
                                          width: 70,
                                          decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle,
                                          ),
                                          child: Image.network(
                                              "https://cryptologos.cc/logos/ethereum-eth-logo.png"),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  const Icon(Icons.sync),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                      padding: const EdgeInsets.all(10),
                                      height: 70,
                                      width: 70,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                          "https://icons.iconarchive.com/icons/cjdowner/cryptocurrency-flat/512/Binance-Coin-BNB-icon.png")),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(20.0),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withAlpha(100),
                                    borderRadius: BorderRadius.circular(40.0),
                                  ),
                                  child: const Padding(
                                    padding: EdgeInsets.only(top: 36),
                                    child: Column(
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                              right: 20.0, left: 20.0),
                                          child: Column(
                                            children: [
                                              Text(
                                                "You will receive",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                    fontSize: 16.0,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              SizedBox(
                                                height: 10,
                                              ),
                                              Text(
                                                "0.0032  BNB",
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                    fontSize: 28.0,
                                                    color: Colors.black,
                                                    fontWeight:
                                                        FontWeight.w800),
                                              ),
                                              SizedBox(
                                                height: 20,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Approximate value of BNB",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 12.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Text(
                                                    "0.0032 BNB",
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      fontSize: 12.0,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: 5,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Commission (2%)",
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 12.0,
                                                      color: Colors.black,
                                                    ),
                                                  ),
                                                  Text(
                                                    "0.000042 BNB",
                                                    textAlign: TextAlign.start,
                                                    style: TextStyle(
                                                      fontSize: 12.0,
                                                      color: Colors.black,
                                                      fontWeight:
                                                          FontWeight.w800,
                                                    ),
                                                  ),
                                                ],
                                              )
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          height: 36,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: GestureDetector(
                                  onHorizontalDragUpdate: (details) {
                                    if (details.primaryDelta! > 0) {}
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Colors.black.withAlpha(70),
                                      borderRadius: BorderRadius.circular(52.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Row(
                                        children: [
                                          const CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 32.0,
                                            child: Icon(
                                              Icons.check,
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
                                            padding: const EdgeInsets.all(20.0),
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
                      Expanded(
                        flex: 2,
                        child: Container(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Stack(
        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              color: Colors.white.withAlpha(30),
              shape: BoxShape.circle,
            ),
          ),
          Positioned(
            top: 15,
            left: 15,
            child: Container(
              height: 70,
              width: 70,
              decoration: const BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.close,
                size: 20.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
