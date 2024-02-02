programa{

  funcao inicio(){
    inteiro x, fat = 1

    faca{
      escreva("Digite um valor maior que zero:  ")
      leia(x)

      escreva("\n")

    }enquanto(x < 1)

    enquanto(x > 1){
      fat = fat * x
       x--
       escreva("Multiplicando: " , x , " por ", fat,   " \n" )
       
                // equivalente a fazer x = x - 1
    }
      

    escreva("\nO FATORIAL É: ",fat,"\n")


    escreva("\n!!!!!!!!THANKS!!!!!!!!!!!\n")
  }
}