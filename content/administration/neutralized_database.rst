==========================
Base de dados neutralizada
==========================

Uma base de dados neutralizada é uma BD em que certas funcionalidades/parâmetros
estão desativadas. Isto permite efetuar testes sem correr o risco de executar
processos automatizados com potencial de impacto nos dados de produção (p. ex.
envio de email para clientes).

.. important::
   A neutralização converte automaticamente uma BD num ambiente de testes

.. raw:: html

    <div style="text-align: center; margin: 20px 0;">
        ─── ✦ ───
    </div>

Funcionalidades desativadas
===========================

As funcionalidades das apps Exo que são desativadas numa neutralização são:

- mudança de backend PT+ para Testes (comunicação com a AT é feita para servidores de testes)
- desativação (limpeza) das credenciais Eupago e Ifthenpay

Estas alterações complementam as desativações que acontecem em qualquer BD Odoo:

- todas as ações planeadas (ex. faturação automática de subscrições, email em massa, etc.)
- envio de email
- sincronização bancária
- provedores de pagamentos
- métodos de entrega
- tokens de :abbr:`IAP (In-App Purchase)`
- visibilidade do website (impede os motores de busca de indexarem o site)

.. note::
   É apresentada uma faixa vermelha no topo do ecrã das BD neutralizadas para
   reconhecimento imediato.

    .. image:: neutralized_database/v17_bdNeutralized.png
        :align: center
