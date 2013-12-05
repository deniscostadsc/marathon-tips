===================================
Dicas para Maratonas de Programação
===================================

Sobre este documento
====================
Este documento foi iniciado por Denis Costa.

Este documento foi utilizado `reStructuredText`_ e está sob licença `Creative Commons`_.

Data de última compilação:

Dicas Gerais
============

*   Sempre leia o problema todo e com atenção. Apesar de grande parte do texto
    do problema não ajudar na resolução de problema em si, as vezes informações
    importantes estão perdidas no meio do enunciado

*   Use a linguagem que você e seu time mais domina. Conhecer a biblioteca
    padrão da linguagem escolhida é imprescindível para se sair bem nas
    maratonas de programação.

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
está na biblioteca iostream. ::

    #include <iostream>

    using namespace std;

    int main(){
        string s;

        getline(cin, s);

        return 0;
    }

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
