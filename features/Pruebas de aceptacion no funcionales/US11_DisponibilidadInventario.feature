# EP-01 Gestion del inventario patrimonial
# US-11 Disponibilidad del inventario patrimonial
Feature: Disponibilidad del inventario patrimonial
    Como persona con bienes, 
    quiero acceder a mi inventario patrimonial cuando lo necesite, 
    para consultar y gestionar mi información de manera oportuna. 

    Scenario: E1 - Cumplimiento de disponibilidad mensual 
        Given que finaliza un mes de operación de la plataforma, 
        When se calcula la disponibilidad del inventario patrimonial, 
        Then el servicio alcanza como mínimo un 99.5 % de disponibilidad en el entorno productivo.

        # Input:
        # - Uptime del servidor: Registros continuos de pings de estado.
        Examples: INPUT
            |             Uptime del servidor           |
            |   Registros continuos de pings de estado. |

        # Output:
        # - Métrica de disponibilidad: Indicador de porcentaje total mensual.
        Examples: OUTPUT
            |         Métrica de disponibilidad         |
            |   Indicador de porcentaje total mensual   |

    Scenario: E2 - Registro de incidente exitoso 
        Given que se detecta una interrupción del servicio, 
        When el sistema registra el incidente, 
        Then conserva la fecha, la duración y el servicio afectado.

        # Input:
        # - Detección de caída: Alerta de inactividad disparada automáticamente ante la caída de un servidor web.
        Examples: INPUT
            |               Detección de caída                  |
            | Alerta de inactividad ante la caída del servidor  |

        # Output:
        # 1- Registro de incidente (Log): Nueva fila añadida de manera automática al historial inalterable de fallas técnicas.
        Examples: OUTPUT
            |        Registro de incidente        |
            | falla tecnica agregada al historial |
