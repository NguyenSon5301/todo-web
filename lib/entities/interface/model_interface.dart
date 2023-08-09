import 'deletable.dart';
import 'identifier.dart';
import 'update_create_model.dart';

abstract class ModelInterface implements Identifier, Deletable, UpdateCreateInterface {}
