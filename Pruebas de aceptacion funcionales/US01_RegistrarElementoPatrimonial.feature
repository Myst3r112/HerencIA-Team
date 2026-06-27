Feature: Registrar elemento patrimonial
    Como persona con bienes
    Quiero registrar un elemento patrimonial indicando su tipo, datos principales y valor estimado
    Para disponer de una visión financiera real de mis activos y planificar mi sucesión

    Scenario: E1 - Registro exitoso de diferentes tipos de activos patrimoniales
        Given que la persona con bienes inicia el registro de un nuevo activo
        When completa el campo "[Tipo_Activo]", ingresa la "[Descripcion]", y el "[Valor_Estimado]"
        And hace clic en el botón de guardar
        Then el sistema incorpora el elemento al inventario exitosamente
        And el resumen financiero se actualiza con el nuevo "[Valor_Estimado]"  

        Input:
            Tipo de elemento patrimonial: Inmueble, Vehículo, Obra de arte, Acciones, Otros.
            Datos Principales / Descripcion: Direccion, Marca y modelo, etc.
            Valor estimado: Monto en moneda local.

        Output:
            Elemento registrado exitosamente en la base de datos del inventario
            Resumen financiero actualizado con el nuevo valor agregado

    Scenario: E2 - Error en registro por dejar campos obligatorios vacíos
        Given que la persona con bienes se encuentra en el formulario de registro de activo
        When intenta guardar la información dejando el campo "[Tipo_Activo]" y "[Valor_Estimado]" vacíos
        Then el sistema muestra un mensaje de error "Los campos marcados con (*) son obligatorios"
        And el sistema no registra la información en la base de datos

        Input:
            Tipo de activo: Vacio / Null
            Valor estimado: Vacio / Null
            Accion: Clic en el boton "[Guardar]"
        
        Output:
            Mensaje de error en pantalla: "Los campos marcados con (*) son obligatorios"
            Operacion denegada, no se crea el registro


