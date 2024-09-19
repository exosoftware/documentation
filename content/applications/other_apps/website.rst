:show-content:

=======
Website
=======

.. _otherApps_Portal_Personal_Data:

Portal Personal Data
====================
Com a crescente preocupação com a segurança dos dados e da informação, a **Exo Software** desenvolveu uma app que lhe
permite controlar em cada utilizador de portal o grau de acesso que o mesmo tem.

.. raw:: html

    <div style="text-align: center; margin: 20px 0;">
        ─── ✦ ───
    </div>

.. important::
    Esta app não está disponível na loja Odoo, para ter acesso à mesma terá de pedir aos nossos serviços que façam a sua
    instalação e ativação na sua base de dados

    Veja os passos que se seguem para saber como a utilizar

Nativamente, o Odoo permite que qualquer utilizador de portal tenha acesso a toda a informação, sua e da empresa a que
esteja associado.

Esta app está preparada para que facilmente possa controlar esse acesso **utilizador a utilizador**, de forma muito
simples em várias temáticas como:

- Faturas, Notas de Crédito/Débito
- Tickets de Apoio ao cliente
- Tarefas de Projetos
- Orçamentos e Notas de Encomenda
- Registo de Horas

.. important::
    Ao instalar a app todos os seus contactos passarão ao **estado restrito** só podendo ver os seus próprios
    documentos/registos em todas as temáticas acima referidas.

    Esta decisão foi tomada, de forma a prevenir esquecimentos em contactos já existentes. A motivação da decisão foi
    que o interesse numa app deste género, demonstra interesse em prevenção, pelo queé preferível bloquear todos, do que
    alguém ter acesso indevido a dados/informação que não devia.

    No entanto, como vai poder ver mais adiante, pode retornar ao visionamento padrão, temática a temática em cada
    utilizador.

Configurar
==========
Na app de **Configurações** aceda à opção **Manage Users** e selecione o utilizador que vai fazer esta gestão. Em
seguida navegue para a aba **Permissões de Acesso** e ative a opção **Acesso Gestão de Portal**

.. image:: ../../administration/install/initial_configuration/v17_appSettings.png
   :align: center

.. image:: website/v17_manageUsers.png
   :align: center

.. image:: website/v17_accessRights01.png
   :align: center

.. image:: website/v17_accessRights02.png
   :align: center

Utilizar
========
Se pretender restituir o comportamento padrão do Odoo para alguma temática em específico, vá à app de **Contactos**
selecione um dos seus contactos, na aba **Portal** remova o visto a uma vou várias das opções que pretende restituir

.. image:: website/v17_appContacts.png
   :align: center

.. image:: website/v17_portalPersonalData.png
   :align: center

A partir deste momento o utilizador vai poder ver todos os documentos/registos associados a si ou à sua empresa para
a(s) temática(s) em causa

.. note::
    Um visto **ativo**, significa que o acesso é **restrito**

    Sem visto, significa que o acesso é global

.. tip::
    Para que um documento ou registo seja considerado como pertencente ao utilizador de portal e o mesmo tenha acesso,
    quando a restrição está aplicada, basta ser o cliente ou seguidor do documento/registo
