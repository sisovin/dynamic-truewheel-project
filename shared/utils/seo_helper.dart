import 'package:flutter/material.dart';
import 'package:html/parser.dart' show parse;
import 'package:html/dom.dart' as dom;

class SEOHelper {
  static void setMetaTags({
    required BuildContext context,
    required String title,
    required String description,
    String? keywords,
    String? author,
  }) {
    final head = dom.Document().head;
    _setMetaTag(head, 'title', title);
    _setMetaTag(head, 'description', description);
    if (keywords != null) {
      _setMetaTag(head, 'keywords', keywords);
    }
    if (author != null) {
      _setMetaTag(head, 'author', author);
    }
  }

  static void _setMetaTag(dom.Element head, String name, String content) {
    final metaTag = head.querySelector('meta[name="$name"]');
    if (metaTag != null) {
      metaTag.attributes['content'] = content;
    } else {
      head.append(dom.Element.tag('meta')
        ..attributes['name'] = name
        ..attributes['content'] = content);
    }
  }

  static void setTitle(BuildContext context, String title) {
    final head = dom.Document().head;
    _setMetaTag(head, 'title', title);
  }

  static void setDescription(BuildContext context, String description) {
    final head = dom.Document().head;
    _setMetaTag(head, 'description', description);
  }
}
