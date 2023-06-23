import 'package:flutter/material.dart';
import 'package:narastagram/view/narasta_photo_gridview.dart';

class NaraStaSecondSubPage extends StatelessWidget {
  const NaraStaSecondSubPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return Column(
    //   children: [
    //     Stack(
    //       children: [
    //         Container(
    //             decoration: BoxDecoration(
    //               border: Border.all(width: 1),
    //             ),
    //             width: double.infinity,
    //             height: 200.0,
    //             child: Align(
    //               alignment: Alignment.topLeft,
    //               child: Container(
    //                 decoration: BoxDecoration(
    //                   border: Border.all(width: 1),
    //                   shape: BoxShape.circle,
    //                 ),
    //                 width: 50.0,
    //                 height: 50.0,
    //                 child: ImageIcon(
    //                   AssetImage('assets/images/avatar.png'),
    //                 ),
    //               ),
    //             )
    //         ),
    //       ],
    //     ),
    //     Container(
    //       child: NaraStaGridviewUi(),
    //     ),
    //   ],
    // );
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: NaraStaPhotoGridview(),
        )
      ],
    );
  }
}
