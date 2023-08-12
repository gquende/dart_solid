/*

Prinncípio de Responsabilidade Única SRP

Uma classe deve ter apenas um motivo para mudar
Sua responsabilidade é sempre em cima de um e apenas um ator

*/

class ContaCorrente {
  validarContaExiste() {}

  salvarModificacoes() {
    print("salvando no database...");
  }
}

/*
Problema: Não faz sentido essa classe salvar na Base de dados, porque as informações de conexão
ao Database são de responsabilidade dela.


Solução: Separar a responsabilidade para sua regra de negocio, um objecto não pode fazer mais
do que é domínio dele fazer.

*/

class ContaCorrenteRepository {
  void save() => print("Salvando dados...");
}

class ContaCorrente2 {
  var _contaCorrenteRepository = ContaCorrenteRepository();

  validarContaExiste() {}

  salvarModificacoes() {
    _contaCorrenteRepository.save();
  }
}
