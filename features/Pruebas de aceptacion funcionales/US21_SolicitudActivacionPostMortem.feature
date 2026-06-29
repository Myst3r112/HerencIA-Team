# EP-06 Solicitud de activacion post mortem
# US-21 Crear solicitud de activacion post mortem
Feature: Crear solicitud de activacion post mortem
    Como heredero, 
    quiero crear una solicitud de activación y adjuntar la evidencia requerida del fallecimiento, 
    para iniciar formalmente la evaluación de acceso al expediente patrimonial. 

    Scenario: E1 - Solicitud exitosa 
        Given que completo los datos requeridos 
        And adjunto la evidencia admitida, 
        When envío la solicitud, 
        Then el sistema genera un número de seguimiento.

        Input:
        - DNI del titular: Campo de texto numérico de 8 dígitos.
        - Nombre del titular: Campo de texto alfabético.
        - Evidencia admitida: Archivo digital en formato PDF o JPG.
        - Acción: Clic en el botón “Enviar Solicitud de Activación”

        Output:
        - Número de seguimiento: Código correlativo autogenerado.
        - Mensaje: Ventana modal de éxito (“Solicitud enviada correctamente. Su código de seguimiento es ACT-2026-15798”).
        - Estado de tramite: Registro interno actualizado en la cola legal (El estado cambia a “En revisión Legal”).

    Scenario: E2 - Error en solicitud 
        Given que falta evidencia obligatoria, 
        When intento enviar la solicitud, 
        Then el sistema indica el requisito pendiente 
        And no inicia la revisión.

        Input:
        - DNI del titular: Campo de texto numérico.
        - Evidencia de fallecimiento: Campo vacío sin archivo seleccionado.
        - Acción: Clic en el botón “Enviar Solicitud”.

        Output:
        - Mensaje de error: Notificación de validación en pantalla (“Debe adjuntar el Acta de Defunción para proceder”).
        - Indicador visual: Recuadro de carga de documentos parpadea o se resalta con un borde de color rojo.
        - Estado: Bloqueo de creación del trámite.