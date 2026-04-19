import 'package:flutter/material.dart';

class ServiceItem {
  final IconData icon;
  final String title;
  final String description;

  const ServiceItem({
    required this.icon,
    required this.title,
    required this.description,
  });
}

const List<ServiceItem> appServices = [
  ServiceItem(
    icon: Icons.track_changes_outlined,
    title: 'Order Tracking',
    description: 'Track your order in real-time from warehouse to your door.',
  ),
  ServiceItem(
    icon: Icons.assignment_return_outlined,
    title: 'Returns & Refunds',
    description: 'Request a return or refund for any item within 30 days.',
  ),
  ServiceItem(
    icon: Icons.support_agent_outlined,
    title: 'Customer Support',
    description: 'Chat with our support team anytime — we\'re here 24/7.',
  ),
  ServiceItem(
    icon: Icons.notifications_outlined,
    title: 'Price Alerts',
    description: 'Get notified when an item drops to your target price.',
  ),
  ServiceItem(
    icon: Icons.favorite_border_outlined,
    title: 'Wishlist',
    description: 'Save items you love and come back to them anytime.',
  ),
  ServiceItem(
    icon: Icons.local_offer_outlined,
    title: 'Exclusive Offers',
    description: 'Access member-only deals and limited-time promotions.',
  ),
];