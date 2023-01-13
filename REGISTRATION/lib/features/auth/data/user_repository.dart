import 'package:flutter/material.dart';
import 'package:untitled16/features/auth/domain/model/user.dart';

abstract class UserRepository{
 // Future<List<User>> getUsers();
  Future<User> getUser({required String id});
  Future<void> createUser({required User user,BuildContext context});
 // Future<void> updateUser({required User user});
 // Future<void> deleteUser({required String id});

}