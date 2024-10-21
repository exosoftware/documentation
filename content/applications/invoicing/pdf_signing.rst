:show-content:

=========================
Assinatura Digital de PDF
=========================
A assinatura digital qualificada de PDFs é uma funcionalidade que o Governo português quer obrigar à implementação desde
à vários anos, com o objetivo de garantir autenticidade dos documentos enviados e promover uma passagem para o modelo
mais digital tanto de envio como de arquivo de documentos.

.. important::
    **Ainda não é obrigatório**

    A **data prevista** para entrada em vigor desta obrigatoriedade é **1 janeiro 2025**

    Esta assinatura só pode ser emitida por entidades credenciadas para o efeito

.. danger::
    Apesar de bastante útil e legal em vários países, a app **Sign** do Odoo não cumpre os requisitos legais impostos
    pela legislação portuguesa. Pelo que **assinaturas usando a app Sign não são válidas em território nacional**

    Por esse motivo a Exo Software, para garantir a conformidade com as normativas nacionais desenvolveu a sua solução
    própria de assinatura digital de PDFs usando os serviços da `DigitalSign <https://www.digitalsign.pt/ds>`_

.. raw:: html

    <div style="text-align: center; margin: 20px 0;">
        ─── ✦ ───
    </div>

.. TODO : questão do preçário, forma de disponibilização e configuração do certificado

.. important::
    Esta app não está disponível na loja Odoo, para ter acesso à mesma terá de pedir aos nossos serviços que façam a sua
    instalação e ativação na sua base de dados

    Depois pode começar a seguir os passos que se seguem para a utilizar, ou pode pedir o nosso apoio

Configuração
============
.. TODO : como criar conta com a DigitalSign

Aceda à app **Faturação / Contabilidade** (dependendo respetivamente se tem versão Community ou Enterprise do Odoo), vá
ao menu :menuselection:`Configuração --> Configurações`

.. image:: fiscal_documents/v17_appInvoicingAccounting.png
   :align: center

.. image:: ../accounting/efatura/v17_efaturaConfig01.png
   :align: center

Procure a secção **Portugal**, ative a **Assinatura Eletrónica de PDFs** e preencha os campos:

.. image:: pdf_signing/v17_pdfSignConfiguration01.png
   :align: center

.. TODO : verificar ordem de preenchimento dos campos e como ter a informação disponível

- **ID Cliente** e **Segredo do Cliente**, são facultados pela DigitalSign na aquisição do certificado

.. image:: pdf_signing/v17_pdfSignConfiguration02.png
   :align: center

- **URI de Redirecionamento**, é o seu **endereço do servidor** acrescido de **/digitalsign** por exemplo *https://exosoftware.pt/digitalsign*

.. image:: pdf_signing/v17_pdfSignConfiguration03.png
   :align: center

.. important::
    Este URI tem de ser comunicado à DigitalSign para que seja devidamente registado nos servidores deles

- **Access Token**, com os dados anteriores preenchidos carregue no botão **Obter Access Token** para o receber, vai precisar de fazer login para confirmar a sua identidade

.. image:: pdf_signing/v17_pdfSignConfiguration04.png
   :align: center

- **ID Autorizador** e **Segredo do Autorizador**, estes dados podem ser obtidos no `seu backend DigitalSign <https://gapi.digitalsign.pt/login>`_

.. note::
    Aceda ao menu **Certificates** e carregue no botão **Edit** da sua conta

    .. image:: pdf_signing/v17_pdfSignConfiguration05.png
       :align: center

    Clique em **Register new Authorizer** e dê um nome ao mesmo (pode ainda decidir pela renovação automática do
    certificado para aquele autorizador), em seguida clique em **Register**

    .. image:: pdf_signing/v17_pdfSignConfiguration06.png
       :align: center

    .. image:: pdf_signing/v17_pdfSignConfiguration07.png
       :align: center

    Em seguida vai ver uma janela com a informação do Autorizador e a validade do certificado para o mesmo, receberá
    também um código para inserir, validando novamente a sua identidade e clique em **Registar**

    .. image:: pdf_signing/v17_pdfSignConfiguration08.png
       :align: center

    Depois de registar, vai poder visualizar os dados a inserir no Odoo para o Autorizador

    .. image:: pdf_signing/v17_pdfSignConfiguration09.png
       :align: center

    .. image:: pdf_signing/v17_pdfSignConfiguration10.png
       :align: center

Concluído este processo, siga a opção **Relatórios a assinar** onde vai poder definir que documentos serão
automaticamente assinados, quando enviados por email aos seus parceiros.

.. image:: pdf_signing/v17_pdfSignConfiguration11.png
   :align: center

Na configuração pardão os documentos já configurados são as **Faturas** e **Recibos de Pagamento**

.. important::
    Se pretender mais documentos é altamente recomendado que nos peça ajuda para a sua configuração

    Com o tempo e o possível aumento na obrigatoriedade de assinatura de documentos também é normal que se vão inserindo
    mais documentos na pré definição da app

.. image:: pdf_signing/v17_pdfSignConfiguration12.png
   :align: center

Utilização
==========
Sempre que emita um documento daqueles que estão configurados, o mesmo vai ser devidamente assinado usando o certificado
que foi configurado antes do envio para os seus parceiros

.. tip::
    Uma forma alternativa, mas muito mais fastidiosa de cumprir este requisito legal, é fazer o download de todos os
    documentos que queira enviar por email, assinar os mesmos de forma individual com **Chave Móvel Digital** ou com
    **Cartão do Cidadão** e em seguida fazer o envio manual dos emails
