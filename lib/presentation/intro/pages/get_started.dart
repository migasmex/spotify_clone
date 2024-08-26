import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_app/common/widgets/button/basic_app_button.dart';
import 'package:spotify_app/core/configs/assets/app_images.dart';
import 'package:spotify_app/core/configs/assets/app_vectors.dart';
import 'package:spotify_app/core/configs/theme/app_colors.dart';
import 'package:spotify_app/presentation/choose_mode/pages/choose_mode.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    AppImages.introBackground,
                  ))),
        ),
        Container(
          color: Colors.black.withOpacity(0.15),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(AppVectors.logo)),
              Spacer(),
              Text('Enjoy Listening To Music',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 18)),
              SizedBox(
                height: 21,
              ),
              Text(
                  textAlign: TextAlign.center,
                  'In music, harmony is the concept of combining different sounds together in order to create new, distinct musical ideas.',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: AppColors.grey,
                      fontSize: 13)),
              SizedBox(
                height: 20,
              ),
              BasicAppButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (BuildContext context) => ChooseModePage()));
                },
                title: "Get Started",
              )
            ],
          ),
        ),
      ],
    ));
  }
}
