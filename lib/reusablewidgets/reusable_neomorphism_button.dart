import 'package:flutter/material.dart';
import 'package:motivational_app/theme/theme_data.dart';

class ReusableNeomorphismButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final bool toggleElevation;

  const ReusableNeomorphismButton({
    super.key,
    required this.title,
    required this.onTap,
    required this.toggleElevation,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        decoration: BoxDecoration(
          color: AppTheme.primaryBackgroundColor,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            toggleElevation
                ? const BoxShadow()
                : BoxShadow(
                    color: Colors.grey.shade600,
                    offset: const Offset(4, 4),
                    blurRadius: 15,
                    spreadRadius: 1),
            const BoxShadow(
                color: Colors.white,
                offset: Offset(-4, -4),
                blurRadius: 15,
                spreadRadius: 1),
          ],
        ),
        duration: const Duration(milliseconds: 200),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
