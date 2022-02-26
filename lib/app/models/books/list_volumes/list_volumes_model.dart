import 'dart:convert';

import 'package:flutter/foundation.dart';

class ListVolumesModel {
  final String? kind;
  final int? totalItems;
  final List<Item>? items;
  ListVolumesModel({
    this.kind,
    this.totalItems,
    this.items,
  });

  ListVolumesModel copyWith({
    String? kind,
    int? totalItems,
    List<Item>? items,
  }) =>
      ListVolumesModel(
        kind: kind ?? this.kind,
        totalItems: totalItems ?? this.totalItems,
        items: items ?? this.items,
      );

  Map<String, dynamic> toMap() {
    List<Item>? newItems = items;
    newItems ??= [];

    return {
      'kind': kind,
      'totalItems': totalItems,
      'items': newItems.map((x) => x.toMap()).toList(),
    };
  }

  factory ListVolumesModel.fromMap(Map<String, dynamic> map) => ListVolumesModel(
        kind: map['kind'] ?? '',
        totalItems: map['totalItems']?.toInt() ?? 0,
        items: List<Item>.from(map['items']?.map((x) => Item.fromMap(x))),
      );

  String toJson() => json.encode(toMap());

  factory ListVolumesModel.fromJson(String source) => ListVolumesModel.fromMap(json.decode(source));

  @override
  String toString() => 'ListVolumesModel(kind: $kind, totalItems: $totalItems, items: $items)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ListVolumesModel &&
        other.kind == kind &&
        other.totalItems == totalItems &&
        listEquals(other.items, items);
  }

  @override
  int get hashCode => kind.hashCode ^ totalItems.hashCode ^ items.hashCode;
}

class Item {
  final String? kind;
  final String? id;
  final String? eTag;
  final String? selfLink;
  final VolumeInfo? volumeInfo;
  final SaleInfo? saleInfo;
  final AccessInfo? accessInfo;
  final SearchInfo? searchInfo;
  Item({
    this.kind,
    this.id,
    this.eTag,
    this.selfLink,
    this.volumeInfo,
    this.saleInfo,
    this.accessInfo,
    this.searchInfo,
  });

  Item copyWith({
    String? kind,
    String? id,
    String? eTag,
    String? selfLink,
    VolumeInfo? volumeInfo,
    SaleInfo? saleInfo,
    AccessInfo? accessInfo,
    SearchInfo? searchInfo,
  }) =>
      Item(
        kind: kind ?? this.kind,
        id: id ?? this.id,
        eTag: eTag ?? this.eTag,
        selfLink: selfLink ?? this.selfLink,
        volumeInfo: volumeInfo ?? this.volumeInfo,
        saleInfo: saleInfo ?? this.saleInfo,
        accessInfo: accessInfo ?? this.accessInfo,
        searchInfo: searchInfo ?? this.searchInfo,
      );

  Map<String, dynamic> toMap() {
    VolumeInfo? newVolumeInfo = volumeInfo;
    AccessInfo? newAccessInfo = accessInfo;
    SaleInfo? newSaleInfo = saleInfo;
    SearchInfo? newSearchInfo = searchInfo;
    newVolumeInfo ??= VolumeInfo();
    newAccessInfo ??= AccessInfo();
    newSaleInfo ??= SaleInfo();
    newSearchInfo ??= SearchInfo();

    return {
      'kind': kind,
      'id': id,
      'eTag': eTag,
      'selfLink': selfLink,
      'volumeInfo': newVolumeInfo.toMap(),
      'accessInfo': newAccessInfo.toMap(),
      'saleInfo': newSaleInfo.toMap(),
      'searchInfo': newSearchInfo.toMap(),
    };
  }

  factory Item.fromMap(Map<String, dynamic> map) => Item(
        kind: map['kind'] ?? '',
        id: map['id'] ?? '',
        eTag: map['eTag'] ?? '',
        selfLink: map['selfLink'] ?? '',
        volumeInfo:
            map['volumeInfo'] == null ? VolumeInfo() : VolumeInfo.fromMap(map['volumeInfo']),
        saleInfo: map['saleInfo'] == null ? SaleInfo() : SaleInfo.fromMap(map['saleInfo']),
        accessInfo:
            map['accessInfo'] == null ? AccessInfo() : AccessInfo.fromMap(map['accessInfo']),
        searchInfo:
            map['searchInfo'] == null ? SearchInfo() : SearchInfo.fromMap(map['searchInfo']),
      );

