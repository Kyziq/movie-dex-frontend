import 'package:flutter/cupertino.dart';

class StarRating extends StatefulWidget {
  final int starCount;
  final double rating;
  final Function(double) onRatingChanged;
  final Color color;

  const StarRating({
    super.key,
    this.starCount = 5,
    this.rating = 0.0,
    required this.onRatingChanged,
    this.color = CupertinoColors.systemYellow,
  });

  @override
  StarRatingState createState() => StarRatingState();
}

class StarRatingState extends State<StarRating> {
  double _currentRating = 0.0;

  @override
  void initState() {
    super.initState();
    _currentRating = widget.rating;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: List.generate(
        widget.starCount,
        (index) => GestureDetector(
          onTap: () {
            setState(() {
              _currentRating = index + 1.0;
            });
            widget.onRatingChanged(_currentRating);
          },
          child: Icon(
            index < _currentRating
                ? CupertinoIcons.star_fill
                : CupertinoIcons.star,
            color: widget.color,
          ),
        ),
      ),
    );
  }
}
