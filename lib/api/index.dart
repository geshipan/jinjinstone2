import 'package:flutter_application_1/api/model.dart';

import 'api.dart';

class UserApi {
  final Api _api;
  UserApi(Api api) : _api = api;

  final String _userPath = '/user';
  final String _signUpPath = '/user/signUp';
  final String _loginPath = '/user/login';
  final String _logoutPath = '/user/logout';

  Future<GetUserModel> getMyInfo() async {
    return GetUserModel.fromJson(await api.get(_userPath));
  }

  Future<void> updateMyInfo() async {
    return await api.put(_userPath, {});
  }

  Future<void> signUp(String email) {
    return _api.post(_signUpPath, {'email': email});
  }

  Future<String> siginIn(String email) async {
    return await _api.post(_loginPath, {'email': email});
  }

  Future<void> signOut() {
    return _api.post(_logoutPath, {});
  }

  Future<GetUserModel> getOtherUser(String userId) async {
    return GetUserModel.fromJson(await _api.get('$_userPath/$userId'));
  }
}

class PostApi {
  final Api _api;
  PostApi(Api api) : _api = api;

  final String _postPath = '/post';

  Future<List<PostModel>> getPostList() async {
    return await api.get(_postPath) as List<PostModel>;
  }

  Future<void> createPost(
      {required String title,
      required String content,
      required List<String> files}) async {
    return await api.post(_postPath, {});
  }

  Future<void> viewPost(String postId) async {
    return await api.post('post/$postId/view', {});
  }

  Future<void> likePost(String postId) async {
    return await api.post('post/$postId/like', {});
  }

  Future<void> getPost(String postId) async {
    return await api.get('post/$postId');
  }
}

var userApi = UserApi(api);

void hello() {
  // api.get('/hello');
}
