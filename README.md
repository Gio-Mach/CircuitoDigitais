# 🖥️ ULA 8-Bits em Verilog

Projeto de implementação de uma **Unidade Lógica e Aritmética (ULA)** de 8 bits utilizando a linguagem de descrição de hardware **Verilog**.

Este trabalho foi desenvolvido como requisito avaliativo da **Pesquisa Curricularizada de Graduação (PCG)** do curso de Ciência da Computação da **Universidade Católica de Santos (UniSantos)**.

Video de Explicação https://youtu.be/j17xqmxIDqQ?si=14Xki5RkvqwsjFS2

## 👥 Autores

* **Eduardo de Melo Flam**
* **Giovana de Oliveira Machado**
* **Heloísa Tavares Nunes**

## 🎯 Objetivo

Projetar uma arquitetura modular capaz de realizar operações fundamentais de processadores, validando conceitos de circuitos digitais, síntese RTL e simulação de *testbench*. O projeto foca na implementação de blocos básicos (somadores, subtratores, comparadores) gerenciados por um barramento comum via *buffers tristate*.

## ⚙️ Funcionalidades e Opcodes

A ULA opera com palavras de 8 bits e um seletor de operação (*opcode*) de 3 bits, suportando as seguintes instruções:

| Opcode | Operação | Descrição |
| :---: | :--- | :--- |
| `000` | **Adição** | Soma aritmética (A + B) |
| `001` | **Subtração** | Subtração aritmética (A - B) |
| `010` | **Inverso A** | Negação bit a bit (~A) |
| `011` | **Inverso B** | Negação bit a bit (~B) |
| `100` | **Igual** | Retorna 1 se A == B |
| `101` | **Diferente** | Retorna 1 se A != B |
| `110` | **Maior** | Retorna o valor de A se A > B |
| `111` | **Menor** | Retorna o valor de B se B < A |

## 🛠️ Tecnologias Utilizadas

* **Linguagem:** Verilog HDL
* **Simulação:** ModelSim / EDA Playground
* **Documentação:** LaTeX (IEEE Standard)

## 📂 Estrutura do Repositório

* `/src`: Códigos fonte em Verilog (`.v`)
    * `ula.v`: Módulo principal
    * `somador8.v`, `subtrator8.v`: Módulos aritméticos
    * `decoder.v`: Controle de fluxo
* `/testbench`: Arquivos de teste e simulação
* `/docs`: Documentação do projeto (Artigo em PDF e imagens)

---
*Universidade Católica de Santos - 2025*
