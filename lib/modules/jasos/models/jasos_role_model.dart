class JasosRoleModel {
  JasosRoleModel({required this.imagePath,required this.roleName,this.playerMode = JasosPlayerMode.sharvand});
  final String roleName,imagePath;
  final JasosPlayerMode playerMode;
}

enum JasosPlayerMode{jasos,sharvand}