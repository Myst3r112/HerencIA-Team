Feature: Protección de documentos sensibles
    Como persona con bienes
    Quiero que mis documentos patrimoniales se almacenen de forma segura
    Para evitar accesos de terceros no autorizados

    Scenario: E1 - Transmisión y almacenamiento con cifrado seguro
        Given que el usuario sube un título de propiedad en formato PDF
        When el archivo viaja desde el cliente hacia el servidor de HerencIA
        Then la transmisión se realiza estrictamente sobre el protocolo "HTTPS/TLS 1.3"
        And el archivo se almacena en el bucket S3 utilizando cifrado en reposo (AES-256)
