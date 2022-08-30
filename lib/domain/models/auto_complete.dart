class AutoComplete {
  AutoComplete(
      this.suggestionGroups);

  List<SuggestionGroups> suggestionGroups;



}
class SuggestionGroups {
  SuggestionGroups(
      this.indexName, 
      this.indexTitle, 
      this.suggestions);


  String indexName;
  String indexTitle;
  List<Suggestions> suggestions;



}
class Suggestions {
  Suggestions(
      this.searchTerm, 
      this.numberOfResults);


  String searchTerm;
  int numberOfResults;


}