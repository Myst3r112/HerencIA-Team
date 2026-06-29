# EP-06 Solicitud de activacion post mortem
# US-22 Consultar y subsanar solicitud de activacion
Feature: Consultar y subsanar solicitud de activacion
    Como heredero
    Quiero consultar el estado de mi solicitud y responder observaciones
    Para subsanar requisitos sin generar demoras evitables

    Scenario Outline: E1 - Consulta de solicitud exitosa 
        Given que existe una solicitud, 
        When consulto su detalle, 
        Then visualizo estado, fecha y observaciones registradas. 

        # Input: 
        # - Código de seguimiento: Cadena de texto alfanumérica en el campo de seguridad.
        Examples: INPUT
            | Código de seguimiento |
            |  texto alfanumérica   |

        # Output:
        # - Estado: Texto descriptivo del estado actual del caso.
        # - Fecha: Timestamp de la última modificación hecha por el revisor.
        # - Observaciones registradas: Cuadro de texto con la justificación del asesor legal.
        Examples: OUTPUT
            |         Estado         |                 Fecha                    |    Observaciones registradas   |
            | estado actual del caso | última modificación hecha por el revisor | justificación del asesor legal |

    Scenario Outline: E2 - Subsanar solicitud de activación 
        Given que una observación requiere subsanación, 
        When adjunto la información solicitada, 
        Then el sistema registra la respuesta 
        And notifica al asesor.

        # Input:
        # - Evidencia corregida: Nuevo archivo digital PDF escaneado en alta resolución.
        # - Acción: Clic en el botón “Enviar subsanación”
        Examples: INPUT
            |  Evidencia corregida  |          Acción            |
            | archivo PDF escaneado | botón “Enviar subsanación” |

        # Output:
        # - Registro de respuesta: Reemplazo del archivo dañado por el nuevo documento valido en el repositorio en la nube.
        # - Estado modificado: Transición del estado en la base de datos.
        # - Alerta al asesor: Envió automático de notificación interna al modulo del abogado revisor asignado al expediente.
        Examples: OUTPUT
            |              Registro de respuesta              |   Estado modificado   |               Alerta al asesor                 |
            | Reemplazo de archivo dañado por el nuevo valido | Transición del estado | notificación al abogado asignado al expediente |

