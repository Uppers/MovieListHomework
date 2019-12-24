// GENERATED CODE - DO NOT MODIFY BY HAND

part of movie;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Movie> _$movieSerializer = new _$MovieSerializer();

class _$MovieSerializer implements StructuredSerializer<Movie> {
  @override
  final Iterable<Type> types = const [Movie, _$Movie];
  @override
  final String wireName = 'Movie';

  @override
  Iterable<Object> serialize(Serializers serializers, Movie object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'year',
      serializers.serialize(object.year, specifiedType: const FullType(int)),
      'rating',
      serializers.serialize(object.rating,
          specifiedType: const FullType(double)),
      'description_full',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
      'medium_cover_image',
      serializers.serialize(object.mediumCoverImage,
          specifiedType: const FullType(String)),
    ];
    if (object.runtime != null) {
      result
        ..add('runtime')
        ..add(serializers.serialize(object.runtime,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Movie deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MovieBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'year':
          result.year = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'rating':
          result.rating = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'runtime':
          result.runtime = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'description_full':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'medium_cover_image':
          result.mediumCoverImage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Movie extends Movie {
  @override
  final int id;
  @override
  final String title;
  @override
  final int year;
  @override
  final double rating;
  @override
  final int runtime;
  @override
  final String description;
  @override
  final String mediumCoverImage;

  factory _$Movie([void Function(MovieBuilder) updates]) =>
      (new MovieBuilder()..update(updates)).build();

  _$Movie._(
      {this.id,
      this.title,
      this.year,
      this.rating,
      this.runtime,
      this.description,
      this.mediumCoverImage})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('Movie', 'id');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Movie', 'title');
    }
    if (year == null) {
      throw new BuiltValueNullFieldError('Movie', 'year');
    }
    if (rating == null) {
      throw new BuiltValueNullFieldError('Movie', 'rating');
    }
    if (description == null) {
      throw new BuiltValueNullFieldError('Movie', 'description');
    }
    if (mediumCoverImage == null) {
      throw new BuiltValueNullFieldError('Movie', 'mediumCoverImage');
    }
  }

  @override
  Movie rebuild(void Function(MovieBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MovieBuilder toBuilder() => new MovieBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Movie &&
        id == other.id &&
        title == other.title &&
        year == other.year &&
        rating == other.rating &&
        runtime == other.runtime &&
        description == other.description &&
        mediumCoverImage == other.mediumCoverImage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), title.hashCode),
                        year.hashCode),
                    rating.hashCode),
                runtime.hashCode),
            description.hashCode),
        mediumCoverImage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Movie')
          ..add('id', id)
          ..add('title', title)
          ..add('year', year)
          ..add('rating', rating)
          ..add('runtime', runtime)
          ..add('description', description)
          ..add('mediumCoverImage', mediumCoverImage))
        .toString();
  }
}

class MovieBuilder implements Builder<Movie, MovieBuilder> {
  _$Movie _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  int _year;
  int get year => _$this._year;
  set year(int year) => _$this._year = year;

  double _rating;
  double get rating => _$this._rating;
  set rating(double rating) => _$this._rating = rating;

  int _runtime;
  int get runtime => _$this._runtime;
  set runtime(int runtime) => _$this._runtime = runtime;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _mediumCoverImage;
  String get mediumCoverImage => _$this._mediumCoverImage;
  set mediumCoverImage(String mediumCoverImage) =>
      _$this._mediumCoverImage = mediumCoverImage;

  MovieBuilder();

  MovieBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _title = _$v.title;
      _year = _$v.year;
      _rating = _$v.rating;
      _runtime = _$v.runtime;
      _description = _$v.description;
      _mediumCoverImage = _$v.mediumCoverImage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Movie other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Movie;
  }

  @override
  void update(void Function(MovieBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Movie build() {
    final _$result = _$v ??
        new _$Movie._(
            id: id,
            title: title,
            year: year,
            rating: rating,
            runtime: runtime,
            description: description,
            mediumCoverImage: mediumCoverImage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
