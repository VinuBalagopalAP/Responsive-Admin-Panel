import 'package:flutter/material.dart';
import 'package:responsive_admin_panel/core/constants.dart';
import 'package:responsive_admin_panel/screens/dashboard/components/chart.dart';
import 'package:responsive_admin_panel/screens/dashboard/components/storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  const StorageDetails({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      decoration: const BoxDecoration(
        color: secondaryColor,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const <Widget>[
          Text(
            'Storage Details',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          SizedBox(width: defaultPadding),
          Chart(),
          StorageInforCard(
            svgSrc: 'assets/icons/Documents.svg',
            amountOfFiles: '1.3 GB',
            numOfFiles: 1329,
            title: 'Documented Files',
          ),
          StorageInforCard(
            svgSrc: 'assets/icons/media.svg',
            amountOfFiles: '15.3 GB',
            numOfFiles: 1529,
            title: 'Media Files',
          ),
          StorageInforCard(
            svgSrc: 'assets/icons/folder.svg',
            amountOfFiles: '1.3 GB',
            numOfFiles: 1329,
            title: 'Other Files',
          ),
          StorageInforCard(
            svgSrc: 'assets/icons/unknown.svg',
            amountOfFiles: '15.3 GB',
            numOfFiles: 1529,
            title: 'Unknown',
          ),
        ],
      ),
    );
  }
}
