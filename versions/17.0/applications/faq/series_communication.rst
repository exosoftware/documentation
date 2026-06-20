:show-content:

=====================
Comunicação de Séries
=====================

.. seealso::
    :doc:`Consulte o nosso Guia sobre registo de Séries <../invoicing/series_registration>`

.. _faq_invoice_ATusers:

Preciso de criar um subutilizador no site das Finanças?
=======================================================
**Não**

Pode ser usado o nome de utilizador e a senha de acesso geral às Finanças. Estas credenciais têm, por definição, autorização para efetuar qualquer tipo de operação

.. note::
    A criação de subutlizadores é recomendada quando a empresa tem vários colaboradores a interagir com as Finanças e se pretende separar as autorizações de cada um

    .. example::
        Pode haver utilizadores com permissão para emitir guias de remessa e outros com permissão para comunicar séries ou faturas

Enganei-me e registei erradamente uma série. O que devo fazer?
==============================================================
Quando há um engano no registo de uma série, esta **deve ser cancelada/anulada**

.. important::
    Se nenhum documento fiscal foi emitido com a Série em questão, abra o tipo de documento fiscal associado a essa Série e clique no botão **Cancelar**

    Se já foram emitidos documentos fiscais com a Série em questão, o procedimento é análogo mas usamos o **botão Finalizar**

Não vou utilizar mais uma determinada série. Tenho que fazer alguma coisa?
==========================================================================
Embora seja possível ignorar uma série que não produza mais documentos, **é recomendável "dar baixa" desta nas Finanças**

A minha série Odoo calcula automaticamente o ano. Posso usá-la?
===============================================================
É comum usar-se o prefixo %(y)s ou %(year)s nas séries Odoo

.. important::
    Infelizmente, com as regras do ATCUD isso deixou de ser viável em Portugal, uma vez que qualquer alteração no prefixo pressupõe um nova Série e respetiva comunicação

Sendo assim, caso queira manter o ano nas suas séries, recomendamos que o trate como um prefixo de texto regular

.. example::
    Num ano tem uma Série com prefixo 2024 e no ano seguinte cria uma nova com prefixo 2025, comunicando a finalização da Série de 2024

Torna-se evidente que esta gestão das séries pode ser demasiado trabalhosa relativamente às vantagens que traz

Por esse motivo, recomendamos que use séries com prefixo imutável e ciclo de vida plurianual

Quais são os documentos afetados pela obrigatoriedade do ATCUD?
===============================================================
.. important::
    Todos os documentos fiscalmente relevantes obrigam à comunicação da(s) sua(s) Série(s) de forma a poderem ter um ATCUD em conformidade legal

Este documentos incluem, entre outros, faturas, notas de crédito, recibos, notas de encomenda, orçamentos, faturas proforma, consultas de mesa, folhas de obra, etc...

A numeração das séries registadas tem que começar por 1?
========================================================
**Não necessariamente**

Se se tratar de uma **Série nova**, tem que começar por 1 (um)

Se a **Série já está a ser usada** no momento do registo, pode ser comunicada tal como está, sendo automaticamente indicado o número do último documento emitido
