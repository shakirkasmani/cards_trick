part of 'cards_trick_bloc.dart';

@freezed
abstract class TrickCardEvent with _$TrickCardEvent {
  const factory TrickCardEvent.started() = _Started;
  const factory TrickCardEvent.appeared(TrickCard card) = _Appeared;
  const factory TrickCardEvent.notAppeared(TrickCard card) = _NotAppeared;
}