  String toJson() => json.encode(toMap());

  factory Item.fromJson(String source) => Item.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Item(kind: $kind, id: $id, eTag: $eTag, selfLink: $selfLink, volumeInfo: $volumeInfo, saleInfo: $saleInfo, accessInfo: $accessInfo, searchInfo: $searchInfo)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Item &&
        other.kind == kind &&
        other.id == id &&
        other.eTag == eTag &&
        other.selfLink == selfLink &&
        other.volumeInfo == volumeInfo &&
        other.saleInfo == saleInfo &&
        other.accessInfo == accessInfo &&
        other.searchInfo == searchInfo;
  }

  @override
  int get hashCode {
    return kind.hashCode ^
        id.hashCode ^
        eTag.hashCode ^
        selfLink.hashCode ^
        volumeInfo.hashCode ^
        saleInfo.hashCode ^
        accessInfo.hashCode ^
        searchInfo.hashCode;
  }
}

class VolumeInfo {
  final String? title;
  final String? subtitle;
  final List<String>? authors;
  final String? publishedDate;
  final List<IndustryIdentifier>? industryIdentifiers;
  final ReadingModes? readingModes;
  final int? pageCount;
  final String? printType;
  final List<String>? categories;
  final String? maturityRating;
  final bool? allowAnonLogging;
  final String? contentVersion;
  final PanelizationSummary? panelizationSummary;
  final ImageLinks? imageLinks;
  final String? language;
  final String? previewLink;
  final String? infoLink;
  final String? canonicalVolumeLink;
  VolumeInfo({
    this.title,
    this.subtitle,
    this.authors,
    this.publishedDate,
    this.industryIdentifiers,
    this.readingModes,
    this.pageCount,
    this.printType,
    this.categories,
    this.maturityRating,
    this.allowAnonLogging,
    this.contentVersion,
    this.panelizationSummary,
    this.imageLinks,
    this.language,
    this.previewLink,
    this.infoLink,
    this.canonicalVolumeLink,
  });

  VolumeInfo copyWith({
    String? title,
    String? subtitle,
    List<String>? authors,
    String? publishedDate,
    List<IndustryIdentifier>? industryIdentifiers,
    ReadingModes? readingModes,
    int? pageCount,
    String? printType,
    List<String>? categories,
    String? maturityRating,
    bool? allowAnonLogging,
    String? contentVersion,
    PanelizationSummary? panelizationSummary,
    ImageLinks? imageLinks,
    String? language,
    String? previewLink,
    String? infoLink,
    String? canonicalVolumeLink,
  }) =>
      VolumeInfo(
        title: title ?? this.title,
        subtitle: subtitle ?? this.subtitle,
        authors: authors ?? this.authors,
        publishedDate: publishedDate ?? this.publishedDate,
        industryIdentifiers: industryIdentifiers ?? this.industryIdentifiers,
        readingModes: readingModes ?? this.readingModes,
        pageCount: pageCount ?? this.pageCount,
        printType: printType ?? this.printType,
        categories: categories ?? this.categories,
        maturityRating: maturityRating ?? this.maturityRating,
        allowAnonLogging: allowAnonLogging ?? this.allowAnonLogging,
        contentVersion: contentVersion ?? this.contentVersion,
        panelizationSummary: panelizationSummary ?? this.panelizationSummary,
        imageLinks: imageLinks ?? this.imageLinks,
        language: language ?? this.language,
        previewLink: previewLink ?? this.previewLink,
        infoLink: infoLink ?? this.infoLink,
        canonicalVolumeLink: canonicalVolumeLink ?? this.canonicalVolumeLink,
      );

