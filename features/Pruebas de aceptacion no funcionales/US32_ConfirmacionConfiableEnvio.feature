# EP-06 Solicitud de activacion post mortem
# US-32 Confirmacion confiable del envio
Feature:  Confirmacion confiable del envio
    Como heredero, 
    quiero recibir una confirmación después de enviar mi solicitud de activación, 
    para saber que la plataforma registró correctamente mi trámite.
    
    Scenario: E1 - Generación de número de seguimiento 
        Given que completo los datos obligatorios 
        And adjunto la evidencia requerida, 
        When envío la solicitud de activación, 
        Then el sistema genera un número de seguimiento 
        And conserva la fecha de registro.

        Input:
        - Envió de formulario: Acción de confirmación definitiva con todos los campos llenos

        Output:
        - Número de seguimiento: Código numérico autogenerado único
        - Fecha de registro: Atributo temporal guardado internamente

    Scenario: E2 - Persistencia del estado del trámite 
        Given que envié una solicitud correctamente,
        When cierro sesión 
        And vuelvo a ingresar, 
        Then el sistema mantiene disponible el número de seguimiento 
        And el estado inicial del trámite.

        Input:
        - Re-autenticacion: El usuario inicia sesión de nuevo en la aplicación web tras haber cerrado la sesión o apagado su computadora.
        - Acción de consulta: Navegación hacia el panel personal de tramites.

        Output:
        - Estado recuperado: El sistema consulta la base de datos persistente y renderiza el tramite con los datos exactos del envió original

