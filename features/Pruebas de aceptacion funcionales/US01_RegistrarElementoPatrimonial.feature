# EP-01 Gestion del inventario patrimonial
# US-01 Registro de elemento patrimonial
Feature: Registro de elemento patrimonial
    Como persona con bienes, 
    quiero registrar un elemento patrimonial indicando su tipo, datos principales y valor estimado, 
    para disponer de una visión financiera real de mis activos y planificar mi sucesión con información confiable.

    Scenario: E1 - Registro exitoso 
        Given que inicio un registro, 
        When completo los campos obligatorios 
        And guardo, 
        Then el sistema incorpora el elemento al inventario. 
        # Input:
        # - Tipo de elemento: Selección en menú desplegable.
        # - Datos principales: Campo de texto libre.
        # - Valor estimado: Campo numérico monetario.
        Examples: INPUT
            |           Tipo de elemento        |   Datos principales   |       Valor estimado      |
            |   Selección en menú desplegable   | Campo de texto libre  | Campo numérico monetario  |
        
        # Output:
        # - Mensaje: Alerta flotante tipo Toast (“Elemento patrimonial registrado exitosamente”).
        # - Elemento registrado: Registro persistido en el inventario con ID único.
        # - Resumen financiero: Valor total recalculado en pantalla.
        Examples: OUTPUT
            |           Mensaje (Alerta flotante)           |               Elemento registrado                 |           Resumen financiero          |
            |“Elemento patrimonial registrado exitosamente” | Registro persistido en el inventario con ID único |   Valor total recalculado en pantalla |        

    Scenario: E2 - Error en registro 
        Given que ingreso un valor inválido o dejo un campo obligatorio vacío, 
        When intento guardar, 
        Then el sistema muestra el error 
        And no registra información incompleta.

        # Input:
        # - Tipo de elemento: Sin selección / vacío.
        # - Valor estimado: Caracteres no numéricos.
        # - Acción: Clic en el botón “Guardar”
        Examples: INPUT
            |   Tipo de elemento    |       Valor estimado      |           Acción           |
            | Sin selección / vacío | Caracteres no numéricos.  | Clic en el botón “Guardar” |

        # Output:
        # - Mensaje de error: Texto de validación debajo de los campos vacíos.
        # - Mensaje de formato: Texto de advertencia de tipo de dato (“Ingrese un monto numérico valido”).
        # - Estado: Bloqueo del envió a la base de datos.
        Examples: OUTPUT
            |               Mensaje de error                    |       Mensaje de formato            |                Estado                 |
            | Texto de validación debajo de los campos vacíos.  | “Ingrese un monto numérico valido”  | Bloqueo del envió a la base de datos. |
          
