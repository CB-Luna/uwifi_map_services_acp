import 'package:flutter/material.dart';
import 'package:uwifi_map_services_acp/theme/theme_data.dart';
import 'package:uwifi_map_services_acp/ui/inputs/custom_inputs.dart';

class CustomDropDown extends StatefulWidget {
  const CustomDropDown({
    super.key,
    required this.list,
    required this.dropdownValue,
    required this.onChanged,
    required this.label,
    required this.width,
    required this.maxHeight,
    required this.icon,
    this.hint,
  });

  final double width;
  final double maxHeight;
  final String label;
  final List<String> list;
  final String? dropdownValue;
  final Function(String?) onChanged;
  final IconData icon;
  final String? hint;

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  @override
  Widget build(BuildContext context) {
    return InputDecorator(
      decoration: CustomInputs().formInputDecoration(
        label: widget.label,
        icon: widget.icon,
        maxHeight: widget.maxHeight),
      child: DropdownButton<String>(
        isExpanded: true,
        hint: Text(
          widget.hint ?? '',
          style: const TextStyle(color: colorPrimary),
        ),
        icon: const Icon(
          Icons.arrow_drop_down,
          color: colorPrimary,
          size: 20,
        ),
        borderRadius: BorderRadius.circular(5),
        elevation: 0,
        dropdownColor: colorBgWhite,
        style: const TextStyle(color: colorPrimary),
        underline: const SizedBox.shrink(),
        onChanged: widget.onChanged,
        value: widget.dropdownValue,
        items: widget.list.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(
              value,
              style: const TextStyle(
                color: colorPrimary,
                fontFamily: 'Bicyclette-Thin',
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
