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

*   Use a linguagem que você e seu time mais domina.

Entrada e Saída
===============

Variáveis
=========

Em C++
------

Em Java
-------

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
