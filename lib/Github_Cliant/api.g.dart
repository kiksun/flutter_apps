// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      avatarUrl: json['avatarUrl'] as String,
      bio: json['bio'] as String,
      blog: json['blog'] as String,
      businessPlus: json['businessPlus'] as bool?,
      collaborators: json['collaborators'] as int?,
      company: json['company'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      diskUsage: json['diskUsage'] as int?,
      email: json['email'] as String,
      eventsUrl: json['eventsUrl'] as String,
      followers: json['followers'] as int,
      followersUrl: json['followersUrl'] as String,
      following: json['following'] as int,
      followingUrl: json['followingUrl'] as String,
      gistsUrl: json['gistsUrl'] as String,
      gravatarId: json['gravatarId'] as String,
      hireable: json['hireable'] as bool,
      htmlUrl: json['htmlUrl'] as String,
      id: json['id'] as int,
      ldapDn: json['ldapDn'] as String?,
      location: json['location'] as String,
      login: json['login'] as String,
      name: json['name'] as String,
      nodeId: json['nodeId'] as String,
      organizationsUrl: json['organizationsUrl'] as String,
      ownedPrivateRepos: json['ownedPrivateRepos'] as int?,
      plan: json['plan'] as int?,
      privateGists: json['privateGists'] as int?,
      publicGists: json['publicGists'] as int,
      publicRepos: json['publicRepos'] as int,
      receivedEventsUrl: json['receivedEventsUrl'] as String,
      reposUrl: json['reposUrl'] as String,
      siteAdmin: json['siteAdmin'] as bool,
      starredUrl: json['starredUrl'] as String,
      subscriptionsUrl: json['subscriptionsUrl'] as String,
      suspendedAt: json['suspendedAt'] == null
          ? null
          : DateTime.parse(json['suspendedAt'] as String),
      totalPrivateRepos: json['totalPrivateRepos'] as int?,
      twitterUsername: json['twitterUsername'] as String?,
      twoFactorAuthentication: json['twoFactorAuthentication'] as bool?,
      type: json['type'] as String,
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      url: json['url'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'avatarUrl': instance.avatarUrl,
      'bio': instance.bio,
      'blog': instance.blog,
      'businessPlus': instance.businessPlus,
      'collaborators': instance.collaborators,
      'company': instance.company,
      'createdAt': instance.createdAt.toIso8601String(),
      'diskUsage': instance.diskUsage,
      'email': instance.email,
      'eventsUrl': instance.eventsUrl,
      'followers': instance.followers,
      'followersUrl': instance.followersUrl,
      'following': instance.following,
      'followingUrl': instance.followingUrl,
      'gistsUrl': instance.gistsUrl,
      'gravatarId': instance.gravatarId,
      'hireable': instance.hireable,
      'htmlUrl': instance.htmlUrl,
      'id': instance.id,
      'ldapDn': instance.ldapDn,
      'location': instance.location,
      'login': instance.login,
      'name': instance.name,
      'nodeId': instance.nodeId,
      'organizationsUrl': instance.organizationsUrl,
      'ownedPrivateRepos': instance.ownedPrivateRepos,
      'plan': instance.plan,
      'privateGists': instance.privateGists,
      'publicGists': instance.publicGists,
      'publicRepos': instance.publicRepos,
      'receivedEventsUrl': instance.receivedEventsUrl,
      'reposUrl': instance.reposUrl,
      'siteAdmin': instance.siteAdmin,
      'starredUrl': instance.starredUrl,
      'subscriptionsUrl': instance.subscriptionsUrl,
      'suspendedAt': instance.suspendedAt?.toIso8601String(),
      'totalPrivateRepos': instance.totalPrivateRepos,
      'twitterUsername': instance.twitterUsername,
      'twoFactorAuthentication': instance.twoFactorAuthentication,
      'type': instance.type,
      'updatedAt': instance.updatedAt.toIso8601String(),
      'url': instance.url,
    };

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers

class _RestClient implements RestClient {
  _RestClient(
    this._dio, {
    this.baseUrl,
  });

  final Dio _dio;

  String? baseUrl;

  @override
  Future<User> getUser(String userName) async {
    const _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    final Map<String, dynamic>? _data = null;
    final _result =
        await _dio.fetch<Map<String, dynamic>>(_setStreamType<User>(Options(
      method: 'GET',
      headers: _headers,
      extra: _extra,
    )
            .compose(
              _dio.options,
              '/users/${userName}/repos',
              queryParameters: queryParameters,
              data: _data,
            )
            .copyWith(baseUrl: baseUrl ?? _dio.options.baseUrl)));
    final value = User.fromJson(_result.data!);
    return value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }
}
