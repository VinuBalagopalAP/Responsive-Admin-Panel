import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_admin_panel/constants.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Image.asset(
          'assets/images/profile_pic.png',
          height: 38,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
          child: Text('Flutter Vinu'),
        ),
        const Icon(Icons.keyboard_arrow_down),
      ],
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search',
        fillColor: secondaryColor,
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        ),
        suffixIcon: InkWell(
          onTap: () {},
          child: Container(
            padding: const EdgeInsets.all(defaultPadding * 0.75),
            margin: const EdgeInsets.symmetric(horizontal: defaultPadding / 2),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: primaryColor,
            ),
            child: SvgPicture.asset('assets/icons/Search.svg'),
          ),
        ),
      ),
    );
  }
}
