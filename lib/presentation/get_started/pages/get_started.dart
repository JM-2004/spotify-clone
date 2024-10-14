import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/common/widgets/basic_app_button.dart';
import 'package:spotify/core/config/assets/app_images.dart';
import 'package:spotify/core/config/assets/app_vectors.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 40,horizontal: 40),
            decoration: const BoxDecoration(image: DecorationImage(image: AssetImage(AppImages.introBG),fit: BoxFit.fill)),
            child: Column(
              children: [Align(
                alignment: Alignment.topCenter,
                child: SvgPicture.asset(AppVectors.logo)),
                const Spacer(),
                const Text("Enjoy Listening To Music",style: const TextStyle(fontSize: 30,color: Colors.white,fontWeight:FontWeight.bold)),
                SizedBox(height: 21),
                const Text("Lorem ipsum odor amet, consectetuer adipiscing elit. Consectetur ligula dolor at ad viverra. Purus tempus convallis dapibus curabitur erat non.",
                style: TextStyle(fontSize: 20,color: Colors.white),
                textAlign: TextAlign.center
                ),
                const SizedBox(height: 20),
                BasicAppButton(
                  onPressed: () {}, 
                  title: "Get Started")
                ],

            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.2),
          )
        ],
      ),
    );
  }
}