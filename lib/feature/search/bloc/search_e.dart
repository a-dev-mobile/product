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

class SearchEventGoToCategories extends SearchEvent {
  const SearchEventGoToCategories(this.context);

  final BuildContext context;
}

class SearchEventChangeActiveCategory extends SearchEvent {
  const SearchEventChangeActiveCategory(this.activeCategory);

  final String activeCategory;
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
    this.isSearchInAllCategories = true,
  });

  final String find;
  final AppLocalizations l;
  final bool isSearchInAllCategories;

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [find, isSearchInAllCategories];
}
