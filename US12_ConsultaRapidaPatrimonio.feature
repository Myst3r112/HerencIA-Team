Feature: Consulta rápida del patrimonio
    Como persona con bienes
    Quiero que el listado de mis bienes cargue rápidamente
    Para revisar mi información sin demoras innecesarias

    Scenario: E1 - Tiempos de respuesta óptimos bajo condiciones normales
        Given que existen elementos registrados en el inventario del usuario
        When el usuario realiza la acción "<Accion_Usuario>"
        Then el sistema debe responder y renderizar los datos en un tiempo máximo de "<Tiempo_Maximo>"
    
        Examples:
            |   Accion_Usuario	                |   Tiempo_Maximo   |
            |   Cargar lista de 50 bienes	    |   3.0 segundos    |
            |   Aplicar filtro por "Inmueble"   |	2.0 segundos    |
            |   Abrir resumen estadístico	    |   3.0 segundos    |
