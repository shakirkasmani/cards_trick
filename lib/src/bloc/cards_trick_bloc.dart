import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/kt.dart';

import 'package:cardstrick/src/data/trick_card_data.dart';
import 'package:cardstrick/src/model/trick_card.dart';

part 'cards_trick_bloc.freezed.dart';
part 'cards_trick_event.dart';
part 'cards_trick_state.dart';

@injectable
class TrickCardBloc extends Bloc<TrickCardEvent, TrickCardState> {
  TrickCardBloc() : super(TrickCardState.initial());

  @override
  Stream<TrickCardState> mapEventToState(
    TrickCardEvent event,
  ) async* {
    yield* event.map(
      started: (e) async* {
        yield state.copyWith(
          numberValue: 0,
          cardIndex: 0,
          done: false,
        );
      },
      appeared: (e) async* {
        yield* _cardInc(state, true, e.card);
      },
      notAppeared: (e) async* {
        yield* _cardInc(state, false, e.card);
      },
    );
  }

  Stream<TrickCardState> _cardInc(
      TrickCardState state, bool apeared, TrickCard card) async* {
    yield state.copyWith(
      animationDone: false,
    );

    await Future.delayed(Duration(milliseconds: 800));

    int value = state.numberValue;
    if (apeared) value += card.value;

    if (state.cardIndex < state.cards.size - 1) {
      yield state.copyWith(
        numberValue: value,
        cardIndex: state.cardIndex + 1,
        animationDone: true,
      );
    } else {
      yield state.copyWith(
        numberValue: value,
        done: true,
      );
    }
  }
}
