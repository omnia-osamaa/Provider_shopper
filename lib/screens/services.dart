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
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(24),
        border: Border.all(color: AppColors.border, width: 1),
        boxShadow: const [
          BoxShadow(
            color: Color(0x22000000),
            blurRadius: 18,
            offset: Offset(0, 10),
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
                width: 54,
                height: 54,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Icon(
                  service.icon,
                  color: AppColors.primaryText,
                  size: 24,
                ),
              ),
              const SizedBox(width: 14),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      service.title,
                      style: const TextStyle(
                        color: AppColors.textPrimary,
                        fontSize: 16,
                        fontWeight: FontWeight.w800,
                        letterSpacing: -0.3,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      service.description,
                      style: const TextStyle(
                        color: AppColors.textSecondary,
                        fontSize: 13,
                        height: 1.6,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
            decoration: BoxDecoration(
              color: AppColors.surfaceAlt,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: AppColors.borderAlt),
            ),
            child: const Row(
              children: [
                Text(
                  'Available anytime',
                  style: TextStyle(
                    color: AppColors.textPrimary,
                    fontSize: 13,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                Icon(
                  Icons.arrow_forward_rounded,
                  color: AppColors.iconMuted,
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
