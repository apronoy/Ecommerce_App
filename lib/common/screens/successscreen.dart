 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myecommerceapp/common/styles/padding.dart';
import 'package:myecommerceapp/common/widgets/elevatedbtn.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';
import 'package:myecommerceapp/utilities/constants/texts.dart';
import 'package:myecommerceapp/utilities/helper/devicehelpers.dart';

class successscreen extends StatelessWidget {
  const successscreen(
      {super.key,
     required this.image,
      this.title,
      this.subtitle,
      required this.onpressed});

  final image;
  final title;
  final subtitle;
  final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: pPadding.screenPadding,
          child: Column(
            children: [
              Image.asset(
                image,
                height: pdevicehelper.getScreenHeight(context) * .35,
              ),
              SizedBox(height: psizes.spacebtnsection * 2),
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: psizes.spacebtnitem * 1.5),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.bodyLarge,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: psizes.spacebtnsection * 1.5),
              PElevatedButton(
                  onpressed: onpressed, child: Text(ptexts.pcontinue))
            ],
          ),
        ),
      ),
    );
  }
}
