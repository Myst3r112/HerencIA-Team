# EP-01 Gestion del inventario patrimonial
# US-12 Consulta rapida del patrimonio
Feature: Consulta rapida del patrimonio
    Como persona con bienes, 
    quiero que el listado de mis bienes cargue rápidamente, 
    para revisar mi información sin demoras innecesarias. 

    Scenario: E1 - Tiempo de respuesta exitoso     
        Given que existen bienes registrados en el inventario,  
        When cuando consulto el listado, aplico filtros o abro el resumen patrimonial   , 
        Then entonces al menos el 95 % de las consultas responde en un máximo de 3 segundos en condiciones normales de operación.

        # Input:  
        # - Acción de consulta: Evento disparado por el usuario al interactuar con las tablas.
        Examples: INPUT
            |          Acción de consulta           |
            | Evento por interactuar con las tablas |

        # Output: 
        # - Datos renderizados: Lista de información completamente pintada en la pantalla del navegador.
        # - Tiempo medido: Tiempo total de respuesta de red y pintado del DOM.    
        Examples: OUTPUT
            |         Datos renderizados       |     Tiempo medido    |
            | Lista de información en pantalla | Tiempo de respuesta  |

    Scenario: E2 - Visualización de indicador de carga     
        Given que una consulta todavía se encuentra en proceso,     
        When espero la respuesta del sistema,   
        Then la interfaz muestra un indicador de carga hasta presentar el resultado.    

        # Input:  
        # - Tiempo de espera excedido: Latencia en la base de datos que tarda mas de 500ms en responder la solicitud.
        Examples: INPUT
            |               Tiempo de espera excedido                |
            | Latencia en la base de datos en responder la solicitud |

        # Output: 
        # - Indicador visual: Renderizado de una animación de carga interactiva en la interfaz.
        Examples: OUTPUT
            |              Indicador visual                 |
            | animación de carga interactiva en la interfaz |
