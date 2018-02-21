part of data;

@immutable
class SearchModel {
  final bool isActive;
  final String query;

  const SearchModel({
    this.isActive: false,
    this.query: '',
  });

  SearchModel copy({
    bool isActive,
    String query,
  }) {
    return new SearchModel(
      isActive: isActive ?? this.isActive,
      query: query ?? this.query,
    );
  }
}