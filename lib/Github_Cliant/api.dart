import 'package:dio/dio.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:retrofit/retrofit.dart';

part 'api.g.dart';

final dio = Dio(BaseOptions(baseUrl: 'https://api.github.com'));

void configureDio() {
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (RequestOptions options, RequestInterceptorHandler handler) {
      options.headers['Accept'] = 'application/vnd.github.v3+json';
      return handler.next(options);
    },
  ));
}

@RestApi()
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET("/users/{user}/repos")
  Future<User> getUser(@Path("user") String userName);
}

Future<User> fetchData(String userName) async {
  final client = RestClient(dio);
  print('request to Github');
  return await client.getUser(userName);
}

// @JsonSerializable()
// class User {
//   final String login;
//   final String name;
//   final String avatarUrl;
//   final int followers;
//   final int following;
//
//   User({
//     required this.login,
//     required this.name,
//     required this.avatarUrl,
//     required this.followers,
//     required this.following,
//   });
//
//   factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
//
//   Map<String, dynamic> toJson() => _$UserToJson(this);
// }

@JsonSerializable()
class User {
  User({
    required this.avatarUrl,
    required this.bio,
    required this.blog,
    required this.businessPlus,
    required this.collaborators,
    required this.company,
    required this.createdAt,
    required this.diskUsage,
    required this.email,
    required this.eventsUrl,
    required this.followers,
    required this.followersUrl,
    required this.following,
    required this.followingUrl,
    required this.gistsUrl,
    required this.gravatarId,
    required this.hireable,
    required this.htmlUrl,
    required this.id,
    required this.ldapDn,
    required this.location,
    required this.login,
    required this.name,
    required this.nodeId,
    required this.organizationsUrl,
    required this.ownedPrivateRepos,
    required this.plan,
    required this.privateGists,
    required this.publicGists,
    required this.publicRepos,
    required this.receivedEventsUrl,
    required this.reposUrl,
    required this.siteAdmin,
    required this.starredUrl,
    required this.subscriptionsUrl,
    required this.suspendedAt,
    required this.totalPrivateRepos,
    required this.twitterUsername,
    required this.twoFactorAuthentication,
    required this.type,
    required this.updatedAt,
    required this.url,
  });

  final String avatarUrl;
  final String bio;
  final String blog;
  final bool? businessPlus;
  final int? collaborators;
  final String company;
  final DateTime createdAt;
  final int? diskUsage;
  final String email;
  final String eventsUrl;
  final int followers;
  final String followersUrl;
  final int following;
  final String followingUrl;
  final String gistsUrl;
  final String gravatarId;
  final bool hireable;
  final String htmlUrl;
  final int id;
  final String? ldapDn;
  final String location;
  final String login;
  final String name;
  final String nodeId;
  final String organizationsUrl;
  final int? ownedPrivateRepos;
  final int? plan;
  final int? privateGists;
  final int publicGists;
  final int publicRepos;
  final String receivedEventsUrl;
  final String reposUrl;
  final bool siteAdmin;
  final String starredUrl;
  final String subscriptionsUrl;
  final DateTime? suspendedAt;
  final int? totalPrivateRepos;
  final String? twitterUsername;
  final bool? twoFactorAuthentication;
  final String type;
  final DateTime updatedAt;
  final String url;

  User copyWith({
    required String avatarUrl,
    required String bio,
    required String blog,
    required bool businessPlus,
    required int collaborators,
    required String company,
    required DateTime createdAt,
    required int diskUsage,
    required String email,
    required String eventsUrl,
    required int followers,
    required String followersUrl,
    required int following,
    required String followingUrl,
    required String gistsUrl,
    required String gravatarId,
    required bool hireable,
    required String htmlUrl,
    required int id,
    required String ldapDn,
    required String location,
    required String login,
    required String name,
    required String nodeId,
    required String organizationsUrl,
    required int ownedPrivateRepos,
    required int plan,
    required int privateGists,
    required int publicGists,
    required int publicRepos,
    required String receivedEventsUrl,
    required String reposUrl,
    required bool siteAdmin,
    required String starredUrl,
    required String subscriptionsUrl,
    required DateTime suspendedAt,
    required int totalPrivateRepos,
    required String twitterUsername,
    required bool twoFactorAuthentication,
    required String type,
    required DateTime updatedAt,
    required String url,
  }) =>
      User(
        avatarUrl: avatarUrl ?? this.avatarUrl,
        bio: bio ?? this.bio,
        blog: blog ?? this.blog,
        businessPlus: businessPlus ?? this.businessPlus,
        collaborators: collaborators ?? this.collaborators,
        company: company ?? this.company,
        createdAt: createdAt ?? this.createdAt,
        diskUsage: diskUsage ?? this.diskUsage,
        email: email ?? this.email,
        eventsUrl: eventsUrl ?? this.eventsUrl,
        followers: followers ?? this.followers,
        followersUrl: followersUrl ?? this.followersUrl,
        following: following ?? this.following,
        followingUrl: followingUrl ?? this.followingUrl,
        gistsUrl: gistsUrl ?? this.gistsUrl,
        gravatarId: gravatarId ?? this.gravatarId,
        hireable: hireable ?? this.hireable,
        htmlUrl: htmlUrl ?? this.htmlUrl,
        id: id ?? this.id,
        ldapDn: ldapDn ?? this.ldapDn,
        location: location ?? this.location,
        login: login ?? this.login,
        name: name ?? this.name,
        nodeId: nodeId ?? this.nodeId,
        organizationsUrl: organizationsUrl ?? this.organizationsUrl,
        ownedPrivateRepos: ownedPrivateRepos ?? this.ownedPrivateRepos,
        plan: plan ?? this.plan,
        privateGists: privateGists ?? this.privateGists,
        publicGists: publicGists ?? this.publicGists,
        publicRepos: publicRepos ?? this.publicRepos,
        receivedEventsUrl: receivedEventsUrl ?? this.receivedEventsUrl,
        reposUrl: reposUrl ?? this.reposUrl,
        siteAdmin: siteAdmin ?? this.siteAdmin,
        starredUrl: starredUrl ?? this.starredUrl,
        subscriptionsUrl: subscriptionsUrl ?? this.subscriptionsUrl,
        suspendedAt: suspendedAt ?? this.suspendedAt,
        totalPrivateRepos: totalPrivateRepos ?? this.totalPrivateRepos,
        twitterUsername: twitterUsername ?? this.twitterUsername,
        twoFactorAuthentication:
            twoFactorAuthentication ?? this.twoFactorAuthentication,
        type: type ?? this.type,
        updatedAt: updatedAt ?? this.updatedAt,
        url: url ?? this.url,
      );

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
