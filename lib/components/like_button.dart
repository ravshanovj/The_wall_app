import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  final bool isLiked;
  void Function()? onTap;
  LikeButton({Key? key, required this.isLiked}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Icon(
          isLiked ? Icons.favorite : Icons.favorite_border_outlined,
          color: isLiked ? Colors.red : Colors.grey,
      ),
    );
  }
}
