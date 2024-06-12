import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'set_price_event.dart';
part 'set_price_state.dart';

class SetPriceBloc extends Bloc<SetPriceEvent, SetPriceState> {
  SetPriceBloc() : super(SetPriceInitial()) {
    on<SetPriceEvent>((event, emit) {});
  }
  TextEditingController supplyItemsController =
      TextEditingController(text: "Supply Items");

  TextEditingController priceController = TextEditingController();
  TextEditingController timeController = TextEditingController();
}
