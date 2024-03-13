import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../core/shared/app_colors/app_colors.dart';
import '../../../core/shared/image_constants/image_constant.dart';

// class PokeMonDetailViewScreen extends StatelessWidget {
//   const PokeMonDetailViewScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: CustomScrollView(
//         slivers: [
//           SliverAppBar(
//             expandedHeight: 200.0,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(30),
//                 bottomRight: Radius.circular(30),
//               ),
//             ),
//             flexibleSpace: FlexibleSpaceBar(
//               // background: ,
//             ),
//           ),
//           // Other slivers go here
//         ],
//       ),
//     );
//   }
// }

void viewPokeMonDetails(BuildContext context) {
  showBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        height: 1.sh,
        width: 1.sw,
        color: Colors.white12,
        child: Column(
          children: [
            Stack(
              alignment: const Alignment(0.2, 2.5),
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 283.h,
                  width: 1.sw,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30),
                      ),
                      gradient: LinearGradient(
                        colors: [
                          Color.fromRGBO(127, 202, 209, 1),
                          Color.fromRGBO(61, 160, 169, 1),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      )
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0, bottom: 120),
                        child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          borderRadius: BorderRadius.circular(5),
                          child: Container(
                            height: 38.h,
                            width: 38.w,
                            decoration: BoxDecoration(
                                color: AppColors.kWhiteColor,
                                borderRadius: BorderRadius.circular(5)
                            ),
                            child: const Icon(Icons.west_rounded),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SvgPicture.asset(ImageConstants.kPokeBookLogo),
              ],
            )
          ],
        ),
      );
    },
  );
}
