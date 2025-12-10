import 'package:carousel_slider/carousel_slider.dart';
import 'package:flipapp/app_styles.dart';
import 'package:flipapp/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            onStretchTrigger: () async {
              // Triggers when stretching
            },
            // [stretchTriggerOffset] describes the amount of overscroll that must occur
            // to  stretch: _stretch,
            //
            // Setting [stretchTriggerOffset] to a value of 300.0 will trigger
            // [onStretchTrigger] when the user has overscrolled by 300.0 pixels.
            stretch: true,
            stretchTriggerOffset: 300.0,
            expandedHeight: 200.0,
            centerTitle: false,
            title: Text(
              'Hi, Denis',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            backgroundColor: kOrangeTomatoFD,
            actions: [
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: kPadding8),
                    height: 32,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(kBorderRadius100),
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Row(
                      children: [
                        SvgPicture.asset('assets/earn-icon.svg'),
                        SizedBox(
                          width: kPadding4,
                        ),
                        Text(
                          'Earn more here',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )),
                  )
                ],
              ),
              SizedBox(
                width: SizeConfig.blockSizeHorizontal! * 2.5,
              ),
              CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 15,
                  child: SvgPicture.asset('assets//notification-icon.svg')),
              SizedBox(
                width: kPadding16,
              )
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                child: Stack(
                  children: [
                    SvgPicture.asset(
                      'assets/flip-pattern-background.svg',
                      width: double.infinity,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        width: double.infinity,
                        margin: EdgeInsets.symmetric(
                          horizontal: kBorderRadius16,
                          vertical: kPadding16,
                        ),
                        padding: EdgeInsets.symmetric(
                          horizontal: kBorderRadius16,
                          vertical: kPadding14,
                        ),
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.circular(kBorderRadius15),
                            color: kBlack000.withOpacity(0.1)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                    'Since using Flip, you’ve saved \nRp550.000.000.'),
                                SizedBox(
                                  height: kPadding16,
                                ),
                                Container(
                                  height: 28,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          kBorderRadius100),
                                      border: Border.all(color: Colors.white)),
                                  child: Row(
                                    children: [
                                      Text(
                                        'Invite Friend to Use Flip',
                                      ),
                                      Icon(Icons.arrow_right_sharp),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            Image.asset('assets/coins-image.png',
                                width: SizeConfig.blockSizeHorizontal! * 20)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: kOrangeTomatoFD,
              height: 20,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(
                    height: 16,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: const Radius.circular(16),
                        topRight: const Radius.circular(16),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 4,
                    color: Colors.white,
                    child: SvgPicture.asset(
                      'assets/horizontal-divider.svg',
                      width: 50,
                      height: 4,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SliverPadding(padding: EdgeInsets.only(top: kPadding8)),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Container(
                  height: 88,
                  margin: const EdgeInsets.symmetric(
                    horizontal: kPadding16,
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: kPadding16,
                    vertical: kPadding12,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(kBorderRadius12),
                    border: Border.all(
                      color: kGreyE3,
                      width: 1,
                    ),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Balance'),
                            Text('Rp16.950.000.000'),
                            Row(
                              children: [
                                Text('Flip Coin Rp114.000.000'),
                                SizedBox(
                                    width: SizeConfig.blockSizeHorizontal! * 1),
                                SvgPicture.asset('assets/info-icon.svg')
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 2.5,
                      ),
                      VerticalDivider(
                        color: kGreyE3,
                        thickness: 1,
                        width: 1,
                      ),
                      SizedBox(
                        width: SizeConfig.blockSizeHorizontal! * 2.5,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SvgPicture.asset('assets/add-icon.svg'),
                          Text('Top Up'),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(
              top: kPadding20,
              right: kPadding16,
              left: kPadding16,
            ),
            sliver: SliverGrid.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 0,
                ),
                itemCount: 8,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SvgPicture.asset('assets/ewallet-icon.svg'),
                        Text('Top Up & Bills', textAlign: TextAlign.center)
                      ],
                    ),
                  );
                }),
          ),
          SliverList(
              delegate: SliverChildListDelegate([
            Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: kBorderRadius16,
                ),
                child: const PromoCarousel())
          ]))
        ],
      ),
    );
  }
}

final List<String> imageList = [
  'https://images.unsplash.com/photo-1514282401047-d79a71a590e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1365&q=80',
  'https://images.unsplash.com/photo-1573843981267-be1999ff37cd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1974&q=80',
  'https://images.unsplash.com/photo-1540202404-a2f29016b523?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=3266&q=80'
];

class PromoCarousel extends StatefulWidget {
  const PromoCarousel({super.key});

  @override
  State<PromoCarousel> createState() => _PromoCarouselState();
}

class _PromoCarouselState extends State<PromoCarousel> {
  int _current = 1;
  final CarouselSliderController _promoCarouselController =
      CarouselSliderController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
            carouselController: _promoCarouselController,
            options: CarouselOptions(
                height: 122,
                viewportFraction: 1.0,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
                initialPage: _current,
                autoPlay: true,
                autoPlayCurve: Curves.easeInOut),
            items: imageList
                .map((item) => Center(
                        child: Container(
                      height: 122,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(kBorderRadius16),
                        image: DecorationImage(
                          image: NetworkImage(item),
                          fit: BoxFit.cover,
                        ),
                      ),
                    )))
                .toList()),
        const SizedBox(height: kPadding20),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: imageList
                  .asMap()
                  .entries
                  .map(
                    (entry) => GestureDetector(
                      onTap: () =>
                          _promoCarouselController.animateToPage(entry.key),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 6,
                        ),
                        child: SvgPicture.asset(
                          _current == entry.key
                              ? 'assets/carousel_indicator_enabled.svg'
                              : 'assets/carousel_indicator_disabled.svg',
                        ),
                      ),
                    ),
                  )
                  .toList()),
        )
      ],
    );
  }
}
