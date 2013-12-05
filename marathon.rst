===================================
Dicas para Maratonas de Programação
===================================

Sobre este documento
====================
Este documento foi iniciado por Denis Costa.

Este documento foi utilizado `reStructuredText`_ e está sob licença
`Creative Commons`_.

Data de última compilação:

O que este documento é
----------------------

*   Guia introdutório para quem deseja comecar a participar de maratonas de
    programação.


O que este documento não é
--------------------------

*   Guia introdutório à programação.
*   Guia referência para C, C++ ou Java.

Dicas Gerais
============

*   Sempre leia o problema todo e com atenção. Apesar de grande parte do texto
    do problema não ajudar na resolução do problema em si, as vezes informações
    importantes estão perdidas no meio do enunciado

*   Use a linguagem que você e seu time mais domina. Conhecer a biblioteca
    padrão da linguagem escolhida é imprescindível para se sair bem nas
    maratonas de programação.

*   Treine! Como a maioria das tarefasque os seres humanos desenvolvem,
    programar exige treino. Treine sozinho e discuta sua solução com amigos
    que também resolveram o mesmo problema para que ambos aprendam.

Variáveis
=========

Nas maratonas é muito importante saber os tipos que a linguagem suporta pois,
se mal utilizado, pode acontecer de uma variável estourar o limite.

Em C++
------

Os típos numéricos mais importante de C++ são:

+-----------+----------+----------------------------------------------------------+----------------------------------+
| **tipo**  | **bits** | **range signed**                                         | **range unsigned**               |
+-----------+----------+----------------------------------------------------------+----------------------------------+
| int       | 16       | -32768 até 32767                                         | 0 até 65535                      |
+-----------+----------+----------------------------------------------------------+----------------------------------+
| long      | 32       | -2,147,483,648 até 2,147,483,647                         | 0 até 4,294,967,295              |
+-----------+----------+----------------------------------------------------------+----------------------------------+
| long long | 64       | -9,223,372,036,854,775,808 até 9,223,372,036,854,775,807 | 0 até 18,446,744,073,309,551,615 |
+-----------+----------+----------------------------------------------------------+----------------------------------+

Em Java
-------

Entrada e Saída
===============

Entrada
-------

Em C++
~~~~~~

Em C++ é possivel fazer a leitura da entrada padrão de várias formas. Para
fazer a leitura de uma quantidade conhecida de elementos a melhor forma
talevez seja com **cin**. Para usar o **cin** é preciso incluir a biblioteca
**iostream**. ::

    #include <iostream>

    using namespace std;

    int main(){
        int n;
        string s;

        cin >> n;
        cin >> s;

        return 0;
    }

Mas o **cin** le valores separados por espaço. Se for necessário ler a linhas
inteira e armazená-la em uma string é preciso usar o **getline**, que também
está na biblioteca **iostream**. ::

    #include <iostream>

    using namespace std;

    int main(){
        string s;

        getline(cin, s);

        return 0;
    }

Há proglemas que precisam que você varra caractere por caractere. Para esse
tipo de tarefa o **getchar** pode ser útil. O **getchar** está na biblioteca
**cstdio**. ::

    #include <cstdio>

    int main(){
        char c;

        c = getchar();

        return 0;
    }

Em algumas ocasiões o competidor pode preferir usar o **scanf** para
ler dados da entrada padrão. O **scanf** é uma herança da linguagem C
e para usá-lo é preciso incluir a biblioteca **cstdio**. ::

    #include <cstdio>

    int main(){
        int n;

        scanf("%d", &n);

        return 0;
    }

Em Java
~~~~~~~

Saída
-----

Em C++
~~~~~~

Compilação e execução dos programas
===================================

Apesar das IDEs (Integrated Development Environment), como Eclipse, para Java,
e Code Blocks, para C/C++, podem ajudar muitos os programadores no dia-a-dia.
Mas nesse capítulo a compilação dos código será explicada a partir de um
console, cmd no Windows e Bash no Linux. As maratonas ocorrem em lugares que
o ambiente de desenvolvimento é desconhecido para você. A única coisa que
sempre haverá é um console.

Em C++
------
Os software de apoio às maratonas compilam os programas C++ da seguinte forma: ::

    g++ -lm programa.cpp

A opção `-lm` adiciona as bibliotecas de matemática.

A compilação dessa forma gera um arquivo chamado ``a.exe``, no Windows, ou
``a.out``, no Linux. Se você quiser dar um nome para o arquivo executável
criado pelo compilador, digite: ::

    g++ -lm -o programa programa.cpp

A opção -o vem antes do nome do arquivo executavel.

Para executar o programa que acabou de ser compilado, se você estiver no
Linux, digite: ::

    ./programa < in.txt

E no Windows: ::

    programa < in.txt

Essa linha executa o programa e redireciona o conteúdo do arquivo de texto
`in.txt` para a entrada padrão do programa. A entrada padrão, por default,
recebe dados que são digitados através do teclado. Ou seja, você tem a opção
de executar o programa o não redirecionar o conteúdo de nenhum arquivo e
digitar todo o conteúdo. Apesar dessa opção ser válida, eu aconselho fortemente
que você sempre coloque a entrada em um arquivo. Pois assim, só precisará
digitar uma vez a entrada.

    **Dica**: Como os programa em maratonas tem nomes, usa o padrão de colocar
    o mesmo nome do problema no arquivo de entrada. Exemplo: `arroz.cpp` e
    `arroz.txt`.

Em Java
-------

A compilação e execução em Java são iguais para Windows e Linus. Para compilar
os programas em Java digite: ::

    javac programa.java

Isso vai criar um arquivo `programa.class`. Para executar digite: ::

    java programa < in.txt

Algoritmos e funções mais comuns
================================

Números Primos
--------------

Uma função muito comum em maratonas é uma função para verificar se um
número é primo. Alguns algoritmos como `Crivo de Eratóstenes`_ e o `Crivo
de Atkins`_, são algoritmos extremamente eficientes. Mas grande maioria
dos casos o código, em C++, a baixo responde muito rápido. ::

    bool is_prime(int n){
        if (n == 2) return true;
        if (n < 2 || n % 2 == 0) return false;
        for (int i = 3; i <= sqrt(n); i += 2){
            if (n % i == 0) return false;
        }
        return true;
    }

.. _Creative Commons: http://creativecommons.org/licenses/by/4.0/
.. _Crivo de Atkins: https://en.wikipedia.org/wiki/Sieve_of_Atkin
.. _Crivo de Eratóstenes: https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
.. _reStructuredText: http://docutils.sourceforge.net/rst.html
