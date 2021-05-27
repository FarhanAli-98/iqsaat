// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_box.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class UserBoxAdapter extends TypeAdapter<UserBox> {
  @override
  final int typeId = 1;

  @override
  UserBox read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return UserBox(
      email: fields[0] as String,
      firstName: fields[1] as String,
      lastName: fields[2] as String,
      photo: fields[3] as String,
      accessToken: fields[4] as String,
      refreshToken: fields[5] as String,
      userId: fields[6] as String,
      shopId: fields[7] as String,
      role: fields[8] as String,
      cnic: fields[9] as String,
      phone: fields[10] as String,
    );
  }

  @override
  void write(BinaryWriter writer, UserBox obj) {
    writer
      ..writeByte(11)
      ..writeByte(0)
      ..write(obj.email)
      ..writeByte(1)
      ..write(obj.firstName)
      ..writeByte(2)
      ..write(obj.lastName)
      ..writeByte(3)
      ..write(obj.photo)
      ..writeByte(4)
      ..write(obj.accessToken)
      ..writeByte(5)
      ..write(obj.refreshToken)
      ..writeByte(6)
      ..write(obj.userId)
      ..writeByte(7)
      ..write(obj.shopId)
      ..writeByte(8)
      ..write(obj.role)
      ..writeByte(9)
      ..write(obj.cnic)
      ..writeByte(10)
      ..write(obj.phone);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is UserBoxAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
