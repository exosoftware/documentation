:show-content:

========================
Processo de Orçamentação
========================

Em Odoo
=======

O processo de faturação em Odoo foi pensado para seguir sempre a mesma sequência:

    - Orçamentação
    - Emissão de Fatura
    - Emissão do Recibo
    - Reconciliação de documentos
    - Correções

        - Nota de Crédito
        - Nota de Débito

Nesta secção vamos abordar o processo de **Orçamentação**

.. _quotation_process_quotation:

Orçamentação
------------
A orçamentação em Odoo pode ser feita em diversas apps **Vendas**, **Compras**, **Subscrições** e **CRM**

Nas apps de **Vendas**, **Compras** e **Subscrições** basta aceder à app respetiva e carregar no botão **Novo**

.. image:: quotation_process/v17_createQuote1.png
   :align: center

Na app de **CRM** dentro de cada lead pode carregar no botão **Novo Orçamento**

.. image:: quotation_process/v17_createQuote2.png
   :align: center

Depois deve preencher os campos necessários e selecionar o tipo de documento a ser usado na orçamentação

.. image:: quotation_process/v17_quoteTypes.png
   :align: center

.. note::
    No caso das **Subscrições**, terá também de selecionar o **Plano de Recorrência**
    que determina de quanto em quanto tempo serão feitas novas faturas de forma
    automática, bem como pode especificar uma data para o término da subscrição.

    .. image:: quotation_process/v17_recurringPlan.png
       :align: center

    .. example::
       Se cobra uma vez a um cliente por um serviço de 2 anos, o Plano de Recorrência
       deve ser de 2 anos e quantidade do serviço 1, não deve ser Plano de Recorrência
       anual mas quantidade a 2

    .. example::
       Se cobra mensalmente durante 2 anos por um serviço, o plano de recorrência deve
       ser mensal mas com uma data de término 2 anos no futuro

Depois de aprovação do cliente/fornecedor, pode confirmar o documento e será gerada uma **Nota de encomenda**


.. image:: quotation_process/v17_confirmQuote.png
   :align: center

.. important::
    A legislação portuguesa proíbe a emissão de documentos não confirmados e comunicados, pelo que se tentarem fazer impressão do documento o mesmo sairá invalidado.

..
    .. tip::
        No entanto, o Odoo permite partilhar documentos no portal com o vosso cliente.

        Basta ir ao menu :menuselection:`Ação --> Partilhar` e vai abrir uma nova janela onde pode inserir o contacto do parceiro

        .. image:: quotation_process/v17_shareQuote1.png
            :align: center
        .. image:: quotation_process/v17_shareQuote2.png
            :align: center

        Em seguida o parceiro pode aceder ao link do orçamento para verificar o mesmo e deixar algum comentário que será adicionado ao chatter do Odoo
        Também tem acesso a outras funcionalidades. Esta é a vista do lado do parceiro

        .. image:: quotation_process/v17_shareQuote3.png
            :align: center

        Toda a informação do envio e visionamento fica registada no chatter do próprio documento.

        .. image:: quotation_process/v17_shareQuote4.png
            :align: center


.. seealso::
   :ref:`O que é um orçamento e suas variantes <fiscal_documents_quote>`
   :ref:`O que é uma nota de encomenda <fiscal_documents_order>`

Mais informação
---------------
.. seealso::
    Se pretender formação mais detalhada sobre o processo Oddo contacte a `Exo Software <https://exosoftware.pt/appointment/2>`_.

Por API
=======
É possível fazer a comunicação de documentos através de API em vez de serem gerados pelo utilizador no Odoo.

Para essa finalidade são instalados módulos ou apps específicos que lhe permitirão continuar a usar o seu sistema atual, mas ter o Odoo como a ferramenta de backend.

Estes módulos ou apps podem já existir ou ser personalizados às necessidades do utilizador pela nossa equipa técnica.

As configurações de API são feitas numa fase inicial, entre os departamentos técnicos da Exo Software e da sua entidade, para que tudo fique a funcionar corretamente e o utilizador não tenha de se preocupar com o processo.
