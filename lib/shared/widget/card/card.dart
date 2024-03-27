import 'package:flutter/material.dart';

class QCard extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final EdgeInsetsGeometry? padding;
  final List<Widget> children;
  final List<Widget> actions;

  const QCard({
    super.key,
    required this.children,
    this.title,
    this.subtitle,
    this.padding,
    this.actions = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            8.0,
          ),
        ),
        border: Border.all(
          width: 1.0,
          color: Colors.grey,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (title != null) ...[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "$title",
                          style: const TextStyle(
                            fontSize: 16.0,
                          ),
                        ),
                        if (subtitle != null)
                          Text(
                            "$subtitle",
                            style: const TextStyle(
                              fontSize: 12.0,
                              color: Colors.grey,
                            ),
                          ),
                      ],
                    ),
                  ),
                  if (actions.isNotEmpty)
                    SizedBox(
                      height: 32.0,
                      child: Row(
                        children: actions,
                      ),
                    ),
                ],
              ),
            ),
            const Divider(
              color: Colors.grey,
              height: 1.0,
            ),
          ],
          Container(
            padding: padding ?? const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}
