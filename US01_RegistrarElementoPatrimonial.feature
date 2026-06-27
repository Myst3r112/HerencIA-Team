Feature: Registrar elemento patrimonial
    Como persona con bienes
    Quiero registrar un elemento patrimonial indicando su tipo, datos principales y valor estimado
    Para disponer de una visión financiera real de mis activos y planificar mi sucesión

    Scenario: E1 - Registro exitoso de diferentes tipos de activos patrimoniales
        Given que la persona con bienes inicia el registro de un nuevo activo
        When completa el campo "<Tipo_Activo>", ingresa la "<Descripcion>", y el "<Valor_Estimado>"
        And hace clic en el botón de guardar
        Then el sistema incorpora el elemento al inventario exitosamente
        And el resumen financiero se actualiza con el nuevo "<Valor_Estimado>"

        Examples:
            |   Tipo_Activo     |	Descripcion             |	Valor_Estimado  |
            |   Inmueble        |	Departamento en Surco   |	450000.00       |
            |   Cuenta Bancaria |	Cuenta Ahorros BCP      |	25000.00        |
            |   Vehículo        |	Toyota Corolla 2022     |	65000.00        |
            |   Seguro de Vida  |	Póliza Rimac Vida       |	100000.00       |

    Scenario: E2 - Error en registro por dejar campos obligatorios vacíos
        Given que la persona con bienes se encuentra en el formulario de registro de activo
        When intenta guardar la información dejando el campo "Tipo de Activo" y "Valor Estimado" vacíos
        Then el sistema muestra un mensaje de error "Los campos marcados con (*) son obligatorios"
        And el sistema no registra la información en la base de datos
