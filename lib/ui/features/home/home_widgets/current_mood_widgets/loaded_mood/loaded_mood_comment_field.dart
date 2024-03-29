import 'package:flutter/material.dart';
import 'package:pollen_tracker/common/localization.dart';
import 'package:pollen_tracker/common/logger.dart';
import 'package:pollen_tracker/domain/models/mood_record_entity.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';
import 'package:pollen_tracker/ui/theme/theme.dart';

class MoodCommentChanger extends StatefulWidget {
  final MoodRecordEntity? record;
  final Function(String?) action;
  const MoodCommentChanger({super.key, this.record, required this.action});

  @override
  State<MoodCommentChanger> createState() => _MoodCommentChangerState();
}

class _MoodCommentChangerState extends State<MoodCommentChanger> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    final comment = widget.record?.comment;
    if (comment != null) {
      _controller.text = comment;
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 5,
      textInputAction: TextInputAction.send,
      controller: _controller,
      onFieldSubmitted: (value) {
        if (value.trim() != '') {
          widget.action(value);

          logger.i(value);
        } else {
          _controller.text = '';
          widget.action(null);
        }
      },
      style: context.T.displayMedium?.copyWith(
        letterSpacing: 1,
        height: 1.4,
      ),
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(14),
        border: InputBorder.none,
        hintText: context.S.add_new_comment,
        hintStyle: context.T.displayMedium?.copyWith(
          letterSpacing: 1,
          height: 1.4,
          color: context.myColors.background,
        ),
      ),
    );
  }
}
