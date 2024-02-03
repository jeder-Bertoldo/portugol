programa {
  funcao inicio() {
    
inteiro eleitores, votos_brancos, votos_nulos, votos_validos, porcentagem, x , i

escreva( "digite o numero total de eleitores: ")
leia(eleitores)

escreva( "digite a quantidade de votos brancos: ")
leia(votos_brancos)

escreva( "digite a quantidade de votos nulos: ")
leia(votos_nulos)

escreva( "digite a quantidade de votos validos: ")
leia(votos_validos)

porcentagem = (votos_brancos / eleitores) * 100
x = (votos_nulos / eleitores) * 100
i = (votos_validos / eleitores) * 100

escreva("\n A porcentagem de votos brancos é de: %",porcentagem, "\n")
escreva(" A porcentagem de votos nulos é de: %",x, "\n")
escreva(" A porcentagem de votos validos é de: %",i, "\n")

escreva("\n!!!!OBRIGADO POR USAR O NOSSO PROGRAMA!!!\n")

  }
}