  Map<String, dynamic> toMap() {
    List<IndustryIdentifier>? newListOfIndustryIdentifiers = industryIdentifiers;
    ReadingModes? newReadingModes = readingModes;
    PanelizationSummary? newPanelizationSummary = panelizationSummary;
    ImageLinks? newImageLinks = imageLinks;
    newListOfIndustryIdentifiers ??= [];
    newReadingModes ??= ReadingModes();
    newPanelizationSummary ??= PanelizationSummary();
    newImageLinks ??= ImageLinks();
    return {
      'title': title,
      'subtitle': subtitle,
      'authors': authors ?? [],
      'publishedDate': publishedDate,
      'industryIdentifiers': newListOfIndustryIdentifiers.map((x) => x.toMap()).toList(),
      'readingModes': newReadingModes.toMap(),
      'pageCount': pageCount,
      'printType': printType,
      'categories': categories,
      'maturityRating': maturityRating,
      'allowAnonLogging': allowAnonLogging,
      'contentVersion': contentVersion,
      'panelizationSummary': newPanelizationSummary.toMap(),
      'imageLinks': newImageLinks.toMap(),
      'language': language,
      'previewLink': previewLink,
      'infoLink': infoLink,
      'canonicalVolumeLink': canonicalVolumeLink,
    };
  }

  factory VolumeInfo.fromMap(Map<String, dynamic> map) => VolumeInfo(
        title: map['title'] ?? '',
        subtitle: map['subtitle'] ?? '',
        authors: map['authors'] == null ? [] : List<String>.from(map['authors']),
        publishedDate: map['publishedDate'] ?? '',
        industryIdentifiers: List<IndustryIdentifier>.from(
            map['industryIdentifiers']?.map((x) => IndustryIdentifier.fromMap(x))),
        readingModes: map['readingModes'] == null
            ? ReadingModes()
            : ReadingModes.fromMap(map['readingModes']),
        pageCount: map['pageCount']?.toInt() ?? 0,
        printType: map['printType'] ?? '',
        categories: map['categories'] == null ? [] : List<String>.from(map['categories']),
        maturityRating: map['maturityRating'] ?? '',
        allowAnonLogging: map['allowAnonLogging'] ?? false,
        contentVersion: map['contentVersion'] ?? '',
        panelizationSummary: map['panelizationSummary'] == null
            ? PanelizationSummary()
            : PanelizationSummary.fromMap(map['panelizationSummary']),
        imageLinks:
            map['categories'] == null ? ImageLinks() : ImageLinks.fromMap(map['imageLinks']),
        language: map['language'] ?? '',
        previewLink: map['previewLink'] ?? '',
        infoLink: map['infoLink'] ?? '',
        canonicalVolumeLink: map['canonicalVolumeLink'] ?? '',
      );

  String toJson() => json.encode(toMap());

  factory VolumeInfo.fromJson(String source) => VolumeInfo.fromMap(json.decode(source));

  @override
  String toString() {
    return 'VolumeInfo(title: $title, subtitle: $subtitle, authors: $authors, publishedDate: $publishedDate, industryIdentifiers: $industryIdentifiers, readingModes: $readingModes, pageCount: $pageCount, printType: $printType, categories: $categories, maturityRating: $maturityRating, allowAnonLogging: $allowAnonLogging, contentVersion: $contentVersion, panelizationSummary: $panelizationSummary, imageLinks: $imageLinks, language: $language, previewLink: $previewLink, infoLink: $infoLink, canonicalVolumeLink: $canonicalVolumeLink)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is VolumeInfo &&
        other.title == title &&
        other.subtitle == subtitle &&
        listEquals(other.authors, authors) &&
        other.publishedDate == publishedDate &&
        listEquals(other.industryIdentifiers, industryIdentifiers) &&
        other.readingModes == readingModes &&
        other.pageCount == pageCount &&
        other.printType == printType &&
        listEquals(other.categories, categories) &&
        other.maturityRating == maturityRating &&
        other.allowAnonLogging == allowAnonLogging &&
        other.contentVersion == contentVersion &&
        other.panelizationSummary == panelizationSummary &&
        other.imageLinks == imageLinks &&
        other.language == language &&
        other.previewLink == previewLink &&
        other.infoLink == infoLink &&
        other.canonicalVolumeLink == canonicalVolumeLink;
  }

  @override
  int get hashCode {
    return title.hashCode ^
        subtitle.hashCode ^
        authors.hashCode ^
        publishedDate.hashCode ^
        industryIdentifiers.hashCode ^
        readingModes.hashCode ^
        pageCount.hashCode ^
        printType.hashCode ^
        categories.hashCode ^
        maturityRating.hashCode ^
        allowAnonLogging.hashCode ^
        contentVersion.hashCode ^
        panelizationSummary.hashCode ^
        imageLinks.hashCode ^
        language.hashCode ^
        previewLink.hashCode ^
        infoLink.hashCode ^
        canonicalVolumeLink.hashCode;
  }
}

class IndustryIdentifier {
  final String? type;
  final String? identifier;
  IndustryIdentifier({
    this.type,
    this.identifier,
  });

  IndustryIdentifier copyWith({
    String? type,
    String? identifier,
  }) =>
      IndustryIdentifier(
        type: type ?? this.type,
        identifier: identifier ?? this.identifier,
      );

  Map<String, dynamic> toMap() {
    return {
      'type': type ?? '',
      'identifier': identifier ?? '',
    };
  }

  factory IndustryIdentifier.fromMap(Map<String, dynamic> map) => IndustryIdentifier(
        type: map['type'] ?? '',
        identifier: map['identifier'] ?? '',
      );

  String toJson() => json.encode(toMap());

  factory IndustryIdentifier.fromJson(String source) =>
      IndustryIdentifier.fromMap(json.decode(source));

  @override
  String toString() => 'IndustryIdentifier(type: $type, identifier: $identifier)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is IndustryIdentifier && other.type == type && other.identifier == identifier;
  }

  @override
  int get hashCode => type.hashCode ^ identifier.hashCode;
}

class ReadingModes {
  final bool? text;
  final bool? image;
  ReadingModes({
    this.text,
    this.image,
  });

  ReadingModes copyWith({
    bool? text,
    bool? image,
  }) =>
      ReadingModes(
        text: text ?? this.text,
        image: image ?? this.image,
      );

  Map<String, dynamic> toMap() {
    return {
      'text': text,
      'image': image,
    };
  }

  factory ReadingModes.fromMap(Map<String, dynamic> map) => ReadingModes(
        text: map['text'] ?? false,
        image: map['image'] ?? false,
      );

  String toJson() => json.encode(toMap());

  factory ReadingModes.fromJson(String source) => ReadingModes.fromMap(json.decode(source));

  @override
  String toString() => 'ReadingModes(text: $text, image: $image)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ReadingModes && other.text == text && other.image == image;
  }

  @override
  int get hashCode => text.hashCode ^ image.hashCode;
}

class PanelizationSummary {
  final bool? containsEpubBubbles;
  final bool? containsImageBubbles;
  PanelizationSummary({
    this.containsEpubBubbles,
    this.containsImageBubbles,
  });

  PanelizationSummary copyWith({
    bool? containsEpubBubbles,
    bool? containsImageBubbles,
  }) =>
      PanelizationSummary(
        containsEpubBubbles: containsEpubBubbles ?? this.containsEpubBubbles,
        containsImageBubbles: containsImageBubbles ?? this.containsImageBubbles,
      );

  Map<String, dynamic> toMap() {
    return {
      'containsEpubBubbles': containsEpubBubbles,
      'containsImageBubbles': containsImageBubbles,
    };
  }

  factory PanelizationSummary.fromMap(Map<String, dynamic> map) => PanelizationSummary(
        containsEpubBubbles: map['containsEpubBubbles'] ?? false,
        containsImageBubbles: map['containsImageBubbles'] ?? false,
      );

  String toJson() => json.encode(toMap());

  factory PanelizationSummary.fromJson(String source) =>
      PanelizationSummary.fromMap(json.decode(source));

  @override
  String toString() =>
      'PanelizationSummary(containsEpubBubbles: $containsEpubBubbles, containsImageBubbles: $containsImageBubbles)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is PanelizationSummary &&
        other.containsEpubBubbles == containsEpubBubbles &&
        other.containsImageBubbles == containsImageBubbles;
  }

  @override
  int get hashCode => containsEpubBubbles.hashCode ^ containsImageBubbles.hashCode;
}

class ImageLinks {
  final String? smallThumbnail;
  final String? thumbnail;
  ImageLinks({
    this.smallThumbnail,
    this.thumbnail,
  });

  ImageLinks copyWith({
    String? smallThumbnail,
    String? thumbnail,
  }) =>
      ImageLinks(
        smallThumbnail: smallThumbnail ?? this.smallThumbnail,
        thumbnail: thumbnail ?? this.thumbnail,
      );

  Map<String, dynamic> toMap() {
    return {
      'smallThumbnail': smallThumbnail,
      'thumbnail': thumbnail,
    };
  }

