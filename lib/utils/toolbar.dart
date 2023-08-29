import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

double _iconSize = 16;

/// Abstract class that all the toolbar classes extend
abstract class Toolbar {
  const Toolbar();
}

/// Style group
class StyleButtons extends Toolbar {
  final bool style;

  const StyleButtons({
    this.style = true,
  });
}

/// Font setting group
class FontSettingButtons extends Toolbar {
  final bool fontName;
  final bool fontSize;
  final bool fontSizeUnit;

  const FontSettingButtons({
    this.fontName = true,
    this.fontSize = true,
    this.fontSizeUnit = true,
  });
}

/// Font group
class FontButtons extends Toolbar {
  final bool bold;
  final bool italic;
  final bool underline;
  final bool clearAll;
  final bool strikethrough;
  final bool superscript;
  final bool subscript;

  const FontButtons({
    this.bold = true,
    this.italic = true,
    this.underline = true,
    this.clearAll = true,
    this.strikethrough = true,
    this.superscript = true,
    this.subscript = true,
  });

  List<Icon> getIcons1() {
    var icons = <Icon>[];
    if (bold) {
      icons.add(Icon(
        FontAwesomeIcons.bold,
        size: _iconSize,
      ));
    }
    if (italic) {
      icons.add(Icon(
        FontAwesomeIcons.italic,
        size: _iconSize,
      ));
    }
    if (underline) {
      icons.add(Icon(
        FontAwesomeIcons.underline,
        size: _iconSize,
      ));
    }
    if (clearAll) {
      icons.add(Icon(
        FontAwesomeIcons.textSlash,
        size: _iconSize,
      ));
    }
    return icons;
  }

  List<Icon> getIcons2() {
    var icons = <Icon>[];
    if (strikethrough) {
      icons.add(Icon(
        FontAwesomeIcons.strikethrough,
        size: _iconSize,
      ));
    }
    if (superscript) {
      icons.add(Icon(
        FontAwesomeIcons.superscript,
        size: _iconSize,
      ));
    }
    if (subscript) {
      icons.add(Icon(
        FontAwesomeIcons.subscript,
        size: _iconSize,
      ));
    }
    return icons;
  }
}

/// Color bar group
class ColorButtons extends Toolbar {
  final bool foregroundColor;
  final bool highlightColor;

  const ColorButtons({
    this.foregroundColor = true,
    this.highlightColor = true,
  });

  List<Icon> getIcons() {
    var icons = <Icon>[];
    if (foregroundColor) {
      icons.add(Icon(
        FontAwesomeIcons.font,
        size: _iconSize,
      ));
    }
    if (highlightColor) {
      icons.add(Icon(
        FontAwesomeIcons.fillDrip,
        size: _iconSize,
      ));
    }
    return icons;
  }
}

/// List group
class ListButtons extends Toolbar {
  final bool ul;
  final bool ol;
  final bool listStyles;

  const ListButtons({
    this.ul = true,
    this.ol = true,
    this.listStyles = true,
  });

  List<Icon> getIcons() {
    var icons = <Icon>[];
    if (ul) {
      icons.add(Icon(
        FontAwesomeIcons.listUl,
        size: _iconSize,
      ));
    }
    if (ol) {
      icons.add(Icon(
        FontAwesomeIcons.listOl,
        size: _iconSize,
      ));
    }
    return icons;
  }
}

/// Paragraph group
class ParagraphButtons extends Toolbar {
  final bool alignLeft;
  final bool alignCenter;
  final bool alignRight;
  final bool alignJustify;
  final bool increaseIndent;
  final bool decreaseIndent;
  final bool textDirection;
  final bool lineHeight;
  final bool caseConverter;

  const ParagraphButtons({
    this.alignLeft = true,
    this.alignCenter = true,
    this.alignRight = true,
    this.alignJustify = true,
    this.increaseIndent = true,
    this.decreaseIndent = true,
    this.textDirection = true,
    this.lineHeight = true,
    this.caseConverter = true,
  });

