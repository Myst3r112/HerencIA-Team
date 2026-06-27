Feature: Carga rápida del panel patrimonial del heredero
  Como heredero
  Quiero que el panel cargue rápidamente o me muestre el estado del proceso
  Para no dudar si el sistema falló durante la carga

  Scenario: E1 - Visualización de indicador de carga (Skeleton Loader)
    Given que el heredero inicia sesión e ingresa al panel patrimonial liberado
    When la consulta a la base de datos supera los 500 milisegundos de espera
    Then la interfaz debe mostrar un indicador de carga animado (skeleton loader)
    And este indicador debe mantenerse hasta que los componentes terminen de renderizarse
