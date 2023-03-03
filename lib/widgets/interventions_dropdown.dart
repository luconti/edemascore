import 'package:bulleted_list/bulleted_list.dart';
import 'package:edema_calc/widgets/custom_dropdown_button.dart';
import 'package:flutter/material.dart';

// class StrongInterventions

class InterventionsDroppdownContent {
  InterventionsDroppdownContent({
    required this.title,
    required this.strongRecommendations,
    required this.conditionalRecommendations,
    required this.notRecommended,
  });

  final String title;
  final List<String> strongRecommendations;
  final List<String> conditionalRecommendations;
  final List<String> notRecommended;
}

class InterventionsDropdown extends StatefulWidget {
  const InterventionsDropdown({
    Key? key,
    required this.content,
    this.isFirst = false,
    this.isLast = false,
  }) : super(key: key);

  final InterventionsDroppdownContent content;
  final bool isFirst;
  final bool isLast;

  @override
  _InterventionsDropdownState createState() => _InterventionsDropdownState();
}

class _InterventionsDropdownState extends State<InterventionsDropdown> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDropdownButton(
          title: widget.content.title,
          callback: () => setState(() {
            isSelected = !isSelected;
          }),
          isFirst: widget.isFirst,
          isLast: widget.isLast,
          isSelected: isSelected,
          verticallyStacked: true,
          showDecoration: false,
          isBold: true,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
        ),
        const Divider(thickness: 0.1, color: Colors.black),
        isSelected
            ? Padding(
                padding: const EdgeInsets.only(left: 50),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    widget.content.strongRecommendations.isNotEmpty
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Strong recommendation",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              BulletedList(
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  height: 1.1,
                                ),
                                bullet: const Icon(
                                  Icons.circle,
                                  size: 8,
                                  color: Colors.white,
                                ),
                                listItems: widget.content.strongRecommendations,
                              ),
                            ],
                          )
                        : Container(),
                    widget.content.conditionalRecommendations.isNotEmpty
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Conditional Recommendation",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              BulletedList(
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  height: 1.1,
                                ),
                                bullet: const Icon(
                                  Icons.circle,
                                  size: 8,
                                  color: Colors.white,
                                ),
                                listItems:
                                    widget.content.conditionalRecommendations,
                              ),
                            ],
                          )
                        : Container(),
                    widget.content.notRecommended.isNotEmpty
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Not Recommended",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              BulletedList(
                                style: const TextStyle(
                                  fontSize: 16,
                                  color: Colors.black,
                                  height: 1.1,
                                ),
                                bullet: const Icon(
                                  Icons.circle,
                                  size: 8,
                                  color: Colors.white,
                                ),
                                listItems: widget.content.notRecommended,
                              ),
                            ],
                          )
                        : Container(),
                  ],
                ),
              )
            : Container()
      ],
    );
  }
}
