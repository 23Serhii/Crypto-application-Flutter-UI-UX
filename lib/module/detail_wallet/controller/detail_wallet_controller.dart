import 'package:flutter/material.dart';

import '../view/detail_wallet_view.dart';

class DetailWalletController extends State<DetailWalletView> {
  static late DetailWalletController instance;
  late DetailWalletView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
