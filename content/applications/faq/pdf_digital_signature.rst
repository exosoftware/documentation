:show-content:

==========================
Assinatura digital de PDFs
==========================

.. seealso::
    :doc:`Consulte o nosso Guia sobre assinatura digital de PDFs <../invoicing/pdf_signing>`

Que elementos são necessários para solicitar um certificado?
============================================================
Para solicitar um certificado digital, deve fornecer os seguintes elementos:

**Informação para o Certificado**

- **Nº Telemóvel**, que vai ficar associado ao certificado
- **Email**, que vai ficar associado ao certificado
- **Frase identificação**, senha utilizada para levantamento do certificado
- **Validação Empresa**, método escolhido para validação da empresa. :ref:`Métodos disponíveis <faqs_pdf_digital_signature_company_validation_methods>`

**Dados da Organização**

- **Nome Organização** conforme Certidão Permanente
- **Código Certidão Permanente**
- **NIF**
- **Morada**
- **Nº Porta / Andar**
- **Código Postal**
- **Localidade**
- **País**
- **Telefone**

**Dados do Representante Legal**

- **Nome Completo**, conforme documento de identificação
- **Nº CC**


.. _faqs_pdf_digital_signature_company_validation_methods:

De que forma é validada a empresa?
==================================
Naturalmente, para emissão de um certificado para assinatura de documentos da empresa, é necessário atestar a
autenticidade desta, bem como do seu representante.

Para o efeito, há 3 métodos possíveis:

1. **PDF assinado com Certificado Qualificado (CMD, CC ou app)**

.. TODO : verificar como é recebido o PDF original

Após receção de um PDF, preencher e assinar de forma digital, usando um Certificado Qualificado da Empresa, Chave Móvel
Digital ou Cartão de Cidadão

Esta assinatura tem de ser feito com um perfil profissional ativo

2. **Vídeochamada com Representante Legal** que foi associado ao certificado

Vai ter de enviar uma cópia do Cartão do Cidadão para validação

Para selecionar esta modalidade, é necessário indicar **Sim** na opção **Validação de Identificação por Videochamada**

.. image:: pdf_digital_signature/assinatura.png
   :align: center

3. **Formulário por Correio**

.. TODO : verificar como é recebido o PDF original

Após receção de um PDF, imprimir, preencher e assinar manuscritamente. Fazer reconhecimento por notário ou advogado e
enviar por correio físico para a Digitalsign

Verificação das assinaturas
===========================
Se quiser validar que os seus documentos estão a ser devidamente assinados pode utilizar este `validador <https://validador.digitalsign.pt/verify>`_

Arraste o documento para a página e verifique o estado das assinaturas

Este serviço é uma implementação do webservice da União Europeia para validação de assinaturas digitais

.. TODO : verificar se é mesmo um webservice

Quantidade de assinaturas disponíveis
=====================================
Dependendo do tipo de certificado que adquira, vai ter um número fixo de assinaturas disponíveis e uma validade para
as mesmas, verifique as condições no ato da compra

O nº de assinaturas é acrescentado numa base anual, mas as que não forem gastas transitam para o ano seguinte, juntamente
com o valor do ano seguinte, exceto se ultrapassarem o período da sua validade

Se quiser assinar mais do que o nº fixo de documentos, pode adquirir pacotes adicionais de assinaturas

.. TODO : como controlar nº de assinaturas e quem fica com o prejuízo se ultrapassar? vai continuar a assinar?

Obrigatoriedade legal vs Arquivo digital
========================================
Para que cumpra com a **Obrigatoriedade legal** apenas precisa de assinar com certificado qualificado:

- Faturas
- Notas de Crédito
- Notas de Débito

Se quiser fazer **Arquivo digital** precisa de assinar com certificado qualificado:

- Todos os documentos que emite
- Garantir que os documentos que recebe também estão assinados
- Todos os documentos que sustentam os documentos que envia

        - Para guardar uma Fatura também terá de ter arquivado o Orçamento, Notas de Encomenda, Guias de Remessa, etc.
