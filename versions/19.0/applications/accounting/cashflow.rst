:show-content:

===============
Fluxos de Caixa
===============
A localização da **Exo Software** permite classificar os movimentos de bancos e caixa pelas categorias de
fluxos de caixa e obter a **Demonstração dos Fluxos de Caixa** (os quadros **04-B** e **07-01** do Anexo A
da IES), com exportação em PDF e XLSX

A classificação é feita com valores exatos, pelo que um único movimento bancário pode ser repartido por
várias categorias, e é sugerida automaticamente por modelos de distribuição configuráveis

.. raw:: html

    <div style="text-align: center; margin: 20px 0;">
        ─── ✦ ───
    </div>

Configuração
============

Permissões
----------
Os ecrãs de classificação são visíveis aos utilizadores do grupo **Classificação de Fluxos de Caixa**. O
grupo é atribuído automaticamente a quem tem o acesso contabilístico de base (no Odoo Enterprise, o nível
**Faturação e Bancos**); a qualquer outro utilizador pode ser atribuído manualmente na ficha de utilizador,
no separador **Permissões de Acesso**

Categorias de Fluxos de Caixa
-----------------------------
As categorias correspondem às rubricas dos quadros 04-B e 07-01 do Anexo A da IES e vêm pré-configuradas
com o módulo. Para as consultar, aceda à app de **Faturação / Contabilidade** (dependendo respetivamente se
tem versão Community ou Enterprise do Odoo) e vá ao menu
:menuselection:`Configuração --> Contabilidade --> Categorias de Fluxos de Caixa`

.. image:: cashflow/v19_cashflow_categorias.png
   :align: center

Cada categoria tem um tipo de fluxo (atividades operacionais, de investimento ou de financiamento), um
sentido (recebimento ou pagamento) e os campos do Anexo A que alimenta

Modelos de Distribuição de Fluxos de Caixa
------------------------------------------
Os modelos de distribuição sugerem a categoria de cada movimento, à semelhança dos modelos de distribuição
analítica: uma regra aplica-se por parceiro, produto e/ou prefixo de conta, opcionalmente restrita a um
sentido (recebimento ou pagamento), e a regra mais específica ganha. Encontra-os no menu
:menuselection:`Configuração --> Contabilidade --> Modelos de Distribuição de Fluxos de Caixa`

.. image:: cashflow/v19_cashflow_modelos.png
   :align: center

O módulo traz um conjunto de regras de raiz por plano de contas (um para o SNC Base e outro para o SNC
Microentidades, com as regras comuns partilhadas), validado pelo departamento de contabilidade; cada
conjunto só se aplica às empresas no respetivo plano

.. tip::
    As regras criadas pelo utilizador têm precedência sobre as regras de raiz, e entre regras de contas
    ganha o prefixo de conta mais específico (uma regra sobre a conta 2418 ganha a uma regra sobre a 24).
    As regras de raiz podem ser editadas ou arquivadas

Utilização
==========

Classificar os movimentos
-------------------------
A classificação acompanha o dia a dia, sem passos adicionais:

- **Ao registar um pagamento**, a sugestão dos modelos, calculada a partir das linhas das faturas a pagar,
  é aplicada automaticamente ao pagamento criado; o assistente de registo não pede nada sobre fluxos de
  caixa

- **Ao reconciliar uma transação bancária** com faturas, pagamentos ou outros lançamentos, a classificação
  é aplicada automaticamente quando os modelos mapeiam as linhas dos documentos liquidados: cada documento
  pesa pelo valor que a reconciliação lhe atribuiu

- **Ao lançar diretamente numa conta mapeada** (comissões bancárias, impostos, movimentos de empréstimos),
  o movimento é classificado na publicação do lançamento

- **Nas transferências entre bancos e caixa** (depósitos e levantamentos de numerário, transferências entre
  contas bancárias), as duas pernas do movimento são classificadas automaticamente como transferências
  internas de caixa e equivalentes, que não são fluxos de caixa e ficam fora da demonstração. Vale tanto
  para um único lançamento entre as duas contas como para uma transação bancária e uma transação de caixa
  ligadas pela conta de transferências internas da empresa, assim que são reconciliadas entre si. A regra
  de raiz sobre as contas de caixa e de depósitos à ordem (classes 11 e 12) trata disso, e a demonstração
  avisa quando as transferências internas do período não somam zero

