import 'package:asos_app/app/constants/constants.dart';
import 'package:asos_app/app/extensions.dart';
import 'package:asos_app/data/response/responses.dart';
import 'package:asos_app/domain/models/categories.dart';

extension DisplayResponseMapper on DisplayResponse? {
  Display toDomain() {
    return Display(
      this?.webLargeTemplateId?.orZero() ?? Constants.zero,
      this?.webLargeTemplateName?.orEmpty() ?? Constants.empty,
      this?.webLargeColumnSpan?.orZero() ?? Constants.zero,
      this?.mobileTemplateId?.orZero() ?? Constants.zero,
      this?.mobileTemplateName?.orEmpty() ?? Constants.empty,
      this?.mobileDisplayLayout?.orEmpty() ?? Constants.empty,
    );
  }
}

extension ContentResponseMapper on ContentResponse? {
  Content toDomain() {
    return Content(
      this?.title.orEmpty() ?? Constants.empty,
      this?.subTitle.orEmpty() ?? Constants.empty,
      this?.webLargeImageUrl.orEmpty() ?? Constants.empty,
      this?.mobileImageUrl.orEmpty() ?? Constants.empty,
    );
  }
}

extension StyleResponseMapper on StyleResponse? {
  Style toDomain() {
    return Style(
      this?.webLargeStyleType.orEmpty() ?? Constants.empty,
      this?.mobileStyleType.orEmpty() ?? Constants.empty,
    );
  }
}

extension LinkResponseMapper on LinkResponse? {
  Link toDomain() {
    return Link(
      this?.linkType.orEmpty() ?? Constants.empty,
      this?.brandSectionAlias.orEmpty() ?? Constants.empty,
      this?.categoryId.orZero() ?? Constants.zero,
      this?.webUrl.orEmpty() ?? Constants.empty,
      this?.appUrl.orEmpty() ?? Constants.empty,
    );
  }
}

extension ChildrenResponseMapper on ChildrenResponse? {
  Children toDomain() {
    return Children(
      this?.id.orEmpty() ?? Constants.empty,
      this?.alias.orEmpty() ?? Constants.empty,
      this?.type.orEmpty() ?? Constants.empty,
      this?.channelExclusions?.map((c) => c.orEmpty()).toList() ??
          const Iterable.empty().cast<String>().toList(),
      this?.webLargePriority.orZero() ?? Constants.zero,
      this!.content!.toDomain(),
      this?.display?.toDomain() ?? Display(0, "", 0, 0, "", ""),
      this!.style!.toDomain(),
      this?.link?.toDomain() ?? Link("", "", 0, "", ""),
      this?.children?.map((child) => child.toDomain()).toList() ??
          const Iterable.empty().cast<Children>().toList(),
    );
  }
}

extension FooterResponseMapper on FooterResponse? {
  Footer toDomain() {
    return Footer(
      this?.id.orEmpty() ?? Constants.empty,
      this?.alias.orEmpty() ?? Constants.empty,
      this?.type.orEmpty() ?? Constants.empty,
      this?.webLargePriority.orZero() ?? Constants.zero,
      this!.content!.toDomain(),
      this!.display!.toDomain(),
      this!.style!.toDomain(),
      this?.link?.toDomain() ?? Link("", "", 0, "", ""),
      this?.children?.map((child) => child.toDomain()).toList() ??
          const Iterable.empty().cast<Children>().toList(),
    );
  }
}

extension BrandsResponseMapper on BrandsResponse? {
  Brands toDomain() {
    return Brands(
      this?.id.orEmpty() ?? Constants.empty,
      this?.alias.orEmpty() ?? Constants.empty,
      this?.type.orEmpty() ?? Constants.empty,
      this?.webLargePriority.orZero() ?? Constants.zero,
      this!.content!.toDomain(),
      this!.display!.toDomain(),
      this!.style!.toDomain(),
      this?.link?.toDomain() ?? Link("", "", 0, "", ""),
      this?.children?.map((child) => child.toDomain()).toList() ??
          const Iterable.empty().cast<Children>().toList(),
    );
  }
}

extension NavigationResponseMapper on NavigationResponse? {
  Navigation toDomain() {
    return Navigation(
      this?.id.orEmpty() ?? Constants.empty,
      this?.alias.orEmpty() ?? Constants.empty,
      this?.type.orEmpty() ?? Constants.empty,
      this?.webLargePriority.orZero() ?? Constants.zero,
      this!.content!.toDomain(),
      // this!.display!.toDomain(),
      this!.style!.toDomain(),
      this!.link!.toDomain(),
      this?.children?.map((child) => child.toDomain()).toList() ??
          const Iterable.empty().cast<Children>().toList(),
    );
  }
}

extension CategoriesResponseMapper on CategoriesResponse? {
  Categories toDomain() {
    return Categories(
      this?.navigation?.map((nav) => nav.toDomain()).toList() ??
          const Iterable.empty().cast<Navigation>().toList(),
      this?.brands?.map((brand) => brand.toDomain()).toList() ??
          const Iterable.empty().cast<Brands>().toList(),
      this?.footer?.map((footer) => footer.toDomain()).toList() ??
          const Iterable.empty().cast<Footer>().toList(),
    );
  }
}
