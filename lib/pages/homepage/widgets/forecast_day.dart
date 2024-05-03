import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:weather_app_steadfastit/helper/gaps.dart';
import 'package:weather_app_steadfastit/models/HourTemperature.dart';
import 'package:weather_app_steadfastit/pages/homepage/utils.dart';
import 'package:weather_app_steadfastit/providers/forecast_provider.dart';
import 'package:weather_app_steadfastit/providers/temperature_type_provider.dart';
import 'package:weather_app_steadfastit/pages/homepage/widgets/temp_card.dart';
import 'package:weather_app_steadfastit/widgets/toggle_button.dart';

class ForecastDay extends StatefulWidget {
  final List<HourTemperature> hours;

  const ForecastDay({Key? key, required this.hours}) : super(key: key);

  @override
  State<ForecastDay> createState() => _ForecastDayState();
}

class _ForecastDayState extends State<ForecastDay> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
    // Set a delay to allow the build process to complete before scrolling
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _scrollToItem(getCurrentTimeIndex());
    });
  }

  void _scrollToItem(int index) {
    const double itemExtent = 80.0;
    final double offset = itemExtent * index;
    _controller.jumpTo(offset);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Consumer(
              builder: (BuildContext context, WidgetRef ref, _) {
                final forecastDay = ref.watch(forecastDayProvider);
                return forecastDay > 0 ? ToggleButton(
                  label: "Prev Day",
                  color:
                  Theme
                      .of(context)
                      .colorScheme
                      .primary
                      .withOpacity(0.3),
                  onPressed: ref
                      .read(forecastDayProvider.notifier)
                      .decreaseDay,
                ) : const SizedBox();
              },
            ),
            HORIZONTAL_GAP_8,
            Consumer(
              builder: (BuildContext context, WidgetRef ref, _) {
                return ToggleButton(
                  label: "Today",
                  color:
                  Theme
                      .of(context)
                      .colorScheme
                      .secondary
                      .withOpacity(0.3),
                  onPressed: ref
                      .read(forecastDayProvider.notifier)
                      .resetDay,
                );
              },
            ),
            HORIZONTAL_GAP_8,
            Consumer(
              builder: (BuildContext context, WidgetRef ref, _) {
                final forecastDay = ref.watch(forecastDayProvider);
                return forecastDay < 2 ? ToggleButton(
                  label: "Next Day",
                  color:
                  Theme
                      .of(context)
                      .colorScheme
                      .primary
                      .withOpacity(0.3),
                  onPressed: ref
                      .read(forecastDayProvider.notifier)
                      .increaseDay,
                ) : const SizedBox();
              },
            ),
          ],
        ),
        VERTICAL_GAP_32,
        SizedBox(
          height: 158,
          child: ListView.separated(
            controller: _controller,
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, index) =>
                Padding(
                  padding: EdgeInsets.only(
                      left: index == 0 ? 16.0 : 0,
                      right: index == 23 ? 16.0 : 0),
                  child: Consumer(
                    builder: (BuildContext context, WidgetRef ref,
                        _) {
                      final selectedType = ref.watch(temperatureTypeProvider);

                      return TemperatureCard(
                        selected: isCurrentTime(
                            widget.hours[index].time),
                        title: isCurrentTime(
                            widget.hours[index].time)
                            ? "Now"
                            : convertTo12HourFormat(
                            widget.hours[index].time),
                        iconAsset:
                        widget.hours[index].condition.icon,
                        temperature:
                        selectedType == TemperatureType.celsius ? widget.hours[index].tempC : widget.hours[index].tempF,
                      );
                    },
                  ),
                ),
            separatorBuilder: (_, index) => HORIZONTAL_GAP_12,
            itemCount: widget.hours.length,
          ),
        )
      ],
    );
  }
}
