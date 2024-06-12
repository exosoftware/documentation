:show-content:

====================
Faturação eletrónica
====================

Erro no CIUS-PT: DT-CIUS-PT-012
===============================
**Erro:**

**CÓDIGO:** DT-CIUS-PT-012

**CAMPO:**

.. code-block:: text

    /*:Invoice[namespace-uri()='urn:oasis:names:specification:ubl:schema:xsd:Invoice-2'][1]/*:OrderReference[namespace-uri()='urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2'][1]/*:ID[namespace-uri()='urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2'][1]

**VALORES:** [DT-CIUS-PT-012]-The BT-13 does not meet the defined format: alphanumeric with size between 1 and 20.


**Solução:**

O campo BT-13 (Referência do Cliente) tem que ter entre 1 e 20 caracteres.

Erro no CIUS-PT: DT-CIUS-PT-134
===============================
**Erro:**

**CÓDIGO:** DT-CIUS-PT-134

**CAMPO:**

.. code-block:: text

    /*:Invoice[namespace-uri()='urn:oasis:names:specification:ubl:schema:xsd:Invoice-2'][1]/*:InvoiceLine[namespace-uri()='urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2'][1]/*:Item[namespace-uri()='urn:oasis:names:specification:ubl:schema:xsd:CommonAggregateComponents-2'][1]/*:Description[namespace-uri()='urn:oasis:names:specification:ubl:schema:xsd:CommonBasicComponents-2'][1]

**VALORES:** [DT-CIUS-PT-134]-The BT-154 does not meet the defined format: alphanumeric with size between 1 and 200.

**Solução:**

O campo BT-154 (rótulo/descrição de uma linha do documento) tem que ter entre 1 e 200 caracteres.
