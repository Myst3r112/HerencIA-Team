Feature: Crear solicitud de activación post mortem
    Como heredero
    Quiero crear una solicitud de activación y adjuntar la evidencia requerida del fallecimiento
    Para iniciar formalmente la evaluación de acceso al expediente patrimonial

    Scenario: E1 - Solicitud exitosa con evidencia admitida
        Given que el heredero ingresa al módulo de activación post mortem
        When completa los datos del titular y adjunta el documento "<Tipo_Documento>" válido
        And envía la solicitud de activación
        Then el sistema genera el número de seguimiento "<Formato_Tracking>"
        And el sistema cambia el estado a "En Revisión Legal"
    
        Examples:
            |   Tipo_Documento                  |	Formato_Tracking    |
            |   Acta de defunción RENIEC        |	ACT-2026-XXXX       |
            |   Certificado médico de defunción |	ACT-2026-XXXX       |

    Scenario: E2 - Error en solicitud por falta de evidencia
        Given que el heredero está completando el formulario de solicitud
        When intenta enviar la solicitud sin adjuntar ningún documento probatorio
        Then el sistema indica el requisito pendiente resaltando el campo en rojo
        And el sistema muestra el mensaje "Debe adjuntar el Acta de Defunción para proceder"
        And no se inicia el proceso de revisión
