 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:myecommerceapp/common/styles/padding.dart';
import 'package:myecommerceapp/common/widgets/appbar/appbar.dart';
import 'package:myecommerceapp/common/widgets/elevatedbtn.dart';
import 'package:myecommerceapp/utilities/constants/sizes.dart';

class Add_address extends StatelessWidget {
  const Add_address({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // .......appbar.....
      appBar: PappBar(
        showBackarrow: true,
        title: Text(
          ' Add Address',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
      ),
      // .......body.....
      body: SingleChildScrollView(
        child: Padding(
          padding: pPadding.screenPadding,
          child: Column(
            children: [
              // .......name.....
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Full Name', prefixIcon: Icon(Iconsax.user)),
                onTap: () {},
              ),
              SizedBox(height: psizes.spacebtnsection),
              // .......phone.....
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Mobile', prefixIcon: Icon(Iconsax.mobile)),
                onTap: () {},
              ),
              SizedBox(height: psizes.spacebtnsection),

              Row(
                children: [
                  // .......street.....
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Street',
                          prefixIcon: Icon(Iconsax.route_square)),
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: psizes.spacebtnitem),
                  // .......postal code.....
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'Postal Code',
                          prefixIcon: Icon(Iconsax.sms)),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: psizes.spacebtnsection),
              Row(
                children: [
                  // .......street.....
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'City',
                          prefixIcon: Icon(Iconsax.building)),
                      onTap: () {},
                    ),
                  ),
                  SizedBox(width: psizes.spacebtnitem),
                  // .......postal code.....
                  Expanded(
                    child: TextFormField(
                      decoration: InputDecoration(
                          labelText: 'State',
                          prefixIcon: Icon(Iconsax.location)),
                      onTap: () {},
                    ),
                  ),
                ],
              ),
              SizedBox(height: psizes.spacebtnsection),
              // .......country.....
              TextFormField(
                decoration: InputDecoration(
                    labelText: 'Country', prefixIcon: Icon(Iconsax.global)),
                onTap: () {},
              ),
              SizedBox(height: psizes.spacebtnsection),
              PElevatedButton(onpressed: () {}, child: Text('Save'))
            ],
          ),
        ),
      ),
    );
  }
}
