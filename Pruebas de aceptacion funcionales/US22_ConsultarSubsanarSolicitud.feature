Feature: Consultar y subsanar solicitud de activación
    Como heredero
    Quiero consultar el estado de mi solicitud y responder observaciones
    Para subsanar requisitos sin generar demoras evitables

    Scenario: E1 - Consulta de solicitud observada
        Given que el heredero tiene una solicitud de activación en estado "Observado"
        When consulta el detalle del trámite en la plataforma
        Then visualiza la fecha de la observación y el mensaje del asesor legal indicando "Documento ilegible"

    Scenario: E2 - Subsanación exitosa de solicitud
        Given que una solicitud requiere subsanación por "Documento ilegible"
        When el heredero adjunta un nuevo archivo PDF escaneado correctamente
        And hace clic en "Enviar Subsanación"
        Then el sistema registra la respuesta
        And el estado cambia a "Subsanado - Pendiente de Revisión"
        And el sistema notifica al asesor legal asignado