import 'package:asos_app/app/app_prefrences.dart';
import 'package:asos_app/app/di.dart';
import 'package:asos_app/domain/models/countries.dart';
import 'package:asos_app/presentation/countries_page/countries_bloc/countries_bloc.dart';
import 'package:asos_app/presentation/onBoarding/on_boarding_view.dart';
import 'package:asos_app/presentation/resources/color_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grouped_list/grouped_list.dart';
import 'countries_bloc/countries_states.dart';

class CountryList extends StatelessWidget {
  const CountryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => instance<AsosCountriesCubit>()..getCountries(),
      child: BlocConsumer<AsosCountriesCubit, AsosCountriesStates>(
        listener: (BuildContext context, state) {},
        builder: (BuildContext context, state) {
          if (state is AsosSuccessCountriesState) {
            List<Country> countries = state.countries;
            AsosCountriesCubit countriesCubit = AsosCountriesCubit.get(context);
            return Scaffold(
              body: SafeArea(
                child: Column(
                  children: [
                    Expanded(
                      child: GroupedListView<Country, String>(
                        elements: countries,
                        groupBy: (country) =>
                            country.name.substring(0, 1).toUpperCase(),
                        groupSeparatorBuilder: (String country) => Container(
                          padding: const EdgeInsets.all(12.0),
                          decoration: const BoxDecoration(
                            color: ColorManager.grey,
                          ),
                          child: Text(
                            country.substring(0, 1).toUpperCase(),
                            style: Theme.of(context).textTheme.headlineLarge,
                          ),
                        ),
                        itemBuilder: (context, Country element) =>
                            GestureDetector(
                          onTap: () {
                            countriesCubit.saveCountry(element);
                            Navigator.push(context, MaterialPageRoute(builder: (context){return const OnBoardingView();}));
                          },
                          child: ListTile(
                            title: Text(element.name),
                          ),
                        ),
                        itemComparator: (item1, item2) =>
                            item1.name.compareTo(item2.name),
                        order: GroupedListOrder.ASC,
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }
        },
      ),
    );
  }
}
