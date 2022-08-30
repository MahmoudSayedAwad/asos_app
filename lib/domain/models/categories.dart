class Categories {
  Categories(
    this.navigation,
    this.brands,
    this.footer,
  );


  List<Navigation> navigation;
  List<Brands> brands;
  List<Footer> footer;


}

class Navigation {
  Navigation(
    this.id,
    this.alias,
    this.type,
    this.webLargePriority,
    this.content,
   // this.display,
    this.style,
    this.link,
    this.children,
  );

  String id;
  String alias;
  String type;
  int webLargePriority;
  Content content;
 // Display display;
  Style style;
  Link link;
  List<Children> children;


}

class Brands {
  Brands(
    this.id,
    this.alias,
    this.type,
    this.webLargePriority,
    this.content,
    this.display,
    this.style,
    this.link,
    this.children,
  );

  String id;
  String alias;
  String type;

  int webLargePriority;
  Content content;
  Display display;
  Style style;
  Link link;
  List<Children> children;


}

class Footer {
  Footer(
    this.id,
    this.alias,
    this.type,
    this.webLargePriority,
    this.content,
    this.display,
    this.style,
    this.link,
    this.children,
  );

  String id;
  String alias;
  String type;

  int webLargePriority;
  Content content;
  Display display;
  Style style;
  Link link;
  List<Children> children;


}

class Children {
  Children(
    this.id,
    this.alias,
    this.type,
    this.channelExclusions,
    this.webLargePriority,
    this.content,
    this.display,
    this.style,
    this.link,
    this.children,
  );


  String id;
  String alias;
  String type;
  List<String> channelExclusions;
  int webLargePriority;
  Content content;
  Display display;
  Style style;
  Link link;
  List<Children> children;


}

class Link {
  Link(
    this.linkType,
    this.brandSectionAlias,
    this.categoryId,
    this.webUrl,
    this.appUrl,
  );
  String linkType;
  String brandSectionAlias;
  int categoryId;
  String webUrl;
  String appUrl;

}

class Style {
  Style(
    this.webLargeStyleType,
    this.mobileStyleType,
  );

  String webLargeStyleType;
  String mobileStyleType;


}

class Content {
  Content(
    this.title,
    this.subTitle,
    this.webLargeImageUrl,
    this.mobileImageUrl,
  );


  String title;
  String subTitle;
  String webLargeImageUrl;
  String mobileImageUrl;

}

class Display {
  Display(
    this.webLargeTemplateId,
    this.webLargeTemplateName,
    this.webLargeColumnSpan,
    this.mobileTemplateId,
    this.mobileTemplateName,
    this.mobileDisplayLayout,
  );

  int webLargeTemplateId;
  String webLargeTemplateName;
  int webLargeColumnSpan;
  int mobileTemplateId;
  String mobileTemplateName;
  String mobileDisplayLayout;

}
