import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:weather_app/model/Weather.dart';
import 'package:weather_app/model/apis/api_response.dart';
import 'package:weather_app/utils/AppExtFuns.dart';
import 'package:weather_app/view_model/HomeViewModel.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomeScreenState();
  }
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        viewModelBuilder: () => HomeViewModel(),
        onModelReady: (viewModel) => viewModel.initialise(),
        builder: (context, viewModel, child) => Scaffold(
              appBar: AppBar(
                title: Text('Home'),
              ),
              body: Container(
                child: Center(
                  child: getWeatherAndShowData(context, viewModel),
                ),
              ),
            ));
  }

  Widget getWeatherAndShowData(BuildContext context, HomeViewModel viewModel) {
    Weather? weather = viewModel.response.data as Weather?;

    switch (viewModel.response.status) {
      case Status.LOADING:
        return Center(child: CircularProgressIndicator());
      case Status.COMPLETED:
        return showRecordOnscreen(weather!);

      case Status.ERROR:
        return Center(
          child: Text('Please try again latter!!!'),
        );
      case Status.INITIAL:
      default:
        return Center(
          child: Text('Search the song by Artist'),
        );
    }
  }

  Widget showRecordOnscreen(Weather weather) {
    print('showRecordOnscreen size is ${weather.list.length}');

    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Text(
          '${weather.city.name} ${weather.city.country}',
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemCount: weather.list.length,
            itemBuilder: (BuildContext context, int index) {
              return Align(
                alignment: Alignment.topCenter,
                child: SizedBox(
                  width: 150,
                  height: 150,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.amber,
                    ),
                    margin: EdgeInsets.all(11),
                    child: Container(
                      margin: EdgeInsets.all(6),
                      child: Column(
                        children: [
                          Text(
                            '${weather.list[index].dtTxt.toFormatedDateTime('dd MMM yyyy')}',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            'at : ${weather.list[index].dtTxt.toFormatedDateTime('HH aa')}',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${getStringFrom(weather.list[index].weather[0].main.toString())}',
                            style: TextStyle(color: Colors.white, fontSize: 18, fontFamily: 'Trajan Pro'),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            '${weather.list[index].weather[0].description}',
                            style: TextStyle(color: Colors.white, fontSize: 15,fontFamily: 'Schyler'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  String getStringFrom(String theDay) {
    return theDay.toString().substring(theDay.toString().indexOf('.') + 1);
  }
}
