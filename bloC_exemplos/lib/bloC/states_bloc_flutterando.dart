abstract interface class ISearchCepState {}

class SearchCepSuccess implements ISearchCepState {
  final Map data;
  const SearchCepSuccess(this.data);
}

class SearchCepLoading implements ISearchCepState {
  const SearchCepLoading();
}

class SearchCepError implements ISearchCepState {
  final String message;
  const SearchCepError(this.message);
}
