# EP-06 Solicitud de activacion post mortem
# US-31 Proteccion de evidencia presentada
Feature: Proteccion de evidencia presentada
    Como heredero, 
    quiero que la evidencia que adjunto durante la solicitud de activación se mantenga protegida, 
    para preservar la confidencialidad de la información presentada. 

    Scenario: E1 - Almacenamiento seguro y restringido 
        Given que adjunto evidencia durante una solicitud de activación, 
        When el archivo se transmite y almacena en la plataforma, 
        Then el sistema protege la información mediante una conexión cifrada 
        And restringe su consulta a perfiles autorizados.

        # Input:
        # - Archivo enviado: Archivo adjuntado por el heredero solicitante.
        Examples: INPUT
          | Archivo enviado   |
          | Archivo adjuntado |

        # Output:
        # - Cifrado de datos: Protocolo de seguridad HTTPS activo durante todo el viaje de los paquetes de red.
        # - Seguridad en reposo: Archivo guardado en el servidor con encriptación criptográfica algorítmica.
        # - Restricción: Acceso denegado a cualquier petición publica y visualización permitida únicamente a tokens con rol de “Asesor legal”
        Examples: OUTPUT
          | Cifrado de datos              | Seguridad en reposo      | Restricción           |
          | Protocolo de seguridad activo | Archivo con encriptación | acceso “Asesor legal” |

    Scenario: E2 - Registro de acceso a evidencia 
        Given que un perfil autorizado abre la evidencia presentada, 
        When accede al archivo, 
        Then el sistema registra la fecha, el usuario y la acción realizada.

        # Input:
        # - Petición de lectura: Clic de un asesor legal autenticado para abrir el archivo adjunto.
        Examples: INPUT
          |                 Petición de lectura                    |
          | asesor legal autenticado para abrir el archivo adjunto |

        # Output:
        # - Log de auditoria: Nueva línea inalterable escrita de forma automática en la bitácora de seguridad
        Examples: OUTPUT
          |             Log de auditoria              |
          | linea inalterable escrita automaticamente |
