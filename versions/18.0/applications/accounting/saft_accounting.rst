:nosearch:

===================
SAF-T Contabilidade
===================
Documentação em breve

..
    O SAF-T de contabilidade não é de submissão obrigatória junto da AT, tendo sido adiada essa obrigatoriedade para 2027,
    sobre o ano fiscal de 2026

    .. note::
        Empresas que têm um sistema de contabilidade organizada devem ser capazes de o produzir no seu software
        certificado este documento caso lhes seja solicitado

    No entanto, este SAF-T é uma ferramenta útil para a comunicação entre softwares de gestão diferentes e para auditoria,
    pois comunica todos os registos contabilísticos de um período e garante a normalização dos dados

    .. raw:: html

        <div style="text-align: center; margin: 20px 0;">
            ─── ✦ ───
        </div>

    Exportação
    ==========
    Para poder exportar o ficheiro SAF-T de Contabilidade, aceda à app **Faturação / Contabilidade** (dependendo
    respetivamente se tem versão Community ou Enterprise do Odoo), vá ao menu **Relatórios** e no separador **Portugal**
    selecione a opção **Exportar SAF-T**.

    .. image:: ../invoicing/fiscal_documents/v17_appInvoicingAccounting.png
       :align: center

    .. image:: ../invoicing/saft_invoicing/v17_exportSAFT1.png
       :align: center

    Vai abrir uma janela, escolha o **Tipo** como **Contabilidade**, estará predefinido o **Período** como Mês Passado, mas
    pode selecionar o período como lhe for mais conveniente, mudando o **Período** ou alterando a **Data Inicial** e/ou
    **Data Final**.

    É recomendado que mantenha o visto na opção **Validar** para fazer uma verificação do ficheiro, no entanto se espera que
    o ficheiro seja muito grande pode optar por não fazer esta verificação.

    .. image:: saft_accounting/v17_exportAccountingSAFT1.png
       :align: center

    Pode ainda **Excluir Apuramento de Resultados** ou fazer uma verificação de saldos esperados, no entanto, pode optar por
    apenas exportar o ficheiro

    .. image:: saft_accounting/v17_exportAccountingSAFT2.png
       :align: center

    Caso pretenda exportar um SAF-T Integrado onde junta Faturação + Contabilidade, selecione o **Tipo** como **Integrado**

    .. image:: saft_accounting/v17_exportIntegratedSAFT1.png
       :align: center

    Carregue em **Exportar XML**.

    .. image:: saft_accounting/v17_exportAccountingSAFT3.png
       :align: center

    Vai ser gerada uma nova janela com um resumo de possíveis erros que existam nos documentos para que seja mais fácil ver
    necessidade de correção de erros

    No campo **Motivo** pode encontrar uma descrição do que está a causar o erro

    .. image:: ../invoicing/saft_invoicing/v17_exportSAFT3.png
       :align: center

    .. note::
        Se optar por fazer a verificação esperada de saldos terá um quadro adicional que indica as contas onde foram
        encontradas inconformidades com os saldos esperados

        .. image:: saft_accounting/v17_exportAccountingSAFT4.png
            :align: center


    Depois de não ter erros, faça download do ficheiro gerado.

    .. image:: ../invoicing/saft_invoicing/v17_exportSAFT4.png
       :align: center

    Esta janela tem ainda duas opções:

       - **Registar ao Fechar**, Vai criar uma entrada junto com uma cópia do ficheiro gerado para que possa consultar posteriormente
       - **Registar como Submetido**, se o visto estiver ativo o registo gerado vai ser considerado como submetido sem problemas

    .. image:: ../invoicing/saft_invoicing/v17_exportSAFT5.png
       :align: center

    Pode fechar esta janela.

..
    Importação
    ==========

.. TODO : Ferramenta ainda com problemas, João

..
    Para poder importar o ficheiro SAF-T de Contabilidade, aceda à app **Faturação / Contabilidade** (dependendo
    respetivamente se tem versão Community ou Enterprise do Odoo), vá ao menu **Relatórios** e no separador **Portugal**
    selecione a opção **Importar SAF-T**.

    .. image:: ../invoicing/fiscal_documents/v17_appInvoicingAccounting.png
       :align: center

    .. image:: saft_accounting/v17_importAccountingSAFT1.png
       :align: center

    Vai ser enviado para uma nova janela onde pode carregar no botão **Novo** para inserir o ficheiro a importar

    .. image:: saft_accounting/v17_importAccountingSAFT2.png
       :align: center

    Dê um nome ao processo, insira o ficheiro e processe o mesmo carregando no botao para o efeito

    .. image:: saft_accounting/v17_importAccountingSAFT3.png
       :align: center

    Em termos de configuração do processo a mais habitual passa por:

    - Desabilitar Contas sem Movimentos, para que não crie no Plano de contas aquelas que não estão a ser utilizadas
    - Importar todos os tipos de registos, embora possa selecionar os que pretende
    - Não ignorar qualquer registo, caso pretenda pode no tratamento seguinte decidir quais os documentos a ignorar

    .. image:: saft_accounting/v17_importAccountingSAFT4.png
       :align: center

    Quando o ficheiro estiver processado, nos smart buttons do topo, irá ter acesso à listagem dos registos que foram
    encontrados por tipo de registo

    - Contactos
    - Contas
    - Diários
    - Registos contabilísticos

    Em cada um dos smart buttons pode ver o tipo de comportamento esperado bem como a quantidade de registos para cada um deles

    - **C**, registos que irão ser **Criados**
    - **A**, registos que irão ser **Atualizados**
    - **I**, registos que irão ser **Ignorados**

    .. image:: saft_accounting/v17_importAccountingSAFT5.png
       :align: center
