Feature: Disponibilidad del inventario patrimonial
    Como persona con bienes
    Quiero acceder a mi inventario patrimonial de manera ininterrumpida
    Para gestionar mi información de forma oportuna y confiable

    Scenario: E1 - Cumplimiento de métricas de disponibilidad (SLA)
        Given que ha finalizado el mes de operación del entorno productivo
        When el sistema de monitoreo calcula el uptime mensual
        Then el servicio debe reportar un mínimo de 99.5% de disponibilidad
        And los logs no deben registrar caídas del servicio mayores a 3.5 horas acumuladas
