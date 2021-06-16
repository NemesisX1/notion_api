import '../blocks/heading.dart';
import '../blocks/paragraph.dart';
import '../blocks/todo.dart';

/// A representation of the Children json for the Notion API.
class Children {
  /// The children to be append to the block
  List<dynamic> children = [];

  Children({
    Heading? heading,
    Paragraph? paragraph,
    List<ToDo>? toDo,
  }) {
    if (heading != null) {
      children.add(heading);
    }
    if (paragraph != null) {
      children.add(paragraph);
    }
    if (toDo != null) {
      children.addAll(toDo.toList());
    }
  }

  /// Get if the children list IS empty
  bool get isEmpty => this.children.isEmpty;

  /// Get if the children list IS NOT empty
  bool get isNotEmpty => this.children.isNotEmpty;

  /// Convert this to a json representation valid for the Notion API.
  toJson() => {'children': children.map((e) => e.toJson()).toList()};
}
