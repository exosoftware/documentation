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
     - Público; Ofuscado
     - Faturação e Contabilidade
   * -
     - pt-payment
     - Público; Ofuscado
     - Pagamentos Multibanco e MBWay
   * -
     - pt-payroll
     - Público; Ofuscado
     - Processamento de Salários
   * -
     - portugal-plus-extra
     - Público
     - Utilitários e ligação com módulos de terceiros

Obter o código
--------------

.. important::
   Os sistemas operativos suportados são **Linux** e **Windows**. Outros, nomeadamente o Mac, poderão também
   ser adicionados quando (e se) a procura o justificar.

.. important::
   O código dos repositórios públicos está ofuscado por motivos legais. Embora o seu comportamento funcional seja
   idêntico ao código não ofuscado.

Para clonar um repositório, escolha entre o método HTTPS ou SSH. Dada a sua natureza gratuita, a opção SSH é a mais comum.

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

               .. TODO : Inserir informação visto que passou a ser suportado

               Indisponível

         .. tab:: Clonar com SSH

            .. code-block:: doscon

               .. TODO : Inserir informação visto que passou a ser suportado

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
    Deve escolher o *branch* relativo à sua versão do Odoo

    .. example::
        17.0


.. _ptplus_dependencies:

Dependências
~~~~~~~~~~~~

.. important::
    Devem atualizar o **pip** para a versão mais recente, só será compatível com a localização PT+ a partir da **versão 25.0**

    ``pip install --upgrade pip``

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
     - git+https://github.com/OCA/openupgradelib.git@master, git+https://github.com/exosoftware/runpack.git, pyopenssl==22.1.0, unicodecsv, xmlschema==3.4.3, zeep
     -
     -
   * -
     - pt-plus
     - Faturação
     - ptplus_account_credit_note
     -
     -
     - `account_invoice_refund_link <https://github.com/OCA/account-invoicing/tree/17.0/account_invoice_refund_link>`_
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
     - Faturação
     - ptplus_partner
     - suds-py3
     -
     -
   * -
     - pt-plus
     - Faturação
     - ptplus_pdf_sign
     - pyotp, asn1crypto, pyhanko
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
     - bs4, requests_html, pymupdf==1.24.10, pyzbar, html5lib
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
