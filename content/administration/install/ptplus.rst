===============
Localização PT+
===============

O código dos módulos da localização PT+ da Exo Software é disponibilizado exclusivamente através
de repositórios Git. Há um total de 4 repositórios, contendo módulos de diferentes naturezas:


.. list-table::
   :header-rows: 1
   :widths: auto

   * -
     - Nome do Repositório
     - Tipo de Repositório
     - Tipo de Módulos
   * -
     - pt-plus
     - Privado; Ofuscado
     - Faturação e Contabilidade
   * -
     - pt-payment
     - Privado; Ofuscado
     - Pagamentos Multibanco e MBWay
   * -
     - pt-payroll
     - Privado; Ofuscado
     - Processamento de Salários
   * -
     - portugal-plus-extra
     - Público
     - Utilitários e ligação com módulos de terceiros


Acesso aos repositórios
-----------------------

.. important::
   O acesso aos repositórios privados é concedido mediante subscrição e estará disponível enquanto
   esta estiver ativa.

Há 2 tipos de acesso possíveis:

- Chaves SSH: o cliente fornece à Exo uma chave SSH exclusiva para cada para cada repositório a
  que pretende aceder. O acesso é gratuito mas apenas pode clonar o repositório por SSH.
- Utilizador Github: A Exo adiciona um ou mais utilizadores à sua equipa Github como colaboradores
  externos. Este acesso tem um custo de 4€/mês/utilizador e permite acesso de leitura
  completamente funcional a todos os repositórios compatíveis com a subscrição, incluindo clonagem
  HTTPS e SSH.

Obter o código
--------------

.. important::
   O único sistema operativo suportado é **Linux**. Outros, nomeadamente o Windows, poderão também
   ser adicionados quando (e se) a procura o justificar.

.. important::
   O código dos repositórios privados está ofuscado por motivos legais. Embora o seu comportamento
   funcional seja idêntico ao código não ofuscado.

Para clonar um repositório, escolha entre o método HTTPS ou SSH (ver secção anterior). Dada a sua
natureza gratuita, a opção SSH é a mais comum.

.. FIXME : O problema aqui deve ser JS, na documentação Odoo ao mudar a tab do sistema operativo ele muda todas as tabs da página de sistema operativo
.. tabs::

   .. group-tab:: Linux

      .. tabs::

         .. tab:: Clonar com HTTPS

            .. code-block:: console

               $ git clone https://github.com/exosoftware/pt-plus.git
               $ git clone https://github.com/exosoftware/pt-payment.git
               $ git clone https://github.com/exosoftware/pt-payroll.git

         .. tab:: Clonar com SSH

            .. code-block:: console

               $ git clone git@github.com:exosoftware/pt-plus.git
               $ git clone git@github.com:exosoftware/pt-payment.git
               $ git clone git@github.com:exosoftware/pt-payroll.git

   .. group-tab:: Windows

      .. tabs::

         .. tab:: Clonar com HTTPS

            .. code-block:: doscon

               Indisponível

         .. tab:: Clonar com SSH

            .. code-block:: doscon

               Indisponível

   .. group-tab:: Mac OS

      .. tabs::

         .. tab:: Clonar com HTTPS

            .. code-block:: console

               Indisponível

         .. tab:: Clonar com SSH

            .. code-block:: console

               Indisponível

.. note::
    **O repositório Git Enterprise não contem acesso total ao código do Odoo**. É apenas uma coleção de add-ons extra.
    O código principal do servidor está na versão Community. Correr a versão Enterprise significa correr o servidor
    a partir da versão Community com a opção `addons-path` definida para para o diretório com a versão Enterprise. É
    obrigatório clonar tanto os repositórios da versão Community como o da versão Enterprise, para ter uma instalação
    Odoo Enterprise a funcionar.

Escolher o *branch*
-------------------
.. important::
    Devido ao ofuscamento de código, é necessário um passo adicional no momento de escolher o *branch*.

    Dado que é feita uma ofuscação para cada versão Python, os branches são combinações de
    versões Odoo com versões Python.

    .. example::
        Em vez de 17.0 podemos ter 17.0-py3.12

