// To parse this JSON data, do
//
//     final newsModel = newsModelFromJson(jsonString);

import 'dart:convert';

NewsModel newsModelFromJson(String str) => NewsModel.fromJson(json.decode(str));

String newsModelToJson(NewsModel data) => json.encode(data.toJson());

class NewsModel {
    final Source? source;
    final String? author;
    final String? title;
    final dynamic description;
    final String? url;
    final dynamic urlToImage;
    final DateTime? publishedAt;
    final dynamic content;

    NewsModel({
        this.source,
        this.author,
        this.title,
        this.description,
        this.url,
        this.urlToImage,
        this.publishedAt,
        this.content,
    });

    NewsModel copyWith({
        Source? source,
        String? author,
        String? title,
        dynamic description,
        String? url,
        dynamic urlToImage,
        DateTime? publishedAt,
        dynamic content,
    }) => 
        NewsModel(
            source: source ?? this.source,
            author: author ?? this.author,
            title: title ?? this.title,
            description: description ?? this.description,
            url: url ?? this.url,
            urlToImage: urlToImage ?? this.urlToImage,
            publishedAt: publishedAt ?? this.publishedAt,
            content: content ?? this.content,
        );

    factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        source: json["source"] == null ? null : Source.fromJson(json["source"]),
        author: json["author"],
        title: json["title"],
        description: json["description"],
        url: json["url"],
        urlToImage: json["urlToImage"],
        publishedAt: json["publishedAt"] == null ? null : DateTime.parse(json["publishedAt"]),
        content: json["content"],
    );

    Map<String, dynamic> toJson() => {
        "source": source?.toJson(),
        "author": author,
        "title": title,
        "description": description,
        "url": url,
        "urlToImage": urlToImage,
        "publishedAt": publishedAt?.toIso8601String(),
        "content": content,
    };
}

class Source {
    final String? id;
    final String? name;

    Source({
        this.id,
        this.name,
    });

    Source copyWith({
        String? id,
        String? name,
    }) => 
        Source(
            id: id ?? this.id,
            name: name ?? this.name,
        );

    factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: json["id"],
        name: json["name"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
    };
}
