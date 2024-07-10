:show-content:

=====================
Processo de Faturação
=====================

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

.. _invoicing_process_quotation:

Orçamentação
------------
A orçamentação em Odoo pode ser feita em diversas apps **Vendas**, **Compras**, **Subscrições** e **CRM**

Nas apps de **Vendas**, **Compras** e **Subscrições** basta aceder à app respetiva e carregar no botão **Novo**

.. image:: invoicing_process/v17_createQuote1.png
   :align: center

Na app de **CRM** dentro de cada lead pode carregar no botão **Novo Orçamento**

.. image:: invoicing_process/v17_createQuote2.png
   :align: center

Depois deve preencher os campos necessários e selecionar o tipo de documento a ser usado na orçamentação

.. image:: invoicing_process/v17_quoteTypes.png
   :align: center

.. note::
    No caso das **Subscrições**, terá também de selecionar o **Plano de Recorrência**
    que determina de quanto em quanto tempo serão feitas novas faturas de forma
    automática, bem como pode especificar uma data para o término da subscrição.

    .. image:: invoicing_process/v17_recurringPlan.png
       :align: center

    .. example::
       Se cobra uma vez a um cliente por um serviço de 2 anos, o Plano de Recorrência
       deve ser de 2 anos e quantidade do serviço 1, não deve ser Plano de Recorrência
       anual mas quantidade a 2

    .. example::
       Se cobra mensalmente durante 2 anos por um serviço, o plano de recorrência deve
       ser mensal mas com uma data de término 2 anos no futuro

Depois de aprovação do cliente/fornecedor, pode confirmar o documento e será gerada uma **Nota de encomenda**


.. image:: invoicing_process/v17_confirmQuote.png
   :align: center

.. important::
    A legislação portuguesa proíbe a emissão de documentos não confirmados e comunicados, pelo que se tentarem fazer impressão do documento o mesmo sairá invalidado.

..
    .. tip::
        No entanto, o Odoo permite partilhar documentos no portal com o vosso cliente.

        Basta ir ao menu :menuselection:`Ação --> Partilhar` e vai abrir uma nova janela onde pode inserir o contacto do parceiro

        .. image:: invoicing_process/v17_shareQuote1.png
            :align: center
        .. image:: invoicing_process/v17_shareQuote2.png
            :align: center

        Em seguida o parceiro pode aceder ao link do orçamento para verificar o mesmo e deixar algum comentário que será adicionado ao chatter do Odoo
        Também tem acesso a outras funcionalidades. Esta é a vista do lado do parceiro

        .. image:: invoicing_process/v17_shareQuote3.png
            :align: center

        Toda a informação do envio e visionamento fica registada no chatter do próprio documento.

        .. image:: invoicing_process/v17_shareQuote4.png
            :align: center


.. seealso::
   :ref:`O que é um orçamento e suas variantes <fiscal_documents_quote>`
   :ref:`O que é uma nota de encomenda <fiscal_documents_order>`

.. _invoicing_process_creat_invoice:

Emissão de Fatura
-----------------
.. important::
    Existem 3 processos para se emitir uma fatura.

    O **processo recomendado** é emitir sempre a fatura a partir da Nota de encomenda. Que vai gerar um novo documento de fatura em rascunho.

    No entanto pode ser feita uma fatura sem esta ligação se realmente for necessário.

    O 3º processo é o **automático**, em que o próprio Odoo gera de forma autónoma a fatura para certo tipo de artigos vendidos, como as **subscrições**.

O processo de emissão da fatura deve então ser iniciado na **Nota de encomenda** e carregar no botão **Criar Fatura**

    .. image:: invoicing_process/v17_createInvoice1.png
        :align: center

Na janela que abre decida o tipo de fatura que pretende criar de entre as opções:

    - Fatura real
    - Fatura de adiantamento

        - Percentagem do valor total da encomenda
        - Valor nominal à escolha

.. image:: invoicing_process/v17_createInvoice2.png
    :align: center

