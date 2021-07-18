import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_uikit/constants.dart';

import 'comp/chart.dart';

class StoreDetail extends StatelessWidget {
  const StoreDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: secondaryColor,
          borderRadius: const BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Store Detail",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StoreItem(
            svg: 'assets/icons/Documents.svg',
            title: 'Documents Files',
            caption: "1.3GB",
            total: 1328,
          ),
          StoreItem(
            svg: 'assets/icons/media.svg',
            title: 'Media Files',
            caption: "1.2GB",
            total: 138,
          ),
          StoreItem(
            svg: 'assets/icons/folder.svg',
            title: 'Folder Files',
            caption: "1.0G",
            total: 328,
          ),
          StoreItem(
            svg: 'assets/icons/unknown.svg',
            title: 'Unknow Files',
            caption: "1.1G",
            total: 38,
          ),
        ],
      ),
    );
  }
}

class StoreItem extends StatelessWidget {
  const StoreItem({
    Key? key,
    required this.svg,
    required this.title,
    required this.caption,
    required this.total,
  }) : super(key: key);

  final String svg, title, caption;
  final int total;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: defaultPadding),
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: primaryColor.withOpacity(0.15),
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(defaultPadding),
        ),
      ),
      child: Row(
        children: [
          SizedBox(
            height: 20,
            width: 20,
            child: SvgPicture.asset(svg),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: defaultPadding,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    caption,
                    style: Theme.of(context)
                        .textTheme
                        .caption!
                        .copyWith(color: Colors.white70),
                  )
                ],
              ),
            ),
          ),
          Text("$total")
        ],
      ),
    );
  }
}
