part of 'search_b.dart';

abstract class SearchEvent extends Equatable {
  const SearchEvent();
  @override
  List<Object> get props => [];
}

class SearchEventStarted extends SearchEvent {
  const SearchEventStarted();
}

class SearchEventClean extends SearchEvent {
  const SearchEventClean();
}


class SearchEventIncrementWeight extends SearchEvent {
  const SearchEventIncrementWeight({required this.id});
  final int id;
}

class SearchEventDecrementWeight extends SearchEvent {
  const SearchEventDecrementWeight({required this.id});
  final int id;
}

class SearchEventFind extends SearchEvent {
  const SearchEventFind({
    required this.l,
    required this.find,
  });

  final String find;

  final AppLocalizations l;

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [find, l];
}

class SearchEventFindSelectedCategory extends SearchEvent {
  const SearchEventFindSelectedCategory({
    required this.context,
    this.idCategory = -1,
    this.isOpenPageCategories = false,
  });

  final int idCategory;
  final bool isOpenPageCategories;
  final BuildContext context;

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [idCategory];
}
