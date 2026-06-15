:show-content:

======
Fatura
======

.. seealso::
    :ref:`Consulte o nosso Guia sobre Faturas <fiscal_documents_invoice>`

    :doc:`Consulte o nosso Guia sobre configurações iniciais <../../applications/faq/configuration>`

Como incluir nas faturas a menção "Os artigos/serviços faturados foram colocados à disposição do adquirente (...)"
==================================================================================================================
Em primeiro lugar, é necessário ativar a opção **Mostrar data de disponibilização dos bens** nas configurações da app **Faturação / Contabilidade** (dependendo respetivamente se tem versão Community ou Enterprise do Odoo)

.. image:: invoice/v17_itemsAvailabitityDate1.png
   :align: center

A partir desse momento, todas as faturas incluirão a menção **"Os artigos/serviços faturados foram colocados à disposição do adquirente na data do documento (Alínea f do nº 5 do Artº 36 CIVA)"**

.. tip::
    Se quiser personalizar a data, preencha o respetivo campo **Data de Disponibilização** na fatura em questão:

    .. image:: invoice/v17_itemsAvailabitityDate2.png
       :align: center

    Neste caso, a menção será então "Os artigos/serviços faturados foram colocados à disposição do adquirente em DD-MM-AAAA (Alínea f do nº 5 do Artº 36 CIVA)"

.. _faq_invoice_invoiceTransportationDoc:

Posso usar a fatura como guia de remessa?
=========================================
**Sim**, desde que os elementos obrigatórios sejam adicionados aos da fatura regular

Para isso, deve ir a secção **Portugal** nas configurações da app **Faturação / Contabilidade** (dependendo respetivamente se tem versão Community ou Enterprise do Odoo)

.. image:: invoice/v17_invoiceTransportDoc1.png
   :align: center

e ativar a opção **"Usar faturas como guias de remessa"**

Poderá assim, em cada fatura, controlar os Locais e Horas de Carga e Descarga conforme a imagem seguinte. Poderá saber mais sobre o comportamento de cada um dos campos colocando o cursor do rato por cima destes.

.. image:: invoice/v17_invoiceTransportDoc2.png
   :align: center

A fatura passará a incluir a informação relacionada

.. image:: invoice/v17_invoiceTransportDoc3.png
   :align: center
