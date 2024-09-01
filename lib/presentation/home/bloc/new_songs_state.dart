import 'package:spotify_app/domain/entities/song/song.dart';

abstract class NewSongsState {}

class NewSongsLoading extends NewSongsState {}

class NewSongsLoaded extends NewSongsState {
  final List<SontEntity> songs;

  NewSongsLoaded({
    required this.songs,
  });
}

class NewSongsLoadFailure extends NewSongsState {}
