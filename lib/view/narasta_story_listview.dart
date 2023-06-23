import 'package:flutter/material.dart';

class NaraStaStoryListview extends StatefulWidget {
  const NaraStaStoryListview({Key? key}) : super(key: key);

  @override
  State<NaraStaStoryListview> createState() => _NaraStaStoryListviewState();
}

// 스토리 뷰
class _NaraStaStoryListviewState extends State<NaraStaStoryListview> {
  List<String> storyList = [
    'https://picsum.photos/id/222/100/100',
    'https://picsum.photos/id/555/100/100',
    'https://picsum.photos/id/666/100/100',
    'https://picsum.photos/id/777/100/100',
    'https://picsum.photos/id/999/100/100',
    'https://picsum.photos/id/888/100/100',
    'https://picsum.photos/id/111/100/100',
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: storyList.length,
            itemBuilder: (context, index){
              return Container(
                padding: const EdgeInsets.all(10.0),
                // 이미지 둥글게
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100.0),
                  child: SizedBox(
                    child: Image.network(storyList[index]),
                  ),
                ),
              );
            }
          ),  
        ),
      ],
    );
  }
}
