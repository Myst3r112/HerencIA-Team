Feature: Consultar y actualizar inventario consolidado
    Como persona con bienes
    Quiero consultar y actualizar mi inventario consolidado
    Para mantener mis decisiones sucesorias basadas en información vigente

    Scenario: E1 - Consulta exitosa del inventario
        Given que existen elementos patrimoniales registrados en la cuenta del usuario
        When el usuario abre la vista de inventario consolidado
        Then visualiza una lista agrupada de bienes, deudas, seguros y otros activos
        And el sistema muestra el valor total actualizado del patrimonio

    Scenario: E2 - Actualización exitosa del valor de un bien
        Given que el usuario selecciona el activo "Departamento en Surco" de su inventario
        When modifica el valor estimado de "450000.00" a "480000.00"
        And confirma la modificación
        Then el sistema conserva la nueva versión del activo
        And el resumen patrimonial recalcula el valor total automáticamente
