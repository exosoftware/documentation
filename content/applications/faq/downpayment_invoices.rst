:show-content:

====================
Faturas Adiantamento
====================

.. Important::
    Estas decisões foram tomadas pelo nosso compromisso em alterar de forma mínima os comportamentos nativos do Odoo,
    uma vez que, na mesma base de dados podem existir empresas de países diferentes e com localizações distintas que
    usem os mesmos relatórios

Nota Encomenda exibe informação dos adiantamentos
=================================================
De forma nativa em Odoo, a Nota Encomenda é um documento que é reimpresso cada vez que o tenta imprimir e o seu aspeto
habitual é o seguinte

.. image:: downpayment_invoices/v17_NE_no_downpayment.png
    :align: center

No entanto, caso exista um adiantamento, o seu aspeto fica diferente e fará menção ao mesmo

.. image:: downpayment_invoices/v17_NE_with_downpayment.png
    :align: center

Caso não goste da alteração e pretenda que a informação adicional não surja, pode mudar o comportamento nativo do
relatório

Na app de **Configurações** aceda ao menu **Técnico** (para aceder a este menu precisa de ter o **Modo programador**
ativo) e na secção de Ações escolha a opção **Relatórios** e no modelo **sale.order** escolha a opção **Orçamento PDF**

.. image:: ../../administration/install/initial_configuration/v17_appSettings.png
    :align: center

.. image:: downpayment_invoices/v17_report_menu.png
    :align: center

.. image:: downpayment_invoices/v17_NE_report.png
    :align: center

Na aba **Propriedades Avançadas** selecione a opção **Recarregar a partir do Anexo**

.. image:: downpayment_invoices/v17_NE_report_attachment.png
    :align: center

Com esta configuração, desde que tenha o documento original nos anexos do Chatter, terá sempre acesso à versão original
da Nota Encomenda, sem a adição da informação do adiantamento, em vez de imprimir um novo relatório

Fatura final sem subtotal ou secção de adiantamentos
====================================================
Na sua versão nativa o Odoo cria uma secção para os adiantamentos na fatura final como se pode ver na imagem abaixo

.. image:: downpayment_invoices/v17_FT_with_section.png
    :align: center

Para retirar estas menções caso não as queira ver, no momento em que o documento ainda está em rascunho, deve eliminar a
secção criada, carregando no icon para o efeito

.. image:: downpayment_invoices/v17_FT_remove_section.png
    :align: center

Com esta alteração a secção e respetivo subtotal não são exibidos no PDF

.. image:: downpayment_invoices/v17_FT_without_section.png
    :align: center

.. seealso::
    Apesar das decisões tomadas, a **Exo Software** está sempre disponível para fazer personalizações aos relatórios
    numa premissa de caso a caso e conforme a necessidade dos seus clientes

    `Contacte os nossos serviços se desejar essas alterações <https://exosoftware.pt/appointment>`_

   :ref:`Conheça o procedimento para emitir faturas adiantamento e regularização da fatura final <odoo_process_downpayment>`
