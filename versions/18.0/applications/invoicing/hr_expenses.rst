:nosearch:

========================
Despesas de Funcionários
========================
.. TODO : Despesas de Funcionários - Ver com André e Tiago outros tipos de despesas

.. Documentação em breve

Existem diferentes tipos de despesas que podem ser registadas pelos seus funcionários:

    - Despesas de Deslocação
    - ...

Veja como as deve registar em Odoo

.. raw:: html

    <div style="text-align: center; margin: 20px 0;">
        ─── ✦ ───
    </div>

.. _travelExpenses_ownVehicle:

Despesas de Deslocação em Viatura Própria
=========================================

.. important::
    Esta app não está disponível na loja Odoo. Para ter acesso à mesma, terá que solicitar a sua
    instalação e ativação na sua base de dados

Configuração
____________

Na app **Contactos**, entre no contacto respetivo e garanta que a informação está devidamente preenchida

.. image:: hr_expenses/v17_appContacts01.png
   :align: center

- Na aba **Vendas e Compras** vá à secção **Diversos** e preencha o campo **Distância à Sede** com os KMs a que esse parceiro está do seu estabelecimento
- Esta informação será usada para cálculo do valor da despesa

.. image:: hr_expenses/v17_Contacts01.png
   :align: center

.. note::
    Este campo só é visível para contactos do tipo Empresa

    .. image:: hr_expenses/v17_Contacts02.png
        :align: center

Na app **Funcionários**, entre no funcionário vá à aba **Informação Privada** e garanta que o campo **Matrícula** está preenchido

.. image:: hr_expenses/v17_appEmployees.png
   :align: center

.. image:: hr_expenses/v17_Employees01.png
   :align: center

Na app de **Despesas** garanta que o artigo **Despesas de Deslocação (Viatura Própria)** está devidamente configurado.
para isso vá ao menu :menuselection:`Configuração --> Categorias Despesas`

.. image:: hr_expenses/v17_appExpenses.png
   :align: center

.. image:: hr_expenses/v17_Expenses01.png
   :align: center

É importante garantir que o custo por KM está correto, como em qualquer outro artigo garanta que tem também devidamente
configurados os seguintes campos:

    - Categoria do Artigo
    - Conta de Gastos
    - Impostos de Fornecedor
    - Impostos a Cliente

.. image:: hr_expenses/v17_Expenses02.png
   :align: center

Utilização
__________

Na app de **Despesas** crie uma nova despesa e na Categoria selecione **Despesas de Deslocação (Viatura Própria)** e o parceiro respetivo

Algumas coisas vão acontecer:

- O campo **Matrícula** vai ser preenchido com a matrícula do **Funcionário**
- O campo **Preço Unitário** vai ser preenchido com o valor por KM estipulado no artigo
- O campo **Quantidade** vai ser preenchido com a distância do **Parceiro**

.. tip::
    O campo **Quantidade** usa este mecanismo para automatismo. No entanto, em cada despesa pode alterar o valor para
    o que pretender e assim cobrir diversas outras situações como:

    - Deslocações de funcionários em regime remoto à empresa
    - Deslocações a parceiros que sejam mais do que uma viagem à sua sede ou o ponto de partida seja diferente
    - Outro tipo de deslocações em viatura própria de funcionários

    Como esse tipo de alterações não pode ser previsto antecipadamente antes do seu acontecimento, terá de fazer a
    alteração manual no momento em que regista a despesa

.. image:: hr_expenses/v17_Expenses03.png
   :align: center

A partir deste ponto pode tratar a despesa como um processo normal de despesas até que a mesma esteja aprovada

Depois de aprovada tem acesso ao documento de compensação por deslocações indo ao menu :menuselection:`Ação --> Imprimir --> Compensação por Deslocações`

.. image:: hr_expenses/v17_Expenses04.png
   :align: center

.. image:: hr_expenses/v17_Expenses05.png
   :align: center

.. seealso::
    `Consulte a documentação Odoo sobre Despesas <https://www.odoo.com/documentation/18.0/pt_BR/applications/finance/expenses.html>`_

    `Se pretender formação adicional sobre despesas faça a sua marcação <https://exosoftware.pt/appointment>`_
