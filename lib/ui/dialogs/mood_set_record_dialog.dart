import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pollen_tracker/common/gen/localization/app_localizations.dart';
import 'package:pollen_tracker/ui/theme/colors/my_colors.dart';

class MoodSetRecordDialog extends StatelessWidget {
  const MoodSetRecordDialog({super.key});

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
              AppLocalizations.of(context).how_are_you_feeling,
              style: Theme.of(context).textTheme.displayMedium,
            ),
            const SizedBox(height: 24.0),
            const Flexible(child: SvgGridView()),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              decoration: BoxDecoration(
                color: context.myColors.darkGreen, // TODO: UI color
                borderRadius: BorderRadius.circular(20.0),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: TextField(
                minLines: 6,
                keyboardType: TextInputType.multiline,
                maxLines: null,
                style: Theme.of(context).textTheme.displayMedium,
                decoration: InputDecoration(
                  hintText: AppLocalizations.of(context).write_a_comment,
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.all(16.0),
                ),
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
                  // TODO: implement BLoC logic for saving
                  Navigator.of(context).pop();
                },
                child: Text(AppLocalizations.of(context).save),
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
  const SvgGridView({super.key});

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
        String assetName = 'assets/images/svg/mood_${index + 1}.svg';

        return Container(
          alignment: Alignment.center,
          child: SvgPicture.asset(
            assetName,
            width: 112.0,
            height: 112.0,
          ),
        );
      },
      itemCount: 4, // Will replace with the actual number of SVGs
    );
  }
}
