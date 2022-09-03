import 'package:asos_app/presentation/resources/routes_manager.dart';
import 'package:flutter/material.dart';
import '../../../resources/values_manager.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        padding: const EdgeInsets.all(AppPadding.p8),
        children: [
          ListTile(
            leading: const Icon(Icons.shopping_bag_outlined),
            title:
                Text("Country", style: Theme.of(context).textTheme.bodyLarge),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.pushNamed(context, Routes.countries);
            },
          ),
        ],
      ),
    );
  }
}
