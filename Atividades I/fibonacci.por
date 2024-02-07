programa {
  funcao inicio() {
    inteiro a = 0, b = 1, fib, contador = 2, termo

faca{
    escreva("Digite um numero para calcular: ")
    leia(termo)
}enquanto(termo < 1)

se(termo == 1){
    escreva("0\n")
}

senao{ 
  se(termo == 2){
  escreva("1\n")
}
senao{
  enquanto(contador < termo){
  fib = a + b
  a = b
  b = fib 
  contador++
  escreva(fib, ",")
           }
           escreva("\no ", termo, "° termo é: ", fib ) 
        }   
      }
    }
  }