Antes de continuar, é portanto necessário determinar a versão do Python no seu sistema Odoo. Uma
forma fácil é através do comando:

    .. code-block:: console

        $ python3 --version

Do resultado, considere apenas a versão principal e a subversão.

.. example::
    Se for 3.10.2, a versão Python é 3.10

Pode agora calcular o *branch* que pretende com a fórmula <ODOO_VERSION>**-py**<PYTHON_VERSION>

.. example::
    Odoo 15.0 e Python 3.8: branch 15.0-py3.8
    Odoo 17.0 e Python 3.10: branch 16.0-py3.10

.. note::
   As versões Python suportadas são: 3.8, 3.9, 3.10, 3.11 e 3.12.

.. _ptplus_dependencies:

Dependências
~~~~~~~~~~~~

Os módulos da localização PT+ dependem de algumas *libraries* Python, bem como de alguns módulos
da `Odoo Community Association <https://odoo-community.org/>`_, em função das
funcionalidades que se pretende ver implementadas. A seguinte tabela indica todas as
dependências necessárias para cada módulo:

.. list-table::
   :header-rows: 1
   :widths: auto

   * -
     - Repositório
     - Grupo
     - Módulo
     - Dependências Python
     - Dependências SO
     - Módulos Extra
   * -
     - pt-plus
     - Faturação
     - ptplus
     - git+https://github.com/OCA/openupgradelib.git@master, unicodecsv, xmlschema==2.4.0, zeep
     -
     -
   * -
     - pt-plus
     - Faturação
     - ptplus_account_credit_note
     -
     -
     - .. TODO : inserir a dependência necessária à espera da informação

   * -
     - pt-plus
     - Faturação
     - ptplus_account_debit_note
     -
     -
     - `account_debit_note <https://github.com/OCA/account-invoicing/tree/17.0/account_invoice_refund_link>`_
   * -
     - pt-plus
     - Faturação
     - ptplus_stock
     -
     -
     - `stock_picking_invoice_link <https://github.com/OCA/stock-logistics-workflow/tree/17.0/stock_picking_invoice_link>`_
   * -
     - pt-plus
     - Faturação
     - ptplus_backend_exo
     - cryptography
     -
     -
   * -
     - pt-plus
     - Contabilidade
     - ptplus_accounting_asset_management
     -
     -
     - | `account_asset_management <https://github.com/OCA/account-financial-tools/tree/17.0/account_asset_management>`_
       | `report_xlsx_helper <https://github.com/OCA/reporting-engine/tree/17.0/report_xlsx_helper>`_
       | `report_xlsx <https://github.com/OCA/reporting-engine/tree/17.0/report_xlsx>`_

   * -
     - pt-plus
     - Contabilidade
     - ptplus_accounting_efatura
     - bs4, requests_html, pymupdf==1.24.10, pyzbar
     - zbar-tools
     -
   * -
     - pt-plus
     - Contabilidade
     - ptplus_accounting_mis_report
     -
     -
     - | `mis_builder <https://github.com/OCA/mis-builder/tree/17.0/mis_builder>`_
       | `report_xlsx <https://github.com/OCA/reporting-engine/tree/17.0/report_xlsx>`_
       | `date_range <https://github.com/OCA/server-ux/tree/17.0/date_range>`_
   * -
     - pt-payroll
     - Salários
     - ptplus_payroll_ce
     -
     -
     - | `payroll <https://github.com/OCA/payroll/tree/16.0/payroll>`_
       | `payroll_account <https://github.com/OCA/payroll/tree/16.0/payroll_account>`_
       | `base_time_parameter <https://github.com/OCA/server-tools/tree/15.0/base_time_parameter>`_
       | `payroll_rule_time_parameter <https://github.com/OCA/payroll/tree/16.0/payroll_rule_time_parameter>`_
