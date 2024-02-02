programa{

  inclua biblioteca Calendario --> Ca

  /*
   *   Código escrito por Wagner Gaspar
   *   Maior de 2021
   *   
   *   Função que verifica se um ano é bissexto
   *   RETORNO
   *   1 - é bissexto
   *   0 - não é bissexto
   *   
   *   -> Anos bissextos são múltiplos de 4,
   *   -> não múltiplos de 100 (1900 não é bissexto)
   *   -> e múltiplos de 400 (2000 é bissexto).
   *   
   *   EXEMPLOS DE ANOS BISSEXTOS:
   *   1504 1508 1512 1516 1520 1524 1528 1532 1536 1540 1544 1548 1552 1556 1560 1564
   *   1568 1572 1576 1580 1584 1588 1592 1596 1600 1604 1608 1612 1616 1620 1624 1628
   *   1632 1636 1640 1644 1648 1652 1656 1660 1664 1668 1672 1676 1680 1684 1688 1692
   *   1696 1704 1708 1712 1716 1720 1724 1728 1732 1736 1740 1744 1748 1752 1756 1760
   *   1764 1768 1772 1776 1780 1784 1788 1792 1796 1804 1808 1812 1816 1820 1824 1828
   *   1832 1836 1840 1844 1848 1852 1856 1860 1864 1868 1872 1876 1880 1884 1888 1892
   *   1896 1904 1908 1912 1916 1920 1924 1928 1932 1936 1940 1944 1948 1952 1956 1960
   *   1964 1968 1972 1976 1980 1984 1988 1992 1996 2000 2004 2008 2012 2016 2020 2024
  */
  funcao inteiro bissexto(inteiro ano){
    se(ano % 4 == 0 e ano % 100 != 0 ou ano % 400 == 0)
      retorne 1
    senao
      retorne 0
  }

  /*
   *   Função que diz se uma determinada data é válida ou não
   *   RETORNO
   *   1 - é válida
   *   0 - não é válida
  */
  funcao inteiro validarData(inteiro d, inteiro m, inteiro a){
    se(d < 1 ou d > 31 ou m < 1 ou m > 12)
      retorne 0
    se(d == 31 e (m == 4 ou m == 6 ou m == 9 ou m == 11))
      retorne 0
    se(m == 2 e d > 29)
      retorne 0
    se(m == 2 e d == 29 e bissexto(a) == 0)
      retorne 0
    retorne 1
  }

  /*
   *   Função que retorna a quantidade de dias de um mês
   *   Recebe mês e ano
   *   31 -> 1, 3, 5, 7, 8, 10, 12
   *   30 -> 4, 6, 9, 11
   *   28 ou 29 -> 2
  */
  funcao inteiro diasNoMes(inteiro m, inteiro a){
    se(m == 1 ou m == 3 ou m == 5 ou m == 7 ou m == 8 ou m == 10 ou m == 12)
      retorne 31
    senao{
      se(m == 4 ou m == 6 ou m == 9 ou m == 11)
        retorne 30
      senao{
        se(bissexto(a) == 1)
          retorne 29
        senao
          retorne 28
      }
    }
  }

  /* 
   *  Procedimento para calcular idade em anos, meses e dias
   *  Recebe como parâmetro a data de nascimento
   *  A data atual é obtida do sistema operacional
   */
  funcao calcularIdade(inteiro dn, inteiro mn, inteiro an){
    inteiro da, ma, aa, qtdDia = 0, qtdMes = 0, qtdAno = 0

    da = Ca.dia_mes_atual()
    ma = Ca.mes_atual()
    aa = Ca.ano_atual()

    enquanto(mn < ma - 1 ou an < aa){
      mn++
      qtdMes++
      se(qtdMes == 12){
        qtdMes = 0
        qtdAno++
      }

      se(mn == 12){
        an++
        mn = 0
      }
    }
    // ajustes para o último mes
    se(dn == da){
      qtdMes++
      qtdDia = 0
    }
    senao se(dn < da){
      qtdMes++
      qtdDia = da - dn
    }
    senao{
      qtdDia = diasNoMes(ma - 1, aa) + da - dn
    }

    escreva(qtdAno, " anos, ", qtdMes, " meses e ", qtdDia, " dias.\n")
  }
  
  funcao inicio(){
    inteiro d, m, a

    escreva("Digite sua data de nascimento no formato dd mm aaaa: ")
    leia(d, m, a)

    se(validarData(d, m, a) == 1){
      calcularIdade(d, m, a)
    }
    senao
      escreva("Dada inválida!\n")
  }
}