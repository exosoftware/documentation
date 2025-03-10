:nosearch:

=====================
Política de Segurança
=====================

.. note::
    **[Rev. 1.1]**   1/3/2025

A segurança dos serviços online da Exo Software é MUITO importante. Trabalhamos todos os dias para obter os melhores
níveis possíveis de segurança e resiliência de dados que a operação de um serviço desta natureza exige. O objetivo é
concreto: garantir, sem reservas e a cada um dos clientes, que o serviço é seguro. Para o atingir, vários fatores são
cuidadosamente considerados, nomeadamente

.. raw:: html

    <div style="text-align: center; margin: 20px 0;">
        ─── ✦ ───
    </div>

Palavras-passe
==============

- Todas as palavras-passe são protegidas com encriptação PBKDF2+SHA512.
- Só são admitidas palavras-passe que incluam caracteres maiúsculos, minúsculos, algarismos e caracteres especiais e cujo comprimento seja igual ou superior a 8.
- Está sempre operacional um serviço de prevenção de ataques por força bruta.
- Ninguém tem acesso, em momento algum, às palavras-passe.
- Estão opcionalmente disponíveis mecanismos de autenticação por duplo fator (2FA).
- Políticas adicionais de caducidade e prevenção de repetição das palavras-passe são definidas pelo cliente.

Comunicações
============
- A comunicação dos dados entre o utilizador e os nossos serviços online é efetuada de forma segura através de HTTPS com encriptação RSA de 256-bit, que lhe confere privacidade, integridade e prevenção contra ataques do tipo man-in-the-middle.
- Os certificados utilizados para a comunicação HTTPS usam módulos de 4096-bit com cadeias SHA-2. Poderão também ser utilizados certificados alternativos fornecidos pelo cliente.
- O software SSL executado nos servidores está permanentemente atualizado com as últimas versões disponíveis.

Sistemas
========

- Os servidores da Exo Software estão localizados em centros de dados criteriosamente selecionados localizados em território da UE. Em nenhuma circunstância será utilizado um centro de dados que não cumpra as seguintes normas: ISO 27001, ISO 27017 e ISO 27018.
- Um relatório pormenorizado sobre as normas e procedimentos do centro de dados específico pode, a qualquer momento, ser exigido pelos clientes.
- Todos os servidores da Exo Software correm distribuições e versões fiáveis Linux com as últimas atualizações de segurança permanentemente aplicadas.
- Apenas são instalados os serviços necessários, de forma a reduzir o âmbito de incidência de vulnerabilidades.
- O acesso não autorizado é impedido e monitorizado através de firewalls e sistemas de deteção de intrusão (IDS).
- O acesso aos servidores só é possível com pares de chaves SSH e a partir de endereços IP pré-determinados.

Bases de dados
==============

- Os dados dos clientes são guardados em bases de dados próprias, pelo que não há partilha de dados na mesma BD.
- Os controlo de acessos limitam cada utilizador a uma base de dados específica, o que elimina o risco de acessos indevidos de umas bases de dados para outras.

Cartões de Crédito
==================
A Exo Software não guarda informação sobre os cartões de crédito dos seus clientes. Em qualquer circunstância, esta é
apenas transmitida, de forma segura, entre o cliente e o acquirer de pagamentos em conformidade com a norma PCI.

Cópias de Segurança e Recuperação
=================================
- São feitas diariamente cópias de segurança entre as 03:00 e as 07:00.
- As cópias são mantidas durante um período de 10 dias e replicadas para diferentes centros de dados.
- Pode ser solicitada, a qualquer momento, uma cópia de segurança manual. De igual forma, pode ser pedida, a qualquer momento, a reposição dos dados de uma cópia de segurança.
- Estão disponíveis e constantemente monitorizados servidores hot standby em centros de dados diferentes. Em caso de ocorrência de desastre, um servidor ou num centro de dados inteiro, o serviço poderá ser retomado a partir dos sistemas hot standby num prazo máximo de 24h.

Acesso aos colaboradores da Exo Software
========================================

- Alguns colaboradores da Exo Software poderão ter acesso condicionado às bases de dados dos clientes apenas para efeitos de suporte e assistência técnica, por imposição legal ou para garantir a segurança dos serviços no caso de violação da :doc:`Política de Utilização Aceitável <acceptable_use>`. Para o efeito, usarão as suas próprias passwords. Em caso algum poderão obter palavras-passe de utilizadores.
- As intervenções de suporte/assistência são efetuadas ao abrigo de protocolos de controlo, monitorização e auditorias internas. Em nenhuma circunstância serão acedidos dados dos clientes para além dos estritamente necessários para a resolução dos problemas.

Acesso aos utilizadores dos clientes
====================================

- A definição da política de permissões e acessos de cada utilizador das bases de dados dos clientes é da inteira responsabilidade do cliente.
- A Exo Software poderá, quando solicitado, contribuir para o processo de definição, nomeadamente através da avaliação da sua adequabilidade e exequibilidade.

Software de terceiros
=====================

- A segurança específica do software Odoo é garantida pela Odoo, SA. Pode consultar `aqui <https://www.odoo.com/pt_BR/security#software>`_ os detalhes.
- A segurança específica do software `Nextcloud <https://www.nextcloud.com/>`_ é garantida pela Nextcloud, Gmbh. Pode consultar `aqui <https://www.nextcloud.com/secure>`_ os detalhes.
