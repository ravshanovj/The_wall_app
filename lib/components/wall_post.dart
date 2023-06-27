import 'package:flutter/material.dart';
import 'package:the_wall_app/components/like_button.dart';

class WallPost extends StatelessWidget {
  final String message;
  final String user;

  const WallPost({Key? key, required this.message, required this.user,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25, left: 15, right: 15),
      padding: const EdgeInsets.all(25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Row(
        children: [
          Column(
            children: [
              LikeButton(isLiked: true),
              const SizedBox(height: 5,),
              const Text('2')
            ],
          ),
          const SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(message),
              const SizedBox(height: 15,),
              Text(user)
            ],
          )
        ],
      ),
    );
  }
}
// Card(
// elevation: 7,
// child: ListTile(
// leading: Padding(
// padding: const EdgeInsets.only(top: 10.0),
// child: Column(
// children: [
// LikeButton(isLiked: false),
// const SizedBox(height: 5,),
// Text('1')
// ],
// ),
// ),
// title: Text(message),
// subtitle: Text(user),
// ),
// );
