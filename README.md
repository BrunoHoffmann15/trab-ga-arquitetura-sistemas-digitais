# Trabalho GA - Arquitetura de Sistemas Digitais

**Objetivo:** Implementar o código de descrição do hardware (HDL) em Verilog usando a ferramenta EDA Playground
que gere uma ULA de 8 bits que realize, de forma modularizada, no mínimo, as operações de soma,
subtração, E, OU e NEGAÇÃO lógica. Adotar a abordagem estrutural. Implementar o testbench para validação de cenários, simulando o processamento de pelo menos 10
cenários distintos e apresentando as saídas de log e o gráfico de waveform para diferentes valores de
entrada

## Integrantes
- Bel Cogo
- Bruno Hoffmann
- João Vítor Accorsi

## Funcionalidades ULA

[ X ] Módulo AND

[ X ] Módulo OR

[ X ] Módulo NEGAÇÃO

[ X ] Módulo ADIÇÃO

[ X ] Módulo SUBTRAÇÃO

[ X ] Módulo MUX

## Estrutura

- `ula.sv`: conterá todo desenvolvimento dos módulos necessários para composição da ULA, inclusive o módulo central.

- `tests/*`: conterá todos os arquivos referentes ao desenvolvimento dos test cases dos diferentes módulos. Além disso, haverá o `ula_8_bits_testbench.sv` que foca nos testes da ULA em geral.
