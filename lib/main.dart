import 'package:flutter/material.dart';

import 'package:swing_ds_preview/border_sides.dart';
import 'package:swing_ds_preview/borders.dart';
import 'package:swing_ds_preview/colors.dart';
import 'package:swing_ds_preview/dimensions.dart';
import 'package:swing_ds_preview/gradients.dart';
import 'package:swing_ds_preview/radii.dart';
import 'package:swing_ds_preview/shadows.dart';
import 'package:swing_ds_preview/text_styles.dart';
import 'package:swing_ds_preview/token_catalog.dart';

void main() {
  runApp(const SwingTokensPreviewApp());
}

class SwingTokensPreviewApp extends StatelessWidget {
  const SwingTokensPreviewApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Swing DS Preview',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.background,
        colorScheme: ColorScheme.fromSeed(
          seedColor: AppColors.brand,
          surface: AppColors.surface,
        ),
        fontFamily: 'Manrope',
      ),
      home: const TokensShowcasePage(),
    );
  }
}

class TokensShowcasePage extends StatelessWidget {
  const TokensShowcasePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 760),
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(AppDimensions.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeader(),
                  const SizedBox(height: AppDimensions.xl),
                  _buildHero(),
                  const SizedBox(height: AppDimensions.xl),
                  _buildSectionTitle('Colors', 'Warna utama dan status'),
                  const SizedBox(height: AppDimensions.md),
                  _buildColors(),
                  const SizedBox(height: AppDimensions.xl),
                  _buildSectionTitle('Typography', 'Text styles dari token'),
                  const SizedBox(height: AppDimensions.md),
                  _buildTypography(),
                  const SizedBox(height: AppDimensions.xl),
                  _buildSectionTitle(
                    'Spacing',
                    'Skala jarak yang tersedia',
                  ),
                  const SizedBox(height: AppDimensions.md),
                  _buildSpacing(),
                  const SizedBox(height: AppDimensions.xl),
                  _buildSectionTitle(
                    'Dimensions',
                    'Radius dasar dari token dimensions',
                  ),
                  const SizedBox(height: AppDimensions.md),
                  _buildDimensions(),
                  const SizedBox(height: AppDimensions.xl),
                  _buildSectionTitle(
                    'Component radii',
                    'Bentuk sudut komponen',
                  ),
                  const SizedBox(height: AppDimensions.md),
                  _buildRadii(),
                  const SizedBox(height: AppDimensions.xl),
                  _buildSectionTitle(
                    'Gradient',
                    'Gradient brand dan arah warnanya',
                  ),
                  const SizedBox(height: AppDimensions.md),
                  _buildGradients(),
                  const SizedBox(height: AppDimensions.xl),
                  _buildSectionTitle(
                    'Borders',
                    'Border utuh dan border per sisi',
                  ),
                  const SizedBox(height: AppDimensions.md),
                  _buildBorders(),
                  const SizedBox(height: AppDimensions.xl),
                  _buildSectionTitle(
                    'Elevation',
                    'Shadow token terbaru',
                  ),
                  const SizedBox(height: AppDimensions.md),
                  _buildShadows(),
                  const SizedBox(height: AppDimensions.xl),
                  _buildSectionTitle('Components', 'Radius, border, shadow'),
                  const SizedBox(height: AppDimensions.md),
                  _buildComponents(),
                  const SizedBox(height: AppDimensions.xxl),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        Container(
          width: 44,
          height: 44,
          decoration: const BoxDecoration(
            gradient: AppGradients.brand,
            borderRadius: AppRadii.medium,
          ),
          child: const Icon(Icons.auto_awesome, color: Colors.white),
        ),
        const SizedBox(width: AppDimensions.md),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('SWING', style: AppTextStyles.headingH6),
            Text('DESIGN SYSTEM',
                style: AppTextStyles.subheadingS3Semibold.copyWith(
                  color: AppColors.textSecondary,
                  letterSpacing: 1,
                )),
          ],
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: AppDimensions.md,
            vertical: AppDimensions.sm,
          ),
          decoration: const BoxDecoration(
            color: AppColors.surface,
            borderRadius: AppRadii.pill,
            border: AppBorders.subtle,
          ),
          child: const Text(
            'Preview',
            style: TextStyle(
              color: AppColors.brand,
              fontSize: 12,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildHero() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppDimensions.xl),
      decoration: const BoxDecoration(
        gradient: AppGradients.brand,
        borderRadius: AppRadii.card,
        boxShadow: [AppShadows.elevationLarge],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimensions.md,
              vertical: AppDimensions.xs,
            ),
            decoration: BoxDecoration(
              color: Colors.white.withValues(alpha: 0.18),
              borderRadius: AppRadii.pill,
            ),
            child: const Text(
              'DESIGN TOKENS',
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.w700,
                letterSpacing: 1,
              ),
            ),
          ),
          const SizedBox(height: AppDimensions.md),
          const Text(
            'Build with consistency.',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w800,
              height: 1.2,
            ),
          ),
          const SizedBox(height: AppDimensions.sm),
          Text(
            'Contoh halaman Flutter menggunakan token warna, '
            'tipografi, spacing, radius, border, gradient, dan shadow.',
            style: TextStyle(
              color: Colors.white.withValues(alpha: 0.82),
              fontSize: 14,
              height: 1.5,
            ),
          ),
          const SizedBox(height: AppDimensions.lg),
          FilledButton.icon(
            onPressed: () {},
            style: FilledButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: AppColors.brand,
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimensions.md,
                vertical: AppDimensions.md,
              ),
              shape: const RoundedRectangleBorder(
                borderRadius: AppRadii.medium,
              ),
            ),
            icon: const Icon(Icons.play_arrow_rounded),
            label: const Text('Explore tokens'),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title, String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: AppTextStyles.headingH3),
        const SizedBox(height: AppDimensions.xs),
        Text(
          subtitle,
          style: AppTextStyles.bodyB1.copyWith(color: AppColors.textSecondary),
        ),
      ],
    );
  }

  Widget _buildColors() {
    return Wrap(
      spacing: AppDimensions.sm,
      runSpacing: AppDimensions.sm,
      children: [
        for (final token in tokenColors)
          if (token.value case final Color color)
            SizedBox(
              width: 126,
              child: Container(
                padding: const EdgeInsets.all(AppDimensions.sm),
                decoration: const BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: AppRadii.medium,
                  border: AppBorders.subtle,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 52,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: AppRadii.small,
                      ),
                    ),
                    const SizedBox(height: AppDimensions.xs),
                    Text(
                      token.name,
                      style: AppTextStyles.bodyB3Semibold,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      '#${color.toARGB32().toRadixString(16).padLeft(8, '0').substring(2).toUpperCase()}',
                      style: AppTextStyles.bodyB4,
                    ),
                  ],
                ),
              ),
            ),
      ],
    );
  }

  Widget _buildTypography() {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(AppDimensions.lg),
      decoration: const BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppRadii.card,
        border: AppBorders.subtle,
        boxShadow: [AppShadows.elevationSmall],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (final token in tokenTextStyles)
            if (token.value case final TextStyle style) ...[
              Text(token.name, style: AppTextStyles.bodyB3Semibold),
              Text(
                'The quick brown fox jumps over the lazy dog.',
                style: style,
              ),
              const SizedBox(height: AppDimensions.md),
            ],
        ],
      ),
    );
  }

  Widget _buildDimensions() {
    return Wrap(
      spacing: AppDimensions.sm,
      runSpacing: AppDimensions.sm,
      children: [
        for (final token in tokenDimensions)
          if (token.value case final num value)
            Container(
              width: 154,
              padding: const EdgeInsets.all(AppDimensions.sm),
              decoration: const BoxDecoration(
                color: AppColors.surface,
                borderRadius: AppRadii.small,
                border: AppBorders.subtle,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    token.name,
                    style: AppTextStyles.bodyB3Semibold,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: AppDimensions.xs),
                  Text(
                    value.toString(),
                    style: AppTextStyles.bodyB1,
                  ),
                ],
              ),
            ),
      ],
    );
  }

  Widget _buildSpacing() {
    return Wrap(
      spacing: AppDimensions.sm,
      runSpacing: AppDimensions.sm,
      children: [
        for (final token in tokenDimensions)
          if (token.name.startsWith('dimensionSpacing'))
            if (token.value case final num value)
              Container(
                width: 150,
                padding: const EdgeInsets.all(AppDimensions.sm),
                decoration: const BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: AppRadii.small,
                  border: AppBorders.subtle,
                ),
                child: Row(
                  children: [
                    Container(
                      width: value.clamp(2, 48).toDouble(),
                      height: value.clamp(2, 48).toDouble(),
                      decoration: const BoxDecoration(
                        color: AppColors.brand,
                        borderRadius: AppRadii.small,
                      ),
                    ),
                    const SizedBox(width: AppDimensions.sm),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            token.name,
                            style: AppTextStyles.bodyB3Semibold,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            value.toString(),
                            style: AppTextStyles.bodyB2,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
      ],
    );
  }

  Widget _buildRadii() {
    const radii = [
      (name: 'Small · 8 px', radius: AppRadii.small),
      (name: 'Medium · 14 px', radius: AppRadii.medium),
      (name: 'Card · 20 px', radius: AppRadii.card),
      (name: 'Pill · 999 px', radius: AppRadii.pill),
    ];

    return Wrap(
      spacing: AppDimensions.md,
      runSpacing: AppDimensions.md,
      children: [
        for (final item in radii)
          Container(
            width: 150,
            padding: const EdgeInsets.all(AppDimensions.md),
            decoration: BoxDecoration(
              color: AppColors.brandSoft,
              borderRadius: item.radius,
              border: AppBorders.subtle,
            ),
            child: Column(
              children: [
                Container(
                  height: 48,
                  decoration: BoxDecoration(
                    color: AppColors.brand,
                    borderRadius: item.radius,
                  ),
                ),
                const SizedBox(height: AppDimensions.sm),
                Text(item.name, style: AppTextStyles.bodyB2Semibold),
              ],
            ),
          ),
      ],
    );
  }

  Widget _buildGradients() {
    return Wrap(
      spacing: AppDimensions.md,
      runSpacing: AppDimensions.md,
      children: [
        for (final item in tokenGradients)
          if (item.value case final LinearGradient gradient)
            SizedBox(
              width: 220,
              child: Container(
                padding: const EdgeInsets.all(AppDimensions.sm),
                decoration: const BoxDecoration(
                  color: AppColors.surface,
                  borderRadius: AppRadii.medium,
                  border: AppBorders.subtle,
                  boxShadow: [AppShadows.elevationSmall],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 88,
                      decoration: const BoxDecoration(
                        color: AppColors.dark500,
                        borderRadius: AppRadii.small,
                      ),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: gradient,
                          borderRadius: AppRadii.small,
                        ),
                        child: const SizedBox.expand(),
                      ),
                    ),
                    const SizedBox(height: AppDimensions.sm),
                    Text(
                      item.name,
                      style: AppTextStyles.bodyB3Semibold,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
            ),
      ],
    );
  }

  Widget _buildBorders() {
    return Wrap(
      spacing: AppDimensions.md,
      runSpacing: AppDimensions.md,
      children: [
        _buildBorderSample(
          title: 'AppBorders.subtle',
          description: 'Border utuh dengan warna outline',
          border: AppBorders.subtle,
        ),
        _buildBorderSample(
          title: 'AppBorders.brand',
          description: 'Border utuh dengan warna brand',
          border: AppBorders.brand,
        ),
        _buildBorderSideSample(
          title: 'AppBorderSides.subtle',
          side: AppBorderSides.subtle,
        ),
        _buildBorderSideSample(
          title: 'AppBorderSides.brand',
          side: AppBorderSides.brand,
        ),
      ],
    );
  }

  Widget _buildBorderSample({
    required String title,
    required String description,
    required Border border,
  }) {
    return Container(
      width: 220,
      padding: const EdgeInsets.all(AppDimensions.md),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppRadii.medium,
        border: border,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppTextStyles.bodyB2Semibold),
          const SizedBox(height: AppDimensions.xs),
          Text(description, style: AppTextStyles.bodyB3),
        ],
      ),
    );
  }

  Widget _buildBorderSideSample({
    required String title,
    required BorderSide side,
  }) {
    return Container(
      width: 220,
      padding: const EdgeInsets.all(AppDimensions.md),
      decoration: const BoxDecoration(
        color: AppColors.surface,
        borderRadius: AppRadii.medium,
        border: AppBorders.subtle,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: AppTextStyles.bodyB2Semibold),
          const SizedBox(height: AppDimensions.sm),
          Container(
              height: 1,
              decoration: BoxDecoration(border: Border(bottom: side))),
        ],
      ),
    );
  }

  Widget _buildShadows() {
    return Wrap(
      spacing: AppDimensions.md,
      runSpacing: AppDimensions.md,
      children: [
        for (final token in tokenShadows)
          if (token.value case final BoxShadow shadow)
            Container(
              width: 154,
              height: 88,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: AppColors.surface,
                borderRadius: AppRadii.medium,
                boxShadow: [shadow],
              ),
              padding: const EdgeInsets.all(AppDimensions.sm),
              child: Text(
                token.name,
                style: AppTextStyles.bodyB3Semibold,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
      ],
    );
  }

  Widget _buildComponents() {
    return Wrap(
      spacing: AppDimensions.md,
      runSpacing: AppDimensions.md,
      children: [
        Container(
          padding: const EdgeInsets.all(AppDimensions.lg),
          decoration: const BoxDecoration(
            color: AppColors.surface,
            borderRadius: AppRadii.card,
            border: AppBorders.subtle,
            boxShadow: [AppShadows.elevationMedium],
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(Icons.layers_outlined, color: AppColors.brand),
              SizedBox(height: AppDimensions.md),
              Text('Card component', style: AppTextStyles.subheadingS2Semibold),
              SizedBox(height: AppDimensions.xs),
              Text(
                'Surface + radius + border + shadow',
                style: TextStyle(color: AppColors.textSecondary, fontSize: 12),
              ),
            ],
          ),
        ),
        OutlinedButton.icon(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            foregroundColor: AppColors.brand,
            side: AppBorderSides.brand,
            padding: const EdgeInsets.symmetric(
              horizontal: AppDimensions.md,
              vertical: AppDimensions.md,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: AppRadii.medium,
            ),
          ),
          icon: const Icon(Icons.add),
          label: const Text('Secondary action'),
        ),
      ],
    );
  }
}
