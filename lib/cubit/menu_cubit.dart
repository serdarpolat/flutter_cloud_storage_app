import 'package:bloc/bloc.dart';

part 'menu_state.dart';

class MenuCubit extends Cubit<MenuState> {
  MenuCubit() : super(MenuState(page: 7));
  void changeNav(int page) => emit(MenuState(page: page));
}
