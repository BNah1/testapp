import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/features/favourite/bloc/favourite_list_cubit.dart';
import 'package:testapp/features/favourite/view/favourite_view.dart';
import 'package:testapp/features/product/view/product_view.dart';
import 'package:testapp/shared/constants/app_string.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> with TickerProviderStateMixin {
  late final TabController _tabController;
  late final FavouriteListCubit _cubit;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _cubit = FavouriteListCubit();
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _cubit,
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppString.appName),
          bottom: TabBar(
            tabs: _getHomeScreenTabs(_tabController.index),
            controller: _tabController,
            onTap: (index) {
              setState(() {});
            },
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: [
            ProductView(),
            FavouriteView()          ],
        ),
      ),
    );
  }
}

List<Tab> _getHomeScreenTabs(int index) {
  return [
    Tab(
      icon: Icon(
        index == 0 ? Icons.home : Icons.home_outlined,
        color: Colors.blue,
      ),
    ),
    Tab(
      icon: Icon(
        index == 1 ? Icons.favorite : Icons.favorite_outline,
        color: Colors.blue,
      ),
    ),
  ];
}
