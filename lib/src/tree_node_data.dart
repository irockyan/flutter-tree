import 'package:flutter/material.dart';

class TreeNodeData {
  /// 选项id，尽量传
  String? id;
  String title;
  bool expanded;
  bool checked;
  dynamic extra;
  final Color? checkBoxCheckColor;
  final MaterialStateProperty<Color>? checkBoxFillColor;
  final ValueGetter<Color>? backgroundColor;
  final List<Widget>? customActions;
  final bool? isAll;
  List<TreeNodeData> children;

  TreeNodeData({
    this.id,
    required this.title,
    required this.expanded,
    required this.checked,
    required this.children,
    this.extra,
    this.isAll,
    this.checkBoxCheckColor,
    this.checkBoxFillColor,
    this.backgroundColor,
    this.customActions,
  });

  TreeNodeData.from(TreeNodeData other)
      : this(
            title: other.title,
            expanded: other.expanded,
            checked: other.checked,
            extra: other.extra,
            children: other.children);

  @override
  String toString() {
    return 'TreeNodeData{title: $title, expanded: $expanded, checked: $checked, extra: $extra, ${children.length} children}';
  }
}
