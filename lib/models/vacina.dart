class Vacina {
  String? nome;
  String? dose;
  String? meses;

  Vacina({
    this.nome,
    this.dose,
    this.meses,
  });

  Vacina.fromJson(Map json)
      : nome = json['nome'],
        dose = json['dose'],
        meses = json['meses'];
}
