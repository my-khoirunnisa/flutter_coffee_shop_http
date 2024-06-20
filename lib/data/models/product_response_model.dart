import 'dart:convert';

class ProductResponseModel {
  final List<Product> data;
  final Meta meta;

  ProductResponseModel({
    required this.data,
    required this.meta,
  });

  factory ProductResponseModel.fromJson(String str) =>
      ProductResponseModel.fromMap(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductResponseModel.fromMap(Map<String, dynamic> json) =>
      ProductResponseModel(
        data: List<Product>.from(json["data"].map((x) => Product.fromMap(x))),
        meta: Meta.fromMap(json["meta"]),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
        "meta": meta.toJson(),
      };
}

class Product {
  final int id;
  final PurpleAttributes attributes;

  Product({
    required this.id,
    required this.attributes,
  });

  factory Product.fromJson(String str) => Product.fromMap(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Product.fromMap(Map<String, dynamic> json) => Product(
        id: json["id"],
        attributes: PurpleAttributes.fromMap(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class PurpleAttributes {
  final String title;
  final String subtitle;
  final List<Description> description;
  final double price;
  final double rating;
  final String reviewers;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime publishedAt;
  final String size;
  final Thumbnail thumbnail;
  final Materials materials;

  PurpleAttributes({
    required this.title,
    required this.subtitle,
    required this.description,
    required this.price,
    required this.rating,
    required this.reviewers,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
    required this.size,
    required this.thumbnail,
    required this.materials,
  });

  factory PurpleAttributes.fromJson(String str) =>
      PurpleAttributes.fromMap(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory PurpleAttributes.fromMap(Map<String, dynamic> json) =>
      PurpleAttributes(
        title: json["title"],
        subtitle: json["subtitle"],
        description: List<Description>.from(
            json["description"].map((x) => Description.fromMap(x))),
        price: json["price"]?.toDouble(),
        rating: json["rating"]?.toDouble(),
        reviewers: json["reviewers"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
        size: json["size"],
        thumbnail: Thumbnail.fromMap(json["thumbnail"]),
        materials: Materials.fromMap(json["materials"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "subtitle": subtitle,
        "description": List<dynamic>.from(description.map((x) => x.toJson())),
        "price": price,
        "rating": rating,
        "reviewers": reviewers,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
        "size": size,
        "thumbnail": thumbnail.toJson(),
        "materials": materials.toJson(),
      };
}

class Description {
  final String type;
  final List<Child> children;

  Description({
    required this.type,
    required this.children,
  });

  factory Description.fromJson(String str) =>
      Description.fromMap(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Description.fromMap(Map<String, dynamic> json) => Description(
        type: json["type"],
        children:
            List<Child>.from(json["children"].map((x) => Child.fromMap(x))),
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "children": List<dynamic>.from(children.map((x) => x.toJson())),
      };
}

class Child {
  final String type;
  final String text;

  Child({
    required this.type,
    required this.text,
  });

  factory Child.fromJson(String str) => Child.fromMap(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Child.fromMap(Map<String, dynamic> json) => Child(
        type: json["type"],
        text: json["text"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "text": text,
      };
}

class Materials {
  final List<MaterialsDatum> data;

  Materials({
    required this.data,
  });

  factory Materials.fromJson(String str) => Materials.fromMap(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Materials.fromMap(Map<String, dynamic> json) => Materials(
        data: List<MaterialsDatum>.from(
            json["data"].map((x) => MaterialsDatum.fromMap(x))),
      );

  Map<String, dynamic> toJson() => {
        "data": List<dynamic>.from(data.map((x) => x.toJson())),
      };
}

class MaterialsDatum {
  final int id;
  final FluffyAttributes attributes;

  MaterialsDatum({
    required this.id,
    required this.attributes,
  });

  factory MaterialsDatum.fromJson(String str) =>
      MaterialsDatum.fromMap(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory MaterialsDatum.fromMap(Map<String, dynamic> json) => MaterialsDatum(
        id: json["id"],
        attributes: FluffyAttributes.fromMap(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class FluffyAttributes {
  final String title;
  final DateTime createdAt;
  final DateTime updatedAt;
  final DateTime publishedAt;

  FluffyAttributes({
    required this.title,
    required this.createdAt,
    required this.updatedAt,
    required this.publishedAt,
  });

  factory FluffyAttributes.fromJson(String str) =>
      FluffyAttributes.fromMap(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FluffyAttributes.fromMap(Map<String, dynamic> json) =>
      FluffyAttributes(
        title: json["title"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
        publishedAt: DateTime.parse(json["publishedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
        "publishedAt": publishedAt.toIso8601String(),
      };
}

class Thumbnail {
  final Data data;

  Thumbnail({
    required this.data,
  });

  factory Thumbnail.fromJson(String str) => Thumbnail.fromMap(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Thumbnail.fromMap(Map<String, dynamic> json) => Thumbnail(
        data: Data.fromMap(json["data"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data.toJson(),
      };
}

class Data {
  final int id;
  final DataAttributes attributes;

  Data({
    required this.id,
    required this.attributes,
  });

  factory Data.fromJson(String str) => Data.fromMap(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Data.fromMap(Map<String, dynamic> json) => Data(
        id: json["id"],
        attributes: DataAttributes.fromMap(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attributes": attributes.toJson(),
      };
}

class DataAttributes {
  final String name;
  final dynamic alternativeText;
  final dynamic caption;
  final int width;
  final int height;
  final Formats formats;
  final String hash;
  final Ext ext;
  final Mime mime;
  final double size;
  final String url;
  final dynamic previewUrl;
  final String provider;
  final dynamic providerMetadata;
  final DateTime createdAt;
  final DateTime updatedAt;

  DataAttributes({
    required this.name,
    required this.alternativeText,
    required this.caption,
    required this.width,
    required this.height,
    required this.formats,
    required this.hash,
    required this.ext,
    required this.mime,
    required this.size,
    required this.url,
    required this.previewUrl,
    required this.provider,
    required this.providerMetadata,
    required this.createdAt,
    required this.updatedAt,
  });

  factory DataAttributes.fromJson(String str) =>
      DataAttributes.fromMap(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory DataAttributes.fromMap(Map<String, dynamic> json) => DataAttributes(
        name: json["name"],
        alternativeText: json["alternativeText"],
        caption: json["caption"],
        width: json["width"],
        height: json["height"],
        formats: Formats.fromMap(json["formats"]),
        hash: json["hash"],
        ext: extValues.map[json["ext"]]!,
        mime: mimeValues.map[json["mime"]]!,
        size: json["size"]?.toDouble(),
        url: json["url"],
        previewUrl: json["previewUrl"],
        provider: json["provider"],
        providerMetadata: json["provider_metadata"],
        createdAt: DateTime.parse(json["createdAt"]),
        updatedAt: DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "alternativeText": alternativeText,
        "caption": caption,
        "width": width,
        "height": height,
        "formats": formats.toJson(),
        "hash": hash,
        "ext": extValues.reverse[ext],
        "mime": mimeValues.reverse[mime],
        "size": size,
        "url": url,
        "previewUrl": previewUrl,
        "provider": provider,
        "provider_metadata": providerMetadata,
        "createdAt": createdAt.toIso8601String(),
        "updatedAt": updatedAt.toIso8601String(),
      };
}

enum Ext { JPG }

final extValues = EnumValues({".jpg": Ext.JPG});

class Formats {
  final Large thumbnail;
  final Large medium;
  final Large small;
  final Large large;

  Formats({
    required this.thumbnail,
    required this.medium,
    required this.small,
    required this.large,
  });

  factory Formats.fromJson(String str) => Formats.fromMap(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Formats.fromMap(Map<String, dynamic> json) => Formats(
        thumbnail: Large.fromMap(json["thumbnail"]),
        medium: Large.fromMap(json["medium"]),
        small: Large.fromMap(json["small"]),
        large: Large.fromMap(json["large"]),
      );

  Map<String, dynamic> toJson() => {
        "thumbnail": thumbnail.toJson(),
        "medium": medium.toJson(),
        "small": small.toJson(),
        "large": large.toJson(),
      };
}

class Large {
  final String name;
  final String hash;
  final Ext ext;
  final Mime mime;
  final dynamic path;
  final int width;
  final int height;
  final double size;
  final int sizeInBytes;
  final String url;

  Large({
    required this.name,
    required this.hash,
    required this.ext,
    required this.mime,
    required this.path,
    required this.width,
    required this.height,
    required this.size,
    required this.sizeInBytes,
    required this.url,
  });

  factory Large.fromJson(String str) => Large.fromMap(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Large.fromMap(Map<String, dynamic> json) => Large(
        name: json["name"],
        hash: json["hash"],
        ext: extValues.map[json["ext"]]!,
        mime: mimeValues.map[json["mime"]]!,
        path: json["path"],
        width: json["width"],
        height: json["height"],
        size: json["size"]?.toDouble(),
        sizeInBytes: json["sizeInBytes"],
        url: json["url"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "hash": hash,
        "ext": extValues.reverse[ext],
        "mime": mimeValues.reverse[mime],
        "path": path,
        "width": width,
        "height": height,
        "size": size,
        "sizeInBytes": sizeInBytes,
        "url": url,
      };
}

enum Mime { IMAGE_JPEG }

final mimeValues = EnumValues({"image/jpeg": Mime.IMAGE_JPEG});

class Meta {
  final Pagination pagination;

  Meta({
    required this.pagination,
  });

  factory Meta.fromJson(String str) => Meta.fromMap(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Meta.fromMap(Map<String, dynamic> json) => Meta(
        pagination: Pagination.fromMap(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "pagination": pagination.toJson(),
      };
}

class Pagination {
  final int page;
  final int pageSize;
  final int pageCount;
  final int total;

  Pagination({
    required this.page,
    required this.pageSize,
    required this.pageCount,
    required this.total,
  });

  factory Pagination.fromJson(String str) =>
      Pagination.fromMap(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Pagination.fromMap(Map<String, dynamic> json) => Pagination(
        page: json["page"],
        pageSize: json["pageSize"],
        pageCount: json["pageCount"],
        total: json["total"],
      );

  Map<String, dynamic> toJson() => {
        "page": page,
        "pageSize": pageSize,
        "pageCount": pageCount,
        "total": total,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