  List<Icon> getIcons1() {
    var icons = <Icon>[];
    if (alignLeft) {
      icons.add(Icon(
        FontAwesomeIcons.alignLeft,
        size: _iconSize,
      ));
    }
    if (alignCenter) {
      icons.add(Icon(
        FontAwesomeIcons.alignCenter,
        size: _iconSize,
      ));
    }
    if (alignRight) {
      icons.add(Icon(
        FontAwesomeIcons.alignRight,
        size: _iconSize,
      ));
    }
    if (alignJustify) {
      icons.add(Icon(
        FontAwesomeIcons.alignJustify,
        size: _iconSize,
      ));
    }
    return icons;
  }

  List<Icon> getIcons2() {
    var icons = <Icon>[];
    if (increaseIndent) {
      icons.add(Icon(
        Icons.format_indent_increase,
        size: _iconSize,
      ));
    }
    if (decreaseIndent) {
      icons.add(Icon(
        Icons.format_indent_decrease,
        size: _iconSize,
      ));
    }
    return icons;
  }
}

/// Insert group
class InsertButtons extends Toolbar {
  final bool link;
  final bool picture;
  final bool audio;
  final bool video;
  final bool otherFile;
  final bool table;
  final bool hr;

  const InsertButtons({
    this.link = true,
    this.picture = true,
    this.audio = true,
    this.video = true,
    this.otherFile = false,
    this.table = true,
    this.hr = true,
  });

  List<Icon> getIcons() {
    var icons = <Icon>[];
    if (link) {
      icons.add(Icon(
        FontAwesomeIcons.link,
        size: _iconSize,
      ));
    }
    if (picture) {
      icons.add(Icon(
        FontAwesomeIcons.image,
        size: _iconSize,
      ));
    }
    if (audio) {
      icons.add(Icon(
        FontAwesomeIcons.musicNote,
        size: _iconSize,
      ));
    }
    if (video) {
      icons.add(Icon(
        FontAwesomeIcons.video,
        size: _iconSize,
      ));
    }
    if (otherFile) {
      icons.add(Icon(
        FontAwesomeIcons.file,
        size: _iconSize,
      ));
    }
    if (table) {
      icons.add(Icon(
        FontAwesomeIcons.chartTreeMap,
        size: _iconSize,
      ));
    }
    if (hr) {
      icons.add(Icon(
        FontAwesomeIcons.rulerHorizontal,
        size: _iconSize,
      ));
    }
    return icons;
  }
}

/// Miscellaneous group
class OtherButtons extends Toolbar {
  final bool fullscreen;
  final bool codeview;
  final bool undo;
  final bool redo;
  final bool help;
  final bool copy;
  final bool paste;

  const OtherButtons({
    this.fullscreen = true,
    this.codeview = true,
    this.undo = true,
    this.redo = true,
    this.help = true,
    this.copy = true,
    this.paste = true,
  });

  List<Icon> getIcons1() {
    var icons = <Icon>[];
    if (fullscreen) {
      icons.add(Icon(
        FontAwesomeIcons.expand,
        size: _iconSize,
      ));
    }
    if (codeview) {
      icons.add(Icon(
        FontAwesomeIcons.code,
        size: _iconSize,
      ));
    }
    if (undo) {
      icons.add(Icon(
        FontAwesomeIcons.undo,
        size: _iconSize,
      ));
    }
    if (redo) {
      icons.add(Icon(
        FontAwesomeIcons.redo,
        size: _iconSize,
      ));
    }
    if (help) {
      icons.add(Icon(
        FontAwesomeIcons.question,
        size: _iconSize,
      ));
    }
    return icons;
  }

  List<Icon> getIcons2() {
    var icons = <Icon>[];
    if (copy) {
      icons.add(Icon(
        FontAwesomeIcons.copy,
        size: _iconSize,
      ));
    }
    if (paste) {
      icons.add(Icon(
        FontAwesomeIcons.paste,
        size: _iconSize,
      ));
    }
    return icons;
  }
}
