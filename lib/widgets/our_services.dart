import 'package:flutter/material.dart';
import 'package:harum_app/constants/color_constant.dart';
import 'package:harum_app/constants/style_constant.dart';

class OurServices extends StatelessWidget {
  const OurServices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Our services', style: iTitleStyle),
          const SizedBox(height: 15),
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  OurServicesItem(
                    'Tanam Pohon',
                    Icons.yard_outlined,
                    iGreenColor,
                    null,
                  ),
                  OurServicesItem(
                    'Tebar Benih Ikan',
                    Icons.public_outlined,
                    iBlueColor,
                    null,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  OurServicesItem(
                    'Santunan',
                    Icons.handshake,
                    iRedColor,
                    null,
                  ),
                  OurServicesItem(
                    'Komunitas',
                    Icons.people_outline_sharp,
                    iGreyColor,
                    null,
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class OurServicesItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color iconColor;
  final String? url;
  const OurServicesItem(
    this.title,
    this.icon,
    this.iconColor,
    this.url, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const radius = 10.0;
    return Expanded(
      child: Card(
        elevation: 1,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius)),
        child: InkWell(
          splashColor: iconColor.withOpacity(0.5),
          borderRadius: BorderRadius.circular(radius),
          onTap: () {
            // print(title);
          },
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Row(
              // mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  backgroundColor: const Color(0x1FB1B1B1),
                  child: Icon(icon, color: iconColor),
                ),
                const SizedBox(width: 10),
                Flexible(
                  child: Text(
                    title,
                    textAlign: TextAlign.right,
                    style: iTitleCardStyle,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
