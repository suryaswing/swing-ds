import 'dart:io';

class TokenSource {
  const TokenSource({
    required this.fileName,
    required this.className,
    required this.catalogName,
    this.gitRef = 'HEAD',
  });

  final String fileName;
  final String className;
  final String catalogName;
  final String gitRef;
}

const tokenSources = [
  TokenSource(
    fileName: 'colors.dart',
    className: 'AppColors',
    catalogName: 'tokenColors',
  ),
  TokenSource(
    fileName: 'gradients.dart',
    className: 'AppGradients',
    catalogName: 'tokenGradients',
    gitRef: 'origin/supernova-flutter',
  ),
  TokenSource(
    fileName: 'text_styles.dart',
    className: 'AppTextStyles',
    catalogName: 'tokenTextStyles',
  ),
  TokenSource(
    fileName: 'dimensions.dart',
    className: 'AppDimensions',
    catalogName: 'tokenDimensions',
  ),
  TokenSource(
    fileName: 'shadows.dart',
    className: 'AppShadows',
    catalogName: 'tokenShadows',
  ),
];

const compatibilityAliases = <String, Map<String, String>>{
  'colors.dart': {
    'brand': 'colorSemanticBrandPrimary',
    'brandDark': 'colorPrimaryPurple600',
    'brandSoft': 'colorPrimaryPurple50',
    'background': 'colorSemanticBackgroundDefault',
    'surface': 'colorNeutralLight500',
    'textPrimary': 'colorSemanticTextDefault',
    'textSecondary': 'colorSemanticTextSecondary',
    'outline': 'colorSemanticBorderDefault',
    'success': 'colorSemanticStatusSuccess',
    'warning': 'colorSemanticStatusAlert',
  },
  'gradients.dart': {
    'brand': 'gradientBrandPurple',
  },
  'dimensions.dart': {
    'xs': '4.0',
    'sm': '8.0',
    'md': '16.0',
    'lg': '24.0',
    'xl': '32.0',
    'xxl': '48.0',
    'borderRadiusBorderRadius4Px': '4',
    'borderRadiusBorderRadius8Px': '8',
    'borderRadiusBorderRadius12Px': '12',
    'borderRadiusBorderRadius16Px': '16',
  },
};

Future<void> main() async {
  final rootResult = await Process.run('git', ['rev-parse', '--show-toplevel']);
  if (rootResult.exitCode != 0) {
    throw StateError('Run token synchronization inside the Git repository.');
  }

  final root = Directory('${rootResult.stdout}'.trim());
  final libDirectory = Directory('${root.path}/lib');
  await libDirectory.create(recursive: true);

  final catalog = StringBuffer()
    ..writeln("import 'colors.dart';")
    ..writeln("import 'dimensions.dart';")
    ..writeln("import 'gradients.dart';")
    ..writeln("import 'shadows.dart';")
    ..writeln("import 'text_styles.dart';")
    ..writeln()
    ..writeln('class TokenCatalogEntry {')
    ..writeln('  const TokenCatalogEntry(this.name, this.value);')
    ..writeln()
    ..writeln('  final String name;')
    ..writeln('  final Object value;')
    ..writeln('}')
    ..writeln();

  for (final source in tokenSources) {
    final result = await Process.run(
      'git',
      ['show', '${source.gitRef}:${source.fileName}'],
      workingDirectory: root.path,
    );
    if (result.exitCode != 0) {
      throw StateError(
        'Could not read ${source.fileName} from HEAD. '
        'Ensure the latest design tokens have been pulled.',
      );
    }

    final original = '${result.stdout}';
    final sourceTokenNames = RegExp(
      r'\bstatic\s+const\s+([A-Za-z_]\w*)\s*=',
    ).allMatches(original).map((match) => match.group(1)!).toList();
    if (sourceTokenNames.isEmpty) {
      throw StateError('No tokens found in ${source.fileName}.');
    }

    var syncedSource = original;
    for (final entry in compatibilityAliases[source.fileName]?.entries ??
        const <MapEntry<String, String>>[]) {
      if (sourceTokenNames.contains(entry.key)) {
        continue;
      }
      final isNumber = RegExp(r'^\d+(\.\d+)?$').hasMatch(entry.value);
      if (!isNumber && !sourceTokenNames.contains(entry.value)) {
        throw StateError(
          'Compatibility token ${entry.key} points to missing '
          '${entry.value} in ${source.fileName}.',
        );
      }
      syncedSource = syncedSource.replaceFirst(
        '  ${source.className}._();',
        '  static const ${entry.key} = ${entry.value};\n\n'
            '  ${source.className}._();',
      );
    }

    await File('${libDirectory.path}/${source.fileName}')
        .writeAsString(syncedSource);

    catalog.writeln('const ${source.catalogName} = <TokenCatalogEntry>[');
    for (final name in sourceTokenNames) {
      catalog.writeln(
        "  TokenCatalogEntry('$name', ${source.className}.$name),",
      );
    }
    catalog
      ..writeln('];')
      ..writeln();
  }

  final catalogFile = File('${libDirectory.path}/token_catalog.dart');
  await catalogFile.writeAsString(catalog.toString());

  final format = await Process.run(
    'dart',
    [
      'format',
      ...tokenSources.map((source) => 'lib/${source.fileName}'),
      catalogFile.path
    ],
    workingDirectory: root.path,
  );
  if (format.exitCode != 0) {
    stderr.write(format.stderr);
    throw StateError('Failed to format synchronized design tokens.');
  }

  stdout.writeln(
    'Synchronized ${tokenSources.length} token files and generated '
    '${catalogFile.path}.',
  );
}
