part of 'cards_trick_bloc.dart';

@freezed
abstract class TrickCardState with _$TrickCardState {
  const factory TrickCardState({
    @required KtList<TrickCard> cards,
    @required int numberValue,
    @required int cardIndex,
    @required bool done,
    @required bool animationDone,
  }) = _MagicCardBlocState;

  factory TrickCardState.initial() => TrickCardState(
        cards: cards.toImmutableList(),
        numberValue: 0,
        cardIndex: 0,
        done: false,
        animationDone: true,
      );
}
