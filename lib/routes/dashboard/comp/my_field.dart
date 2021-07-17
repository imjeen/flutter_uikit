import 'package:flutter/material.dart';
import 'package:flutter_uikit/constants.dart';
import 'package:flutter_uikit/model/files.dart';

import 'file_card.dart';

class MyField extends StatelessWidget {
  const MyField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'data',
              style: Theme.of(context).textTheme.subtitle1,
            ),
            ElevatedButton.icon(
                style: TextButton.styleFrom(
                  padding: EdgeInsets.symmetric(
                    horizontal: defaultPadding * 1.5,
                    vertical: defaultPadding,
                  ),
                ),
                onPressed: () {},
                icon: Icon(Icons.add),
                label: Text('Add'))
          ],
        ),
        SizedBox(height: defaultPadding),
        GridView.builder(
          shrinkWrap: true,
          itemCount: 4,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: defaultPadding,
            childAspectRatio: 1.4,
          ),
          itemBuilder: (context, index) => FileCard(
            info: demoMyFiles[index],
          ),
        )
      ],
    );
  }
}

