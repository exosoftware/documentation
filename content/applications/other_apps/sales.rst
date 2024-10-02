:show-content:

======
Vendas
======

.. _otherApps_Hide_SO_Line_Timesheet:

Hide SO Line Timesheet
======================
Apesar de o Odoo fazer um excelente trabalho na escolha de que linha de uma Nota de Encomenda, é utilizada para registo
de horas em diversas apps, com o passar do tempo, começam a existir cada vez mais opções de selecção que podem confundir
o utilizador.

Com o objetivo de simplificar a vida ao utilizador, desenvolvemos esta solução, que lhe permite ocultar qualquer linha
de Nota de Encomenda de artigos do tipo **Serviço** das possibilidades de escolha, quando já não tem uso para a mesma

Também acrescentamos algumas ferramentas de controlo e aconselhamento, para facilitar a sua utilização de registo de
horas

.. important::
    A app apesar de funcionar como uma só, está dividida em 3 módulos independentes, conforme seja o caso de ter as apps
    de **Apoio ao Cliente** ou **Field Service/Serviço de Campo** instaladas, ou não

    A decisão foi tomada porque sempre que utiliza registo de horas está obrigado a utilizar a app **Projetos**.
    No entanto:

    - a app de **Field Service** altera a app de projeto, pelo que para funcionar corretamente é preciso um add-on
    - pode utilizar a app **Projeto** sem utilizar a app de **Apoio ao Cliente**, pelo que essa vertente foi colocada num módulo próprio

    Se optar por:

    - usar a app de **Field Service** terá de instalar 2 módulos
    - usar a app de **Apoio ao Cliente** terá de instalar 2 módulos
    - usar as apps **Apoio ao Cliente** e **Field Service** vai ter de instalar os 3 módulos

.. raw:: html

    <div style="text-align: center; margin: 20px 0;">
        ─── ✦ ───
    </div>

Configuração
------------
Em qualquer artigo onde o **Tipo de Artigo**, seja da **Serviço**, vai ter disponível um novo campo **Ocultar**

Esta opção define qual o comportamento por defeito a aplicar ao produto quando este é usado numa linha de Nota de
Encomenda:

- Ativo, não vai aparecer como opção nos registos de horas
- Inativo, vai aparecer como opção nos registos de horas

.. image:: sales/v17_solConfiguration01.png
   :align: center

.. image:: sales/v17_solConfiguration02.png
   :align: center

Para que funcione em **Apoio ao Cliete** tem de ativar duas opções nas definições da equipa:

- **Registos de Horas**, vai permitir registar horas em tickets
- **Cobrança de Tempo**, vai permitir ligar esses registos de horas a linhas de notas de encomenda para faturação

.. image:: sales/v17_solConfiguration03.png
   :align: center

Utilização
----------
Nos registos de horas vai poder selecionar, ou não, a linha de nota de encomenda dependendo se, a opção está **inativa**
ou **ativa** respetivamente

**Se a opção de ocultar estiver inativa**

.. image:: sales/v17_solHowTo01.png
   :align: center

**Se a opção de ocultar estiver ativa**

.. image:: sales/v17_solHowTo02.png
   :align: center

.. tip::
    Ocultar ou não uma linha de nota de encomenda, é algo que pode fazer mesmo depois do documento estar confirmado e
    faturado, pois não tem impacto fiscal
