import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(() {
      setState(() {}); // Refresh UI when tab selection changes
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            controller: _tabController,  // Attach TabController
            indicatorColor: Colors.red,
            labelColor: Colors.blue, // Text color for selected tab
            unselectedLabelColor: Colors.grey, // Text color for unselected tabs
            tabs: [
              Tab(
                child: DynamicTabItem(
                  label: 'All',
                  isSelected: _tabController.index == 0, // Check selected tab
                ),
              ),
              Tab(
                child: DynamicTabItem(
                  label: 'Confirm',
                  isSelected: _tabController.index == 1, // Check selected tab
                ),
              ),
              Tab(
                child: DynamicTabItem(
                  label: 'Reminder',
                  isSelected: _tabController.index == 2, // Check selected tab
                ),
              ),
              Tab(
                child: DynamicTabItem(
                  label: 'Update',
                  isSelected: _tabController.index == 3, // Check selected tab
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            Center(child: Text('All content')),
            Center(child: Text('Confirm content')),
            Center(child: Text('Reminder content')),
            Center(child: Text('Update content')),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}

class DynamicTabItem extends StatelessWidget {
  final String label;
  final bool isSelected;

  DynamicTabItem({required this.label, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isSelected
            ? Colors.blue  // Selected tab background color
            : Colors.grey[300],  // Unselected tab background color
      ),
      child: Text(
        label,
        style: TextStyle(
          fontSize: 10,
          fontWeight: FontWeight.bold,
          color: isSelected
              ? Colors.white  // Text color for selected tab
              : Colors.black,  // Text color for unselected tab
        ),
      ),
    );
  }
}
