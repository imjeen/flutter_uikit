import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_uikit/constants.dart';

import 'chart.dart';

class StoreDetail extends StatelessWidget {
  const StoreDetail({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
          color: Color(0xFF2A2D3E),
          borderRadius:
              const BorderRadius.all(Radius.circular(10))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Detail",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w500),
          ),
          SizedBox(height: defaultPadding),
          Chart(),
          StoreItem(
            svg: 'assets/icons/dashboard.svg',
            title: 'test',
            caption: "ok",
            total: "1.2G",
          ),
          StoreItem(
            svg: 'assets/icons/dashboard.svg',
            title: 'test',
            caption: "ok",
            total: "1.2G",
          ),
          StoreItem(
            svg: 'assets/icons/dashboard.svg',
            title: 'test',
            caption: "ok",
            total: "1.2G",
          ),
        ],
      ),
    );
  }
}

class StoreItem extends StatelessWidget {
  const StoreItem({
    Key? key,
    @required this.svg,
    @required this.title,
    @required this.caption,
    @required this.total,
  }) : super(key: key);

  final svg, title, caption, total;

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
                  Text(caption, style: Theme.of(context).textTheme.caption
                      // .copyWith(color: Colors.white24),
                      )
                ],
              ),
            ),
          ),
          Text(total)
        ],
      ),
    );
  }
}
