programa {
  funcao inicio() {
    inteiro numero1, numero2, soma = 0


    escreva("\n!!!! USUARIO O SEGUNDO NUMERO VAI DEFINIR A QUANTIDADE DE VEZES QUE O PRIMEIRO NUMERO VAI SE REPETIR !!!!\n\n")

  escreva("Digite o primeiro numero: ")
  leia(numero1)

  escreva("Digite o segundo numero: ")
  leia(numero2)

  para (inteiro i = 0; i < numero2; i++){
    soma = soma + numero1

    escreva(numero1, "+")
  }

  escreva("O resultado da multiplicação e igual a: ", soma, "\n\n")

  escreva("\n!!!THANKS!!!\n")

  }
}
