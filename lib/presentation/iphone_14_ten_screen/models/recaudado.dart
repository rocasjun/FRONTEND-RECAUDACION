///PAGOS RECAUDADOS
///Total Gasto Laboral
///planilla (porteria, etc)
///Administracion contabilidad
///
///Total Gasto Diversos
///total de consumo
///total ded gastos de mantenimiento
///total de gastos diversos
///
///PAGOS POR RECAUDAR
///Total Gasto Laboral
///planilla (porteria, etc)
///Administracion contabilidad
///
///Total Gasto Diversos
///total de consumo
///total ded gastos de mantenimiento
///total de gastos diversos

class Recaudado{
  int id_pago;
  double total_gasto_laboral;
  double planilla;
  double administracion;

  double total_gastos_diversos;
  double t_consumo;
  double t_mantenimiento;
  double t_otros;
  
  Recaudado({
    required this.id_pago, 
    required this.total_gasto_laboral,
    required this.planilla,
    required this.administracion,
    required this.total_gastos_diversos,
    required this.t_consumo,
    required this.t_mantenimiento,
    required this.t_otros
    });
  
  factory Recaudado.fromJson(Map json){
    return Recaudado(
      id_pago: json["id_pago"], 
      total_gasto_laboral: json["total_gasto_laboral"], 
      planilla: json["planilla"], 
      administracion: json["administracion"], 
      total_gastos_diversos: json["total_gastos_diversos"], 
      t_consumo: json["t_consumo"], 
      t_mantenimiento: json["t_mantenimiento"], 
      t_otros: json["t_otros"]);
  }
}