# EP-01 Gestion del inventario patrimonial
# US-02 - Consultar y actualizar inventario consolidado
Feature: Consultar y actualizar inventario consolidado
    Como persona con bienes, 
    quiero consultar y actualizar mi inventario consolidado, 
    para mantener mis decisiones sucesorias basadas en información vigente. 

    Scenario: E1 - Consulta exitosa 
        Given que existen elementos registrados, 
        When abro el inventario, 
        Then visualizo bienes, deudas, seguros y otros activos con sus valores.

        Input:
        - Acción de navegación: Selección en el menú principal (Clic en la pensaña “Mi inventario”).

        Output:
        - Lista de activos: Tabla renderizada en la interfaz.
        - Valores monetarios: Visualización de montos individuales.
        - Monto total: Sumatoria neta del patrimonio visible.

    Scenario: E2 - Actualización de inventario 
        Given que selecciono un elemento, 
        When modifico sus datos 
        And confirmo, 
        Then el sistema conserva la nueva versión 
        And actualiza el resumen patrimonial.

        Input:
        - Selección de elemento: Clic sobre la fila del bien registrado.
        - Valor estimado modificado: Entrada numérica modificada.
        - Acción: Clic en el botón “Confirmar cambios”.

        Output:
        - Registro modificado: Sobreescritura del dato en la base de datos del usuario.
        - Mensaje: Alerta de actualización.
        - Resumen patrimonial actualizado: Recalculo del monto general en pantalla

