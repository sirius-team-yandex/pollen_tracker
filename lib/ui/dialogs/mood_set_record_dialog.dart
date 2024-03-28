import 'package:flutter/material.dart';
import 'package:pollen_tracker/bloc/current_mood_bloc/current_mood_bloc.dart';
import 'package:pollen_tracker/common/enums/mood_type.dart';
import 'package:pollen_tracker/common/localization.dart';
import 'package:pollen_tracker/domain/models/mood_record_entity.dart';
import 'package:pollen_tracker/ui/features/home/home_widgets/current_mood_widgets/loaded_mood/loaded_mood_comment_field.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';
import 'package:pollen_tracker/ui/widgets/mood_svg_widget.dart';

class MoodSetRecordDialog extends StatefulWidget {
  const MoodSetRecordDialog({super.key});

  @override
  State<MoodSetRecordDialog> createState() => _MoodSetRecordDialogState();
}

class _MoodSetRecordDialogState extends State<MoodSetRecordDialog> {
  String comment = '';

   MoodType mood = MoodType.good ;
  void _setMoodType(MoodType moodType) {
    setState(() {
      mood = moodType;
    });
  }

  void _setComment(String? newComment) {
    setState(() {
      comment = newComment ?? '';
    });
  }

  void _submit() {
    context.currentMoodBloc?.writeCurrentMood(
      MoodRecordEntity(date: DateTime.now(), moodType: mood, comment: comment),
    );
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Container(
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: context.myColors.background,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(12.0),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 20.0,
              offset: Offset(0.0, 5.0),
            ),
          ],
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              context.S.how_are_you_feeling,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 24.0),
            Flexible(
              child: SvgGridView(
                callback: _setMoodType,
                selectedMoodType: mood,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: context.myColors.darkGreen,
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: MoodCommentChanger(
                record: null,
                action: _setComment,
              ),
            ),
            const SizedBox(height: 30.0),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: context.myColors.darkGreen,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: TextButton(
                onPressed: () {
                  _submit();
                },
                child: Text(context.S.save),
              ),
            ),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}

class SvgGridView extends StatelessWidget {
  const SvgGridView({super.key, required this.callback, required this.selectedMoodType});

  final Function(MoodType) callback;

  final MoodType? selectedMoodType;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        childAspectRatio: 1,
      ),
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () => callback(MoodType.values[index]),
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: selectedMoodType == MoodType.values[index]
                  ? context.myColors.primaryGreen
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Padding(

              padding: const EdgeInsets.all(8.0),
              child: MoodSvgWidget(
                moodType: MoodType.values[index],
              ),
            ),
          ),
        );
      },
      itemCount: 4, // Will replace with the actual number of SVGs
    );
  }
}
