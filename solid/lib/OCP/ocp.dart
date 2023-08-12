/*
OCP diz que devemos ser capazes de estender um comportamento de classe, sem modificá-la


 */

class Payment {
  void payTicket() => print("Buying by ticket");
  void payTax() => print("Buying Tax");
}

/*

Problema: E se tiver que adicionar um novo tipo de pagamento? Desta forma se está sujeito
a modificar o nosso código já em produção.
Esta alteração poderá gerar um novo binário para lugares onde não necessita deste novo meio
de pagamento

SOLUÇÃO: Procurar estender a o funcionamento da classe Payment porem sem modificar a classe existente

*/

abstract class Payment2 {
  int value = 10;
  void pay();
}

class PaymentTicket extends Payment2 {
  @override
  void pay() {
    print("Payment ticket $value");
  }
}

class PaymentTax implements Payment2 {
  @override
  void pay() {
    print("Payment Tax $value");
  }

  @override
  int value = 20;
}
