:nosearch:

===
POS
===
A ferramenta de POS agiliza a venda em loja ou restaurante e permite uma utilização mais intuitiva através de um
interface mais gráfico para o operador, permitindo maior facilidade com as ferramentas existentes no backend

.. raw:: html

    <div style="text-align: center; margin: 20px 0;">
        ─── ✦ ───
    </div>

Configuração
============

.. important::
    Garanta que na configuração da empresa o NIF está devidamente preenchido no formato PT123456789

    .. image:: pos/v17_companyConfiguration01.png
       :align: center

Na app de POS aceda ao menu de Configurações e crie uma nova loja

.. image:: pos/v17_appPOS.png
   :align: center

.. image:: pos/v17_posConfiguration01.png
   :align: center

.. image:: pos/v17_posConfiguration02.png
   :align: center

Dê um nome à loja e decida qual dos 2 tipos de lojas POS pretende:

- Venda de artigos em loja
- Bar ou Restaurante

Por defeito, é assumido que são do tipo **Venda de artigos em loja**, para mudar para o tipo **Bar ou Restaurante**
ative a opção respetiva

.. image:: pos/v17_posConfiguration03.png
   :align: center

Caso pretenda mudar o estilo posteriormente, pode fazê-lo nas configurações do POS

.. image:: pos/v17_posConfiguration04.png
   :align: center

.. important::
    Se escolher um POS do tipo **Bar ou Restaurante** deve ter ativa a opção de imprimir Recibo antes do pagamento

    .. image:: pos/v17_posConfiguration06.png
       :align: center

Na secção de **Contabilidade** deve fazer o correto preenchimento das respetivas configurações

- **Imposto de Vendas Predefinido**, só é aplicado a novos produtos inseridos no catálogo, normalmente aplica o imposto já definido no produto
- **Conta Temporária Padrão**, conta do Plano de Contas para documentos de clientes não definidos
- **Diários Padrão**, onde serão registados os movimentos do POS

    - **Notas Encomenda**, diário do tipo **Diversos**
    - **Faturas**, diário do tipo **Vendas**
- **Tipo Doc. para Faturas**, Série Documental utilizada para emissão das faturas da loja
- **Tipo Doc. Para Notas de Crédito**, Série Documental utilizada para emissão de notas de crédito da loja
- **Cliente Predefinido**, no caso de não existir um contacto associado este será usado, sugerimos ter Consumidor Final

.. image:: pos/v17_posConfiguration05.png
   :align: center

Para finalizar garanta que tem as definições de **Gestão de Inventário** corretas, nomeadamente:

- **No final da sessão**, quando fechar a sessão vai ser feito um movimento agregado de todos os movimentos
- **Em tempo real**, a cada operação que faz vai ser feito o respetivo movimento de inventário

.. image:: pos/v17_posConfiguration07.png
   :align: center

Siga a opção selecionada no **Tipo de Operação** e garanta que a opção **Desativar Auto-emissão de Guias** está ativa,
isto vai fazer com que os movimentos de inventário sejam finalizados e não fiquem pendentes de validação e respetiva
comunicação à AT, visto ser entrega em loja e não envio para o cliente

.. image:: pos/v17_posConfiguration08.png
   :align: center

.. image:: pos/v17_posConfiguration09.png
   :align: center

É também importante garantir o correto preenchimento dos artigos a ser vendidos em POS

- **Tipo de Artigo**
- **Unidade de medida**
- **Preço de Venda**
- **Imposto a Clientes**

.. image:: pos/v17_productConfiguration01.png
   :align: center

- Secção de Ponto de Venda na aba **Vendas** da folha do Produto, incluindo se está disponível e uma categoria de organização se o pretender

.. image:: pos/v17_productConfiguration02.png
   :align: center

- Contas da aba **Contabilidade**, a última coisa que quer é que os seus operadores não possam emitir documentos por informação em falta

.. image:: pos/v17_productConfiguration03.png
   :align: center

Utilização
==========

Abrir sessão do POS
-------------------
Abra a sessão da loja e caso tenha um diário do tipo **Numerário** será pedido que indique o saldo de abertura, pode
optar por escolher o botão de contagem de dinheiro para depois ser feito o total automático

.. image:: pos/v17_openPOS01.png
   :align: center

.. image:: pos/v17_openPOS02.png
   :align: center

.. image:: pos/v17_openPOS03.png
   :align: center

Faturas em POS
--------------
Selecione os artigos a vender e carregue no botão **Pagamento** quando estiver pronto para encerrar a venda

.. image:: pos/v17_usePOS01.png
   :align: center

Selecione o **Cliente** (caso não selecione um será usado o que foi definido nas configurações) e os métodos de pagamento

.. image:: pos/v17_usePOS02.png
   :align: center

Depois de **Validar** é gerada a fatura e pode imprimir o recibo, ou enviar por email

.. image:: pos/v17_usePOS03.png
   :align: center


Notas de Crédito em POS
-----------------------

.. important::
    Para fazer uma nota de crédito de uma fatura do POS tem de fazer a mesma dentro da app POS enquanto que a sessão
    está aberta, caso contrário não conseguirá fechar a sessão

    Depois da sessão fechada, então sim já poderá fazer notas de crédito no backend do Odoo

Para fazer uma nota de crédito em POS deve selecionar o botão para tal, selecionar a fatura em questão e a quantidade a
reduzir

.. image:: pos/v17_ncPOS01.png
   :align: center

.. image:: pos/v17_ncPOS02.png
   :align: center

Quando estiver satisfeito carregue no botão Reembolso

.. image:: pos/v17_ncPOS03.png
   :align: center

Em seguida deve voltar a carregar no botão pagamento para efetuar a devolução do dinheiro ao cliente, se for caso disso

.. image:: pos/v17_ncPOS04.png
   :align: center

.. TODO: Decidir como lidar com a situação da Norma de regularização do IVA

Fechar sessão no POS
--------------------
Para fechar a sessão do POS basta ir ao menu geral no cnto superior direito e selecionar a opção para o fazer

.. important::
    Não pode abrir nova sessão do POS sem concluir a sessão anterior

No caso de ter diários do tipo Numerário associados à loja, será pedido que indique o saldo. Tal como na abertura pode
optar por escolher o botão de contagem de dinheiro para depois ser feito o total automático

.. image:: pos/v17_closePOS01.png
   :align: center

.. image:: pos/v17_closePOS02.png
   :align: center

.. image:: pos/v17_openPOS03.png
   :align: center

POS Bar/Restaurante
-------------------
Documentação em breve

.. TODO : Documentar POS Restaurante

.. seealso::
    `Consulte a documentação Odoo sobre POS <https://www.odoo.com/documentation/17.0/pt_BR/applications/sales/point_of_sale.html>`_

    `Se pretender formação adicional sobre POS faça a sua marcação <https://exosoftware.pt/appointment>`_
