import 'dart:async';

import 'package:flutter/material.dart';
import 'package:testapp/shared/constants/app_string.dart';

class SearchContain extends StatefulWidget {
  const SearchContain({super.key, required this.controller, required this.onSearch});
  final TextEditingController controller;
  final Function(String) onSearch;

  @override
  State<SearchContain> createState() => _SearchContainState();
}

class _SearchContainState extends State<SearchContain> {
  Timer? _debounce;

  @override
  void dispose() {
    _debounce?.cancel();
    super.dispose();
  }

  void _onChanged(String value) {
    if (_debounce?.isActive ?? false) _debounce!.cancel();

    _debounce = Timer(const Duration(milliseconds: 500), () {
      widget.onSearch(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: TextField(
        maxLines: 1,
        controller: widget.controller,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.only(left: 25),
          label: Container(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(10)
            ),
            child: Text(AppString.search,
            ),
          ),
          suffixIcon: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ),
        // onSubmitted: (value) {
        //   getNewListBySearch(value);
        // },
        onChanged: _onChanged
      ),
    );
  }
}
