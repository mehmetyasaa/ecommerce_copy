import 'package:coper/constants/image_constants.dart';
import 'package:vexana/vexana.dart';
import '../init/network/project_network_manager.dart';

mixin BaseState {
  INetworkManager get networkManager =>
      ProjectNetworkManager.instance.networkManager;
  ImageConstatns get imageConstants => ImageConstatns.instance;
}
