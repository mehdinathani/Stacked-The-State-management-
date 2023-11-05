import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackmanagementclass/viewmodels/homeview_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
        viewModelBuilder: () => HomeViewModel(),
        builder: (context, viewModel, child) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Home"),
            ),
            body: SafeArea(
                child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(viewModel.counterservice.counterValue.toString()),
                  ElevatedButton(
                    onPressed: () {
                      viewModel.addValue();
                    },
                    child: const Text("Add Value"),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        viewModel.navigateToProfile();
                      },
                      child: const Text("Profile View"))
                ],
              ),
            )),
          );
        });
  }
}
