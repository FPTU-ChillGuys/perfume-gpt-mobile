import 'package:flutter/material.dart';

class ImportTicketDetailScreen extends StatelessWidget {
  const ImportTicketDetailScreen({super.key, required this.ticketId});

  final String ticketId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Chi tiết đơn - $ticketId'),
      ),
      body: const Center(
        child: Text('Import Ticket Detail Screen - Placeholder'),
      ),
    );
  }
}