  factory ImageLinks.fromMap(Map<String, dynamic> map) => ImageLinks(
        smallThumbnail: map['smallThumbnail'] ?? '',
        thumbnail: map['thumbnail'] ?? '',
      );

  String toJson() => json.encode(toMap());

  factory ImageLinks.fromJson(String source) => ImageLinks.fromMap(json.decode(source));

  @override
  String toString() => 'ImageLinks(smallThumbnail: $smallThumbnail, thumbnail: $thumbnail)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is ImageLinks &&
        other.smallThumbnail == smallThumbnail &&
        other.thumbnail == thumbnail;
  }

  @override
  int get hashCode => smallThumbnail.hashCode ^ thumbnail.hashCode;
}

class SaleInfo {
  final String? country;
  final String? saleability;
  final bool? isEbook;
  SaleInfo({
    this.country,
    this.saleability,
    this.isEbook,
  });

  SaleInfo copyWith({
    String? country,
    String? saleability,
    bool? isEbook,
  }) =>
      SaleInfo(
        country: country ?? this.country,
        saleability: saleability ?? this.saleability,
        isEbook: isEbook ?? this.isEbook,
      );

  Map<String, dynamic> toMap() {
    return {
      'country': country,
      'saleability': saleability,
      'isEbook': isEbook,
    };
  }

  factory SaleInfo.fromMap(Map<String, dynamic> map) => SaleInfo(
        country: map['country'] ?? '',
        saleability: map['saleability'] ?? '',
        isEbook: map['isEbook'] ?? false,
      );

  String toJson() => json.encode(toMap());

  factory SaleInfo.fromJson(String source) => SaleInfo.fromMap(json.decode(source));

  @override
  String toString() => 'SaleInfo(country: $country, saleability: $saleability, isEbook: $isEbook)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SaleInfo &&
        other.country == country &&
        other.saleability == saleability &&
        other.isEbook == isEbook;
  }

  @override
  int get hashCode => country.hashCode ^ saleability.hashCode ^ isEbook.hashCode;
}

class AccessInfo {
  final String? country;
  final String? viewability;
  final bool? embeddable;
  final bool? publicDomain;
  final String? textToSpeechPermission;
  final Epub? epub;
  final Pdf? pdf;
  final String? webReaderLink;
  final String? accessViewStatus;
  final bool? quoteSharingAllowed;
  AccessInfo({
    this.country,
    this.viewability,
    this.embeddable,
    this.publicDomain,
    this.textToSpeechPermission,
    this.epub,
    this.pdf,
    this.webReaderLink,
    this.accessViewStatus,
    this.quoteSharingAllowed,
  });

  AccessInfo copyWith({
    String? country,
    String? viewability,
    bool? embeddable,
    bool? publicDomain,
    String? textToSpeechPermission,
    Epub? epub,
    Pdf? pdf,
    String? webReaderLink,
    String? accessViewStatus,
    bool? quoteSharingAllowed,
  }) =>
      AccessInfo(
        country: country ?? this.country,
        viewability: viewability ?? this.viewability,
        embeddable: embeddable ?? this.embeddable,
        publicDomain: publicDomain ?? this.publicDomain,
        textToSpeechPermission: textToSpeechPermission ?? this.textToSpeechPermission,
        epub: epub ?? this.epub,
        pdf: pdf ?? this.pdf,
        webReaderLink: webReaderLink ?? this.webReaderLink,
        accessViewStatus: accessViewStatus ?? this.accessViewStatus,
        quoteSharingAllowed: quoteSharingAllowed ?? this.quoteSharingAllowed,
      );

  Map<String, dynamic> toMap() {
    Epub? newEpub = epub;
    Pdf? newPdf = pdf;
    newEpub ??= Epub();
    newPdf ??= Pdf();

    return {
      'country': country,
      'viewability': viewability,
      'embeddable': embeddable,
      'publicDomain': publicDomain,
      'textToSpeechPermission': textToSpeechPermission,
      'epub': newEpub.toMap(),
      'pdf': newPdf.toMap(),
      'webReaderLink': webReaderLink,
      'accessViewStatus': accessViewStatus,
      'quoteSharingAllowed': quoteSharingAllowed,
    };
  }