.. note::
    A sugestão comporta-se como um valor por defeito: um valor introduzido pelo utilizador nunca é
    substituído automaticamente

Classificar à mão
-----------------
O que os modelos não classificam fica assinalado no lançamento e é tratado no menu
:menuselection:`Revisão --> Controlar --> Classificar Fluxos de Caixa`, a lista de todos os movimentos de
bancos e caixa, aberta nos que estão por classificar

.. image:: cashflow/v19_cashflow_wizard_lista.png
   :align: center

A lista pesquisa-se, filtra-se (por classificar, classificados, transferências internas, hoje, esta semana,
qualquer período) e agrupa-se por diário, parceiro, categorias, conta ou mês; um movimento repartido por
várias categorias aparece em cada uma delas. A :guilabel:`Distribuição de Fluxos de Caixa` edita-se
diretamente na linha e, com vários movimentos selecionados, todos recebem a mesma categoria, cada um pelo
seu valor

Quando os modelos mapeiam os documentos por detrás de um movimento por classificar, a proposta aparece na
coluna :guilabel:`Sugestão de Fluxos de Caixa` e a seta ao lado passa-a para a distribuição. O botão
:guilabel:`Aceitar Sugestões` faz o mesmo para os movimentos selecionados, ou para todos os que o filtro
mostra quando não há nenhum selecionado. Os documentos de cada movimento estão na própria linha e abrem-se
a partir dela

.. tip::
    Depois de aceitar, a notificação oferece :guilabel:`Anular` enquanto estiver visível, o que repõe
    exatamente o que estava antes

Classificar em detalhe
----------------------
Um movimento pode liquidar documentos de naturezas diferentes. Nesse caso selecione os movimentos e use
:guilabel:`Classificar em Detalhe`: abre a lista das linhas dos documentos por detrás deles (ou das
contrapartidas diretas, quando o movimento foi lançado diretamente numa conta), agrupada por movimento

.. image:: cashflow/v19_cashflow_wizard_detalhe.png
   :align: center

Cada linha mostra a categoria que os modelos propõem e a categoria que o movimento tem para ela, vazia
enquanto a linha não estiver classificada. O cabeçalho de cada grupo mostra a distribuição do movimento e,
depois de uma seta, aquela que fica se aceitar as sugestões pendentes. Escolher ou aceitar uma categoria
escreve logo no movimento, que passa a ter a soma por categoria das suas linhas classificadas, sem ser
preciso indicar valores

.. tip::
    Uma categoria escolhida à mão diferente da proposta fica assinalada a amarelo e tem o filtro
    :guilabel:`Alteradas Manualmente`, para rever mais tarde o que foi decidido fora dos modelos

Os movimentos sem nada por trás (uma transação que ainda está na conta transitória) não têm linhas aqui e
classificam-se na lista. O mesmo detalhe abre para um único movimento a partir dos itens de diário por
classificar ou dos avisos da demonstração

Demonstração dos Fluxos de Caixa
================================
A demonstração está disponível no menu
:menuselection:`Relatórios --> Portugal --> Financeiros --> Demonstração dos Fluxos de Caixa`: escolha o
período e clique em :guilabel:`Calcular`

.. image:: cashflow/v19_cashflow_mapa_analise.png
   :align: center

Antes de exportar, reveja os avisos:

- movimentos de bancos/caixa do período ainda **por classificar** (o botão
  :guilabel:`Ver Movimentos Por Classificar` abre-os diretamente);
- o **controlo de consistência**, que confronta a variação de caixa apurada com os saldos inicial e final da
  demonstração;
- o **controlo contabilístico**, que confronta os saldos das contas das classes 11 e 12 com os campos de
  caixa da demonstração

Os valores calculados podem ser analisados linha a linha nos separadores **Q04-B** e **Q0701**, com
navegação direta para os itens de diário que compõem cada rubrica através do botão :guilabel:`Ver`

.. image:: cashflow/v19_cashflow_mapa_linhas.png
   :align: center

.. note::
    As linhas do quadro Q0701 (informação adicional) são editáveis no ecrã de análise, para corrigir
    diretamente qualquer valor antes de exportar

Por fim, exporte com :guilabel:`Exportar PDF` ou :guilabel:`Exportar XLSX`. O PDF preenche o modelo oficial
dos quadros 04-B e 07-01, com a data de criação no rodapé

.. image:: cashflow/v19_cashflow_mapa_pdf.png
   :align: center
