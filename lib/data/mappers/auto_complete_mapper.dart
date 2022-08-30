import 'package:asos_app/app/constants/constants.dart';
import 'package:asos_app/app/extensions.dart';
import 'package:asos_app/data/response/responses.dart';
import 'package:asos_app/domain/models/auto_complete.dart';

extension AutoCompleteResponseMapper on AutoCompleteResponse? {
  AutoComplete toDomain() {
    return AutoComplete(this
            ?.suggestionGroups
            ?.map((suggestionGroup) => suggestionGroup.toDomain())
            .toList() ??
        const Iterable.empty().cast<SuggestionGroups>().toList());
  }
}

extension SuggestionGroupsResponseMapper on SuggestionGroupsResponse? {
  SuggestionGroups toDomain() {
    return SuggestionGroups(
      this?.indexName.orEmpty() ?? Constants.empty,
      this?.indexTitle.orEmpty() ?? Constants.empty,
      this?.suggestions?.map((suggestion) => suggestion.toDomain()).toList() ??
          const Iterable.empty().cast<Suggestions>().toList(),
    );
  }
}

extension SuggestionsResponseMapper on SuggestionsResponse? {
  Suggestions toDomain() {
    return Suggestions(this?.searchTerm.orEmpty() ?? Constants.empty,
        this?.numberOfResults.orZero() ?? Constants.zero);
  }
}
