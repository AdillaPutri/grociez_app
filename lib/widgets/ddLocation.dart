import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';

class location extends StatelessWidget {
  const location({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        padding: EdgeInsets.only(left: 10),
        width: 200,
        child: DropdownSearch<String>(
          popupProps: PopupProps.menu(
            showSelectedItems: true,
            disabledItemFn: (String s) => s.startsWith('I'),
          ),
          items: [
            "Banda Aceh, Indonesia",
            "Aceh Besar, Indonesia",
            "Bireun, Indonesia",
            "Lhokseumawe, Indonesia",
            "Langsa, Indonesia",
            "Aceh Timur, Indonesia",
            "Lhoksukon, Indonesia",
            "Nagan Raya, Indonesia",
          ],
          dropdownDecoratorProps: DropDownDecoratorProps(
            dropdownSearchDecoration: InputDecoration(
              hintText: "Country in menu mode",
              suffixIconColor: Color(0xffFF4201),
              enabledBorder: InputBorder.none,
            ),
          ),
          onChanged: print,
          selectedItem: "Banda Aceh, Indonesia",
        ),
      ),
    );
  }
}
