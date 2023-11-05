import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackmanagementclass/viewmodels/profileview_model.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.nonReactive(
        viewModelBuilder: () => ProfileViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Profile View"),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    viewModel.counterService.counterValue.toString(),
                  )
                ],
              ),
            ),
          );
        });
  }
}
