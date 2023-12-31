import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final destinationStateProvider = StateProvider<int>((ref) => 0);

class NavigationMenu extends ConsumerWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int selectedIndex = ref.watch(destinationStateProvider);
    return NavigationBar(
      height: 56,
      selectedIndex: selectedIndex,
      onDestinationSelected: (int index) => {
        ref.read(destinationStateProvider.notifier).state = index,
      },
      labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
      destinations: const <NavigationDestination>[
        NavigationDestination(
          icon: Icon(Icons.home_rounded),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Icons.access_time_filled_rounded),
          label: 'Waiting',
        ),
        NavigationDestination(
          icon: Icon(Icons.local_fire_department_rounded),
          label: 'Popular',
        ),
        NavigationDestination(
          icon: Icon(Icons.bookmark_rounded),
          label: 'WatchList',
        ),
      ],
    );
  }
}
