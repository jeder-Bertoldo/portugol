programa
{
    funcao inicio()
    {
        cadeia cor
        real valor = 0.0
    
        
        escreva("Digite a cor desejada (Vermelho, Azul, Verde, Amarelo, Preto): ")
        leia(cor)
        
        se (cor == "Vermelho" ou cor == "vermelho")
        {
            valor = 10.0
        }
        senao se (cor == "Azul" ou cor == "azul")
        {
            valor = 20.0
        }
        senao se (cor == "Verde" ou cor == "verde")
        {
            valor = 30.0
        }
        senao se (cor == "Amarelo" ou cor == "amarelo")
        {
            valor = 40.0
        }
        senao se (cor == "Preto" ou cor == "preto")
        {
            valor = 50.0
        }
        senao
        {
            escreva("Cor n�o reconhecida. Por favor, digite uma cor v�lida.\n")
            valor = -1 // Indica uma entrada inv�lida
        }

        
        se (valor != -1)
        {
            escreva("O valor associado � cor ", cor, " � R$ ", valor, "\n")
        }
    }
}
