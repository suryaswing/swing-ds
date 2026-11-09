class AppDimensions {
  /// The default width for all standard component borders and dividers.
  static const borderWidthBorderWidth = 1;

  /// Use for the width of a border or visual indicator that communicates selection, such as an active tab or a chosen item. Pair with color.border.selected. Do not use as a substitute for a separate keyboard focus indicator.
  static const borderWidthBorderWidthSelected = 2;

  /// Use for the width of the focus ring on an interactive element that currently has keyboard or input focus. Pair with color.border.focused. When the element is also selected, keep the selection indicator and add the focus ring.
  static const borderWidthBorderWidthFocused = 2;

  /// Use for small detail elements: badges, checkboxes, avatar labels, keyboard shortcuts.
  static const borderRadiusRadiusXsmall = 2;

  /// Use for supporting elements: labels, lozenges, timestamps, tags, dates, tooltip containers, imagery inside a table, compact buttons.
  static const borderRadiusRadiusSmall = 4;

  /// Use for interactive elements: buttons, inputs, text areas, selects, navigation items, smart links.
  static const borderRadiusRadiusMedium = 6;

  /// Use for containment elements: cards, in-page containers, floating UI, dropdown menus.
  static const borderRadiusRadiusLarge = 8;

  /// Use for large page elements: full-page containers, large containers, modals, Kanban columns, tables.
  static const borderRadiusRadiusXlarge = 12;

  /// Use for video player containers.
  static const borderRadiusRadiusXxlarge = 16;

  /// Use for circular elements (user/people related): avatars, names, user-related UI, emoji reactions.
  static const borderRadiusRadiusFull = 9999;

  AppDimensions._();
}
