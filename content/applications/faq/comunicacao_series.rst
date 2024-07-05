:show-content:

=====================
Comunicação de Séries
=====================

Preciso de criar um subutilizador no site das Finanças?
=======================================================
Não. Pode ser usado o nome de utilizador e a senha de acesso geral às Finanças. Estas credenciais têm, por definição, autorização para efetuar qualquer tipo de operação. A criação de subutlizadores é recomendada quando a empresa tem vários colaboradores a interagir com as Finanças e se pretende separar as autorizações de cada um. Por exemplo, pode haver utilizadores com permissão para emitir guias de remessa e outros com permissão para comunicar séries ou faturas.

Enganei-me e registei erradamente uma série. O que devo fazer?
==============================================================
Quando há um engano no registo de uma série, esta deve ser cancelada/anulada. Para isso, basta abrir o Tipo de Documento Fiscal associado a essa série e clicar no botão Cancelar. Este procedimento é o recomendado quando nenhum documento fiscal foi emitido com a série em questão. Caso contrário, o procedimento é análogo e usamos o botão Finalizar em vez do Cancelar.

Não vou utilizar mais uma determinada série. Tenho que fazer alguma coisa?
==========================================================================
Embora seja possível ignorar uma série que não produza mais documentos, é recomendável "dar baixa" desta nas Finanças.

A minha série Odoo calcula automaticamente o ano. Posso usá-la?
===============================================================
É comum usar-se o prefixo %(y)s ou %(year)s nas séries Odoo. Infelizmente, com as regras do ATCUD isso deixou de ser viável em Portugal, uma vez que qualquer alteração no prefixo pressupõe um nova série e respetiva comunicação.

Sendo assim, caso queira manter o ano nas suas séries, recomendamos que o trate como um prefixo de texto regular: num ano tem um tipo de documento fiscal com prefixo 2023 e no ano seguinte cria um novo com prefixo 2024 (comunicando a finalização do de 2023). Torna-se evidente que esta gestão das séries pode ser demasiado trabalhosa relativamente às vantagens que traz. Por esse motivo, recomendamos que use séries com prefixo imutável e ciclo de vida plurianual.

Quais são os documentos afetados pela obrigatoriedade do ATCUD?
===============================================================
Todos os documentos fiscalmente relevantes obrigam à comunicação da(s) sua(s) série(s) de forma a poderem ter um ATCUD em conformidade legal. Este documentos incluem, entre outros, faturas, notas de crédito. recibos, notas de encomenda, orçamentos, faturas proforma, consultas de mesa, folhas de obra, etc...

A numeração das séries registadas tem que começar por 1?
========================================================
Não necessariamente. Se se tratar de uma série nova, tem que começar por 1 (um). Mas se a série já está a ser usada no momento do registo, pode ser comunicada tal como está, sendo automaticamente indicado o número do último documento emitido.
