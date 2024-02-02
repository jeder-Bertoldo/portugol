programa{
  
  funcao inicio(){
    inteiro x, valor = 1, divisores = 0

    escreva("Digite um valor: ")
    leia(x)

    se(x > 0){
      enquanto(valor <= x){
        se(x % valor == 0){
          divisores++
        }
        valor++
      }

      se(divisores == 2){
        escreva("O número ", x, " é primo!\n")
      }
      senao{
        escreva("O número ", x, " não é primo!\n")
      }
    }
    senao{
      escreva("Valor negativo ou igual a zero!\n")
    }
  }
}