.. note::
    No caso de ser uma fatura de adiantamento o aspeto será diferente e terá mais informação para preencher

    .. image:: invoicing_process/v17_createInvoice3.png
        :align: center

Depois de ter a fatura em modo de rascunho, deve preencher os campos necessários e escolher o tipo de documento de fatura que pretende.

A maioria dos campos já vão estar preenchidos pois são herdados da Nota de encomenda.

.. image:: invoicing_process/v17_invoiceTypes.png
    :align: center

.. tip::
    O processo de criação de farura sem ligação a Nota de encomenda é bastante parecido, exceto em 2 pontos:

        - Onde se inicia o processo
        - A necessidade de preencher quase todos os campos de raíz

    Para iniciar o processo aceda à app **Faturação / Contabilidade** (dependendo respetivamente se tem versão Community ou Enterprise do Odoo), vá ao menu :menuselection:`Clientes --> Faturas` ou :menuselection:`Fornecedores --> Faturas de Foenecedores`

    Clique na opção **Novo**

    .. image:: invoicing_process/v17_newInvoice.png
        :align: center

    Como os campos não são herdados de uma Nota de encomenda terão de ser preenchidos manualmente como se estivesse a criar um orçamento.


Em seguida confirme a fatura

.. image:: invoicing_process/v17_confirmInvoice.png
    :align: center

.. seealso::
   :ref:`O que é uma fatura e suas variantes <fiscal_documents_invoice>`

.. _invoicing_process_create_recipt:

Emissão de Recibos
------------------

Documentação em breve

Reconciliação de documentos
---------------------------

Documentação em breve

Correções
---------

.. _invoicing_process_create_creditNote:

Notas de crédito
^^^^^^^^^^^^^^^^
.. important::
    Segundo as regras da AT as notas de crédito têm de estar ligadas ao documento de fatura a que dizem respeito e devem mencionar o mesmo.

Por esse motivo, as notas de crédito devem ser emitidas a partir do documento da fatura para que se cumpram as regras

.. image:: invoicing_process/v17_createCreditNote1.png
   :align: center

Não se esqueça de mencionar o motivo para a criação da nota de crédito, que vai ser exibido na nota de crédito, bem como a norma de regularização do IVA associada à nota de crédito. Em seguida reverta o movimento da fatura

.. important::
    Normas de regularização de IVA são diferentes dos motivos de isenção de IVA

.. seealso::
    As normas de regularização de IVA permitidas podem ser consultadas nos seguintes artigos do CIVA:

    - `Artigo 23º <https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/iva23.aspx>`_
    - `Artigo 24º <https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/iva24.aspx>`_
    - `Artigo 25º <https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/iva25.aspx>`_
    - `Artigo 26º <https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/iva26.aspx>`_
    - `Artigo 78º <https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/iva78.aspx>`_
    - `Artigo 78º-A <https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/iva78a.aspx>`_
    - `Artigo 78º-B <https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/iva78b.aspx>`_
    - `Artigo 78º-C <https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/iva78c.aspx>`_

.. image:: invoicing_process/v17_createCreditNote2.png
    :align: center

Devem depois ser feitos os ajustes necessários, mediante o motivo que levou à emissão da nota de crédito e confirmar o documento

.. tip::
    Existe um tipo de nota de crédito que não precisa de estar ligado à sua fatura original, as Notas de Crédito de Rappel, estes tipos de notas de crédito só devem ser emitidos para descontos de "rappel" concedidos

    Definição de **desconto de "Rappel"**
    Um desconto “rappel” escalonado, cujo primeiro escalão se inicia na unidade (em euros, quilos, litros, etc.), é um desconto de quantidade que, nos termos dos n.os 2 e 3 do artigo 3.º do Decreto-Lei n.º 370/93, de 29 de Outubro, na redacção do Decreto-Lei n.º 140/98, de 16 de Maio, releva para a determinação do preço de compra efectivo, satisfeitas que se mostrem as restantes exigências de se encontrar identificado na factura ou, por remissão desta, em contratos de fornecimento ou tabelas de preços e de ser susceptível de determinação no momento da respectiva emissão.

    Para poder utilizar esta funcionalidade deve:

    - Iniciar uma nota de crédito vazia indo a um dos menus :menuselection:`Clientes --> Notas de Crédito` ou :menuselection:`Fornecedores --> Reembolsos` e selecionar a opção **Novo**

    .. image:: invoicing_process/v17_createCreditNote3.png
        :align: center

    .. image:: invoicing_process/v17_createCreditNote4.png
        :align: center

    - Dentro do formulário, na aba **Outra Informação** selecionar a opção **Nota de Crédito de Rappel**

    .. image:: invoicing_process/v17_createCreditNote5.png
        :align: center

Em seguida confirme a nota de crédito.

.. image:: invoicing_process/v17_confirmCreditNote.png
    :align: center

.. seealso::
   :ref:`O que é uma nota de crédito <fiscal_documents_creditNote:>`

.. _invoicing_process_create_debitNote:

Notas de débito
^^^^^^^^^^^^^^^^
.. important::
    Segundo as regras da AT as notas de débito têm de estar ligadas ao documento de fatura a que dizem respeito e devem mencionar o mesmo.

Por esse motivo, as notas de débito devem ser emitidas a partir do documento da fatura para que se cumpram as regras. Para isso deve ir ao menu **Ação** e selecionar a opção **Nota de Débito**

.. image:: invoicing_process/v17_createDebitNote1.png
   :align: center

Não se esqueça de mencionar o motivo para a criação da nota de débito, bem como a norma de regularização do IVA associada à nota de débito. Em seguida selecione **Criar Nota de Débito**

.. tip::
    Não se esqueça de mencionar o diário onde vão ser registaddos os movimentos da nota de débito

    Pode adicionar as linhas da fatura à nota de débito se, as alterações a efetuar forem em todas as linhas da fatura, selecionando a opção **Copiar linhas**

.. important::
    Normas de regularização de IVA são diferentes dos motivos de isenção de IVA

.. seealso::
    As normas de regularização de IVA permitidas podem ser consultadas nos seguintes artigos do CIVA:

    - `Artigo 23º <https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/iva23.aspx>`_
    - `Artigo 24º <https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/iva24.aspx>`_
    - `Artigo 25º <https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/iva25.aspx>`_
    - `Artigo 26º <https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/iva26.aspx>`_
    - `Artigo 78º <https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/iva78.aspx>`_
    - `Artigo 78º-A <https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/iva78a.aspx>`_
    - `Artigo 78º-B <https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/iva78b.aspx>`_
    - `Artigo 78º-C <https://info.portaldasfinancas.gov.pt/pt/informacao_fiscal/codigos_tributarios/civa_rep/Pages/iva78c.aspx>`_

.. image:: invoicing_process/v17_createDebitNote2.png
    :align: center

Em seguida confirme a nota de débito.

.. image:: invoicing_process/v17_confirmDebitNote.png
    :align: center

.. seealso::
   :ref:`O que é uma nota de débito <fiscal_documents_debitNote:>`

Mais informação
---------------
.. seealso::
    Se pretender formação mais detalhada sobre o processo Oddo contacte a `Exo Software <https://exosoftware.pt/appointment/2>`_.

Por API
=======
É possível fazer a comunicação de documentos através de API em vez de serem gerados pelo utilizador no Odoo.

Para essa finalidade são instalados módulos ou apps específicos que lhe permitirão continuar a usar o seu sistema atual, mas ter o Odoo como a ferramenta de backend.

Estes módulos ou apps podem já existir ou ser personalizados às necessidades do utilizador pela nossa equipa técnica.

As configurações de API são feitas numa fase inicial, entre os departamentos técnicos da Exo e da sua entidade, para que tudo fique a funcionar corretamente e como utilizador não tenha de se preocupar com o processo.

.. toctree::
    :hidden:

    fiscal_documents
