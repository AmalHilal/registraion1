import 'package:flutter/src/widgets/framework.dart';
import 'package:provider/provider.dart';
import 'package:untitled16/features/auth/data/user_repository.dart';
import 'package:untitled16/features/auth/domain/model/user.dart';

import '../presentation/controller/provider.dart';

class HttpUser implements UserRepository{

  @override
  Future<void> createUser({required User user,required BuildContext context}) async {
     await Provider.of<Auth>(context,listen: false).regester("amal@gmail.com","999");
  }


  @override
  Future<User> getUser({required String id}) {
    // TODO: implement getUser
    throw UnimplementedError();
  }




}