:nosearch:

================================
Faturação Eletrónica (CIUS-PT)
================================
A faturação eletrónica CIUS-PT é o formato padrão português para a troca de faturas em
ficheiro estruturado (XML), segundo a norma
`CIUS-PT 2.1.1 <https://www.espap.gov.pt/spfin/normas/Paginas/normas.aspx>`_
publicada pela eSPap. Permite a transmissão de faturas entre empresas (B2B) e para entidades
do setor público (B2G) de forma estruturada e validada pelo organismo oficial.

.. raw:: html

    <div style="text-align: center; margin: 20px 0;">
        ─── ✦ ───
    </div>

.. important::
    Esta funcionalidade não está disponível na loja Odoo. Para ter acesso à mesma,
    terá de solicitar a sua instalação e ativação à **Exo Software**.

Configuração
============

Ativar a Faturação Eletrónica
------------------------------

Aceda à app **Faturação / Contabilidade** (dependendo respetivamente se tem versão Community ou
Enterprise do Odoo), vá ao menu :menuselection:`Configuração --> Configurações` e navegue para
a secção **Financeiro** no menu lateral.

Ative a opção :guilabel:`Faturação Eletrónica` (secção **Portugal**) e guarde as definições.

.. image:: e-invoicing/v19_cius_pt_settings.png
   :align: center

Configurar o Parceiro
---------------------

Para que o Odoo gere automaticamente o ficheiro CIUS-PT, é necessário indicar na ficha de cada
parceiro cliente que este deve receber faturas nesse formato.

Navegue até à ficha do parceiro em causa e abra o separador :guilabel:`Financeiro`. Na secção
**Faturas de Cliente**, defina o campo :guilabel:`Formato da fatura eletrônica` como
:guilabel:`Portugal (CIUS-PT)`.

.. image:: e-invoicing/v19_cius_pt_partner_financeiro_edi.png
   :align: center

.. image:: e-invoicing/v19_cius_pt_partner_edi_selected.png
   :align: center

.. note::
    O campo :guilabel:`Formato da fatura eletrônica` está visível em modo técnico (debug).
    Para o ativar, clique no ícone de inseto no canto superior direito ou adicione ``?debug=1``
    ao endereço da página.

Utilização
==========

Após configurar o parceiro, o processo é inteiramente automático: sempre que publicar uma fatura
de cliente para esse parceiro, o Odoo gera o ficheiro XML CIUS-PT e valida-o contra o esquema
oficial disponibilizado pela eSPap.

.. important::
    Se a validação do esquema falhar, a fatura **não será publicada**. O Odoo apresentará a
    lista de erros detetados — corrija os dados indicados e publique novamente.

Aceda à app **Faturação / Contabilidade**, abra ou crie a fatura e publique-a da forma habitual.
Pode verificar o estado do documento CIUS-PT no separador :guilabel:`Documentos de EDI`:

.. image:: e-invoicing/v19_cius_pt_invoice_edi_tab.png
   :align: center

A coluna :guilabel:`Situação` indica o estado do ficheiro XML gerado:

.. list-table::
   :header-rows: 1
   :widths: 30 70

   * - Situação
     - Descrição
   * - **A enviar**
     - O ficheiro XML foi gerado com sucesso e está pronto a incluir no envio ao parceiro.
   * - **Enviado**
     - O ficheiro foi incluído num envio ao parceiro.

Envio
-----

Para enviar a fatura ao parceiro, carregue no botão :guilabel:`Enviar`. O diálogo de envio
apresenta os ficheiros que serão incluídos: o PDF da fatura e o ficheiro XML CIUS-PT.

.. image:: e-invoicing/v19_cius_pt_invoice_send_dialog.png
   :align: center

.. note::
    O ficheiro XML é gerado no momento de **publicação** da fatura, não no momento de envio.
    Desta forma, garante-se que quaisquer problemas de conformidade são detetados antes de o
    documento ser comunicado ao cliente.

Campos Adicionais para Faturação B2G
=====================================

Nas faturas destinadas a entidades do setor público, o separador :guilabel:`Outra Informação`
expõe dois campos específicos exigidos no âmbito da contratação pública portuguesa:

- :guilabel:`Nº do Compromisso` — número de compromisso fornecido pela entidade pública compradora.
- :guilabel:`Nº do Cabimento` — número de cabimento fornecido pela entidade pública compradora.

.. image:: e-invoicing/v19_cius_pt_invoice_other_info.png
   :align: center

Estes valores, quando preenchidos, são incluídos automaticamente no XML CIUS-PT gerado e ficam
igualmente visíveis no PDF da fatura emitida.

Envio Automático via Broker (Saphety)
======================================

O módulo base gera e anexa o ficheiro XML CIUS-PT, mas o envio eletrónico automático para
o destinatário requer a instalação do módulo complementar **Portugal - Broker EDI Saphety**.
Com este módulo adicional, as faturas são transmitidas de forma automática através da
plataforma Saphety, certificada para o efeito.

Para mais informações sobre a configuração e utilização deste módulo, consulte a página
:doc:`Broker EDI Saphety <saphety>`.