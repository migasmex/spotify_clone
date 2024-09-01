import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify_app/domain/usecases/song/get_new_songs.dart';
import 'package:spotify_app/presentation/home/bloc/new_songs_state.dart';
import 'package:spotify_app/service_locator.dart';

class NewSongsCubit extends Cubit<NewSongsState> {
  NewSongsCubit() : super(NewSongsLoading());

  Future<void> getNewSongs() async {
    var returnedSongs = await sl<GetNewSongsUseCase>().call();

    returnedSongs.fold(
      (l) {
        emit(NewSongsLoadFailure());
      },
      (data) {
        emit(NewSongsLoaded(songs: data));
      },
    );
  }
}