  factory AccessInfo.fromMap(Map<String, dynamic> map) => AccessInfo(
        country: map['country'] ?? '',
        viewability: map['viewability'] ?? '',
        embeddable: map['embeddable'] ?? false,
        publicDomain: map['publicDomain'] ?? false,
        textToSpeechPermission: map['textToSpeechPermission'] ?? '',
        epub: map['epub'] == null ? Epub() : Epub.fromMap(map['epub']),
        pdf: map['pdf'] == null ? Pdf() : Pdf.fromMap(map['pdf']),
        webReaderLink: map['webReaderLink'] ?? '',
        accessViewStatus: map['accessViewStatus'] ?? '',
        quoteSharingAllowed: map['quoteSharingAllowed'] ?? false,
      );

  String toJson() => json.encode(toMap());

  factory AccessInfo.fromJson(String source) => AccessInfo.fromMap(json.decode(source));

  @override
  String toString() {
    return 'AccessInfo(country: $country, viewability: $viewability, embeddable: $embeddable, publicDomain: $publicDomain, textToSpeechPermission: $textToSpeechPermission, epub: $epub, pdf: $pdf, webReaderLink: $webReaderLink, accessViewStatus: $accessViewStatus, quoteSharingAllowed: $quoteSharingAllowed)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is AccessInfo &&
        other.country == country &&
        other.viewability == viewability &&
        other.embeddable == embeddable &&
        other.publicDomain == publicDomain &&
        other.textToSpeechPermission == textToSpeechPermission &&
        other.epub == epub &&
        other.pdf == pdf &&
        other.webReaderLink == webReaderLink &&
        other.accessViewStatus == accessViewStatus &&
        other.quoteSharingAllowed == quoteSharingAllowed;
  }

  @override
  int get hashCode {
    return country.hashCode ^
        viewability.hashCode ^
        embeddable.hashCode ^
        publicDomain.hashCode ^
        textToSpeechPermission.hashCode ^
        epub.hashCode ^
        pdf.hashCode ^
        webReaderLink.hashCode ^
        accessViewStatus.hashCode ^
        quoteSharingAllowed.hashCode;
  }
}

class Epub {
  final bool? isAvailable;
  Epub({
    this.isAvailable,
  });

  Epub copyWith({
    bool? isAvailable,
  }) =>
      Epub(
        isAvailable: isAvailable ?? this.isAvailable,
      );

  Map<String, dynamic> toMap() => {
        'isAvailable': isAvailable,
      };

  factory Epub.fromMap(Map<String, dynamic> map) => Epub(
        isAvailable: map['isAvailable'] ?? false,
      );

  String toJson() => json.encode(toMap());

  factory Epub.fromJson(String source) => Epub.fromMap(json.decode(source));

  @override
  String toString() => 'Epub(isAvailable: $isAvailable)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Epub && other.isAvailable == isAvailable;
  }

  @override
  int get hashCode => isAvailable.hashCode;
}

class Pdf {
  final bool? isAvailable;
  Pdf({
    this.isAvailable,
  });

  Pdf copyWith({
    bool? isAvailable,
  }) =>
      Pdf(
        isAvailable: isAvailable ?? this.isAvailable,
      );

  Map<String, dynamic> toMap() => {
        'isAvailable': isAvailable,
      };

  factory Pdf.fromMap(Map<String, dynamic> map) => Pdf(
        isAvailable: map['isAvailable'] ?? false,
      );

  String toJson() => json.encode(toMap());

  factory Pdf.fromJson(String source) => Pdf.fromMap(json.decode(source));

  @override
  String toString() => 'Pdf(isAvailable: $isAvailable)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Pdf && other.isAvailable == isAvailable;
  }

  @override
  int get hashCode => isAvailable.hashCode;
}

class SearchInfo {
  final String? textSnippet;
  SearchInfo({
    this.textSnippet,
  });

  SearchInfo copyWith({
    String? textSnippet,
  }) =>
      SearchInfo(
        textSnippet: textSnippet ?? this.textSnippet,
      );

  Map<String, dynamic> toMap() => {
        'textSnippet': textSnippet,
      };

  factory SearchInfo.fromMap(Map<String, dynamic> map) {
    return SearchInfo(
      textSnippet: map['textSnippet'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SearchInfo.fromJson(String source) => SearchInfo.fromMap(json.decode(source));

  @override
  String toString() => 'SearchInfo(textSnippet: $textSnippet)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is SearchInfo && other.textSnippet == textSnippet;
  }

  @override
  int get hashCode => textSnippet.hashCode;
}
