import 'package:covid19_app/mainScreens/ad_helper.dart';
import 'package:flutter/material.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class BansAdd extends StatefulWidget {
  @override
  _BansAddState createState() => _BansAddState();
}

class _BansAddState extends State<BansAdd> {
  BannerAd _ad;

  @override
  void initState() {
    super.initState();
    // COMPLETE: Create a BannerAd instance
    _ad = BannerAd(
      adUnitId: AdManager.bannerAdUnitId,
      size: AdSize.banner,
      request: AdRequest(),
      listener: AdListener(
        onAdLoaded: (_) {
          setState(() {
            //_isAdLoaded = true;
          });
        },
        onAdFailedToLoad: (ad, error) {
          // Releases an ad resource when it fails to load
          ad.dispose();

          print('Ad load failed (code=${error.code} message=${error.message})');
        },
      ),
    );

    // COMPLETE: Load an ad
    _ad.load();
  }

  @override
  void dispose() {
    // COMPLETE: Dispose a BannerAd object
    _ad?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(),
        Container(
          child: AdWidget(ad: _ad),
          width: _ad.size.width.toDouble(),
          height: 72.0,
          alignment: Alignment.center,
        ),
      ],
    );
  }
}
