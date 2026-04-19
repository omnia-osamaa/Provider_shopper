import 'package:flutter/material.dart';
import 'package:provider_shopper/common/theme.dart';
import 'package:provider_shopper/models/service_model.dart';

class MyServices extends StatelessWidget {
  const MyServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.background,
        surfaceTintColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Services',
          style: TextStyle(
            fontFamily: 'Corben',
            fontSize: 22,
            fontWeight: FontWeight.w900,
            color: AppColors.textPrimary,
            letterSpacing: -0.5,
          ),
        ),
      ),
      body: ListView.separated(
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 32),
        itemCount: appServices.length + 1,
        separatorBuilder: (_, index) => index == 0
            ? const SizedBox(height: 18)
            : const SizedBox(height: 14),
        itemBuilder: (context, index) {
          if (index == 0) {
            return const _ServicesHero();
          }

          return ServiceCard(service: appServices[index - 1]);
        },
      ),
    );
  }
}

class _ServicesHero extends StatelessWidget {
  const _ServicesHero();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(22),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(28),
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color(0xFF1D1D1D), Color(0xFF131313)],
        ),
        border: Border.all(color: AppColors.borderAlt),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Everything you need,\nright after checkout.',
            style: TextStyle(
              color: AppColors.textPrimary,
              fontFamily: 'Corben',
              fontSize: 24,
              fontWeight: FontWeight.w900,
              height: 1.2,
              letterSpacing: -0.8,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Helpful shopping tools designed to keep orders, offers, and support all in one smooth place.',
            style: TextStyle(
              color: AppColors.textSecondary,
              fontSize: 14,
              height: 1.55,
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final ServiceItem service;
  const ServiceCard({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20), // Increased from 18
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(28), // More rounded
        border: Border.all(color: AppColors.border, width: 1.2),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.35),
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 60, // Slightly larger
                height: 60,
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [AppColors.primary, Color(0xFFFFD700)],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Icon(
                  service.icon,
                  color: AppColors.primaryText,
                  size: 28, // Slightly larger
                ),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      service.title,
                      style: const TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 18, // Slightly larger
                        fontWeight: FontWeight.w800,
                        letterSpacing: -0.4,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      service.description,
                      style: const TextStyle(
                        color: AppColors.textSecondary,
                        fontSize: 14,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            decoration: BoxDecoration(
              color: AppColors.surfaceAlt,
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: AppColors.borderAlt),
            ),
            child: const Row(
              children: [
                Text(
                  'Available anytime',
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 13,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_rounded,
                  color: AppColors.primary, // Thematic color for the arrow
                  size: 18,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
