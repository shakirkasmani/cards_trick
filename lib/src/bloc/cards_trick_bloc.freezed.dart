// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'cards_trick_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TrickCardEventTearOff {
  const _$TrickCardEventTearOff();

// ignore: unused_element
  _Started started() {
    return const _Started();
  }

// ignore: unused_element
  _Appeared appeared(TrickCard card) {
    return _Appeared(
      card,
    );
  }

// ignore: unused_element
  _NotAppeared notAppeared(TrickCard card) {
    return _NotAppeared(
      card,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TrickCardEvent = _$TrickCardEventTearOff();

/// @nodoc
mixin _$TrickCardEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult appeared(TrickCard card),
    @required TResult notAppeared(TrickCard card),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult appeared(TrickCard card),
    TResult notAppeared(TrickCard card),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult appeared(_Appeared value),
    @required TResult notAppeared(_NotAppeared value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult appeared(_Appeared value),
    TResult notAppeared(_NotAppeared value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $TrickCardEventCopyWith<$Res> {
  factory $TrickCardEventCopyWith(
          TrickCardEvent value, $Res Function(TrickCardEvent) then) =
      _$TrickCardEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TrickCardEventCopyWithImpl<$Res>
    implements $TrickCardEventCopyWith<$Res> {
  _$TrickCardEventCopyWithImpl(this._value, this._then);

  final TrickCardEvent _value;
  // ignore: unused_field
  final $Res Function(TrickCardEvent) _then;
}

/// @nodoc
abstract class _$StartedCopyWith<$Res> {
  factory _$StartedCopyWith(_Started value, $Res Function(_Started) then) =
      __$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$StartedCopyWithImpl<$Res> extends _$TrickCardEventCopyWithImpl<$Res>
    implements _$StartedCopyWith<$Res> {
  __$StartedCopyWithImpl(_Started _value, $Res Function(_Started) _then)
      : super(_value, (v) => _then(v as _Started));

  @override
  _Started get _value => super._value as _Started;
}

/// @nodoc
class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'TrickCardEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult appeared(TrickCard card),
    @required TResult notAppeared(TrickCard card),
  }) {
    assert(started != null);
    assert(appeared != null);
    assert(notAppeared != null);
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult appeared(TrickCard card),
    TResult notAppeared(TrickCard card),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult appeared(_Appeared value),
    @required TResult notAppeared(_NotAppeared value),
  }) {
    assert(started != null);
    assert(appeared != null);
    assert(notAppeared != null);
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult appeared(_Appeared value),
    TResult notAppeared(_NotAppeared value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TrickCardEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$AppearedCopyWith<$Res> {
  factory _$AppearedCopyWith(_Appeared value, $Res Function(_Appeared) then) =
      __$AppearedCopyWithImpl<$Res>;
  $Res call({TrickCard card});
}

/// @nodoc
class __$AppearedCopyWithImpl<$Res> extends _$TrickCardEventCopyWithImpl<$Res>
    implements _$AppearedCopyWith<$Res> {
  __$AppearedCopyWithImpl(_Appeared _value, $Res Function(_Appeared) _then)
      : super(_value, (v) => _then(v as _Appeared));

  @override
  _Appeared get _value => super._value as _Appeared;

  @override
  $Res call({
    Object card = freezed,
  }) {
    return _then(_Appeared(
      card == freezed ? _value.card : card as TrickCard,
    ));
  }
}

/// @nodoc
class _$_Appeared implements _Appeared {
  const _$_Appeared(this.card) : assert(card != null);

  @override
  final TrickCard card;

  @override
  String toString() {
    return 'TrickCardEvent.appeared(card: $card)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Appeared &&
            (identical(other.card, card) ||
                const DeepCollectionEquality().equals(other.card, card)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(card);

  @JsonKey(ignore: true)
  @override
  _$AppearedCopyWith<_Appeared> get copyWith =>
      __$AppearedCopyWithImpl<_Appeared>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult appeared(TrickCard card),
    @required TResult notAppeared(TrickCard card),
  }) {
    assert(started != null);
    assert(appeared != null);
    assert(notAppeared != null);
    return appeared(card);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult appeared(TrickCard card),
    TResult notAppeared(TrickCard card),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (appeared != null) {
      return appeared(card);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult appeared(_Appeared value),
    @required TResult notAppeared(_NotAppeared value),
  }) {
    assert(started != null);
    assert(appeared != null);
    assert(notAppeared != null);
    return appeared(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult appeared(_Appeared value),
    TResult notAppeared(_NotAppeared value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (appeared != null) {
      return appeared(this);
    }
    return orElse();
  }
}

abstract class _Appeared implements TrickCardEvent {
  const factory _Appeared(TrickCard card) = _$_Appeared;

  TrickCard get card;
  @JsonKey(ignore: true)
  _$AppearedCopyWith<_Appeared> get copyWith;
}

/// @nodoc
abstract class _$NotAppearedCopyWith<$Res> {
  factory _$NotAppearedCopyWith(
          _NotAppeared value, $Res Function(_NotAppeared) then) =
      __$NotAppearedCopyWithImpl<$Res>;
  $Res call({TrickCard card});
}

/// @nodoc
class __$NotAppearedCopyWithImpl<$Res>
    extends _$TrickCardEventCopyWithImpl<$Res>
    implements _$NotAppearedCopyWith<$Res> {
  __$NotAppearedCopyWithImpl(
      _NotAppeared _value, $Res Function(_NotAppeared) _then)
      : super(_value, (v) => _then(v as _NotAppeared));

  @override
  _NotAppeared get _value => super._value as _NotAppeared;

  @override
  $Res call({
    Object card = freezed,
  }) {
    return _then(_NotAppeared(
      card == freezed ? _value.card : card as TrickCard,
    ));
  }
}

/// @nodoc
class _$_NotAppeared implements _NotAppeared {
  const _$_NotAppeared(this.card) : assert(card != null);

  @override
  final TrickCard card;

  @override
  String toString() {
    return 'TrickCardEvent.notAppeared(card: $card)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NotAppeared &&
            (identical(other.card, card) ||
                const DeepCollectionEquality().equals(other.card, card)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(card);

  @JsonKey(ignore: true)
  @override
  _$NotAppearedCopyWith<_NotAppeared> get copyWith =>
      __$NotAppearedCopyWithImpl<_NotAppeared>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult started(),
    @required TResult appeared(TrickCard card),
    @required TResult notAppeared(TrickCard card),
  }) {
    assert(started != null);
    assert(appeared != null);
    assert(notAppeared != null);
    return notAppeared(card);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult started(),
    TResult appeared(TrickCard card),
    TResult notAppeared(TrickCard card),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notAppeared != null) {
      return notAppeared(card);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult started(_Started value),
    @required TResult appeared(_Appeared value),
    @required TResult notAppeared(_NotAppeared value),
  }) {
    assert(started != null);
    assert(appeared != null);
    assert(notAppeared != null);
    return notAppeared(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult started(_Started value),
    TResult appeared(_Appeared value),
    TResult notAppeared(_NotAppeared value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (notAppeared != null) {
      return notAppeared(this);
    }
    return orElse();
  }
}

abstract class _NotAppeared implements TrickCardEvent {
  const factory _NotAppeared(TrickCard card) = _$_NotAppeared;

  TrickCard get card;
  @JsonKey(ignore: true)
  _$NotAppearedCopyWith<_NotAppeared> get copyWith;
}

/// @nodoc
class _$TrickCardStateTearOff {
  const _$TrickCardStateTearOff();

// ignore: unused_element
  _MagicCardBlocState call(
      {@required KtList<TrickCard> cards,
      @required int numberValue,
      @required int cardIndex,
      @required bool done,
      @required bool animationDone}) {
    return _MagicCardBlocState(
      cards: cards,
      numberValue: numberValue,
      cardIndex: cardIndex,
      done: done,
      animationDone: animationDone,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TrickCardState = _$TrickCardStateTearOff();

/// @nodoc
mixin _$TrickCardState {
  KtList<TrickCard> get cards;
  int get numberValue;
  int get cardIndex;
  bool get done;
  bool get animationDone;

  @JsonKey(ignore: true)
  $TrickCardStateCopyWith<TrickCardState> get copyWith;
}

/// @nodoc
abstract class $TrickCardStateCopyWith<$Res> {
  factory $TrickCardStateCopyWith(
          TrickCardState value, $Res Function(TrickCardState) then) =
      _$TrickCardStateCopyWithImpl<$Res>;
  $Res call(
      {KtList<TrickCard> cards,
      int numberValue,
      int cardIndex,
      bool done,
      bool animationDone});
}

/// @nodoc
class _$TrickCardStateCopyWithImpl<$Res>
    implements $TrickCardStateCopyWith<$Res> {
  _$TrickCardStateCopyWithImpl(this._value, this._then);

  final TrickCardState _value;
  // ignore: unused_field
  final $Res Function(TrickCardState) _then;

  @override
  $Res call({
    Object cards = freezed,
    Object numberValue = freezed,
    Object cardIndex = freezed,
    Object done = freezed,
    Object animationDone = freezed,
  }) {
    return _then(_value.copyWith(
      cards: cards == freezed ? _value.cards : cards as KtList<TrickCard>,
      numberValue:
          numberValue == freezed ? _value.numberValue : numberValue as int,
      cardIndex: cardIndex == freezed ? _value.cardIndex : cardIndex as int,
      done: done == freezed ? _value.done : done as bool,
      animationDone: animationDone == freezed
          ? _value.animationDone
          : animationDone as bool,
    ));
  }
}

/// @nodoc
abstract class _$MagicCardBlocStateCopyWith<$Res>
    implements $TrickCardStateCopyWith<$Res> {
  factory _$MagicCardBlocStateCopyWith(
          _MagicCardBlocState value, $Res Function(_MagicCardBlocState) then) =
      __$MagicCardBlocStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {KtList<TrickCard> cards,
      int numberValue,
      int cardIndex,
      bool done,
      bool animationDone});
}

/// @nodoc
class __$MagicCardBlocStateCopyWithImpl<$Res>
    extends _$TrickCardStateCopyWithImpl<$Res>
    implements _$MagicCardBlocStateCopyWith<$Res> {
  __$MagicCardBlocStateCopyWithImpl(
      _MagicCardBlocState _value, $Res Function(_MagicCardBlocState) _then)
      : super(_value, (v) => _then(v as _MagicCardBlocState));

  @override
  _MagicCardBlocState get _value => super._value as _MagicCardBlocState;

  @override
  $Res call({
    Object cards = freezed,
    Object numberValue = freezed,
    Object cardIndex = freezed,
    Object done = freezed,
    Object animationDone = freezed,
  }) {
    return _then(_MagicCardBlocState(
      cards: cards == freezed ? _value.cards : cards as KtList<TrickCard>,
      numberValue:
          numberValue == freezed ? _value.numberValue : numberValue as int,
      cardIndex: cardIndex == freezed ? _value.cardIndex : cardIndex as int,
      done: done == freezed ? _value.done : done as bool,
      animationDone: animationDone == freezed
          ? _value.animationDone
          : animationDone as bool,
    ));
  }
}

/// @nodoc
class _$_MagicCardBlocState implements _MagicCardBlocState {
  const _$_MagicCardBlocState(
      {@required this.cards,
      @required this.numberValue,
      @required this.cardIndex,
      @required this.done,
      @required this.animationDone})
      : assert(cards != null),
        assert(numberValue != null),
        assert(cardIndex != null),
        assert(done != null),
        assert(animationDone != null);

  @override
  final KtList<TrickCard> cards;
  @override
  final int numberValue;
  @override
  final int cardIndex;
  @override
  final bool done;
  @override
  final bool animationDone;

  @override
  String toString() {
    return 'TrickCardState(cards: $cards, numberValue: $numberValue, cardIndex: $cardIndex, done: $done, animationDone: $animationDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MagicCardBlocState &&
            (identical(other.cards, cards) ||
                const DeepCollectionEquality().equals(other.cards, cards)) &&
            (identical(other.numberValue, numberValue) ||
                const DeepCollectionEquality()
                    .equals(other.numberValue, numberValue)) &&
            (identical(other.cardIndex, cardIndex) ||
                const DeepCollectionEquality()
                    .equals(other.cardIndex, cardIndex)) &&
            (identical(other.done, done) ||
                const DeepCollectionEquality().equals(other.done, done)) &&
            (identical(other.animationDone, animationDone) ||
                const DeepCollectionEquality()
                    .equals(other.animationDone, animationDone)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cards) ^
      const DeepCollectionEquality().hash(numberValue) ^
      const DeepCollectionEquality().hash(cardIndex) ^
      const DeepCollectionEquality().hash(done) ^
      const DeepCollectionEquality().hash(animationDone);

  @JsonKey(ignore: true)
  @override
  _$MagicCardBlocStateCopyWith<_MagicCardBlocState> get copyWith =>
      __$MagicCardBlocStateCopyWithImpl<_MagicCardBlocState>(this, _$identity);
}

abstract class _MagicCardBlocState implements TrickCardState {
  const factory _MagicCardBlocState(
      {@required KtList<TrickCard> cards,
      @required int numberValue,
      @required int cardIndex,
      @required bool done,
      @required bool animationDone}) = _$_MagicCardBlocState;

  @override
  KtList<TrickCard> get cards;
  @override
  int get numberValue;
  @override
  int get cardIndex;
  @override
  bool get done;
  @override
  bool get animationDone;
  @override
  @JsonKey(ignore: true)
  _$MagicCardBlocStateCopyWith<_MagicCardBlocState> get copyWith;
}
