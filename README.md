**Automating NDD Print Agent Deployment via PowerShell & Intune**

📝 Project Description
This project features an automation script developed to solve the challenge of installing and configuring the NDD Print monitoring agent at scale.

In Enterprise environments, manual configuration of .ini files and individual agent installations are slow processes prone to human error. This solution enables silent deployment and standardization of network settings via Microsoft Intune or SCCM.

🛠️ Technologies Used
PowerShell: Installation logic and file manipulation.

Microsoft Intune / SCCM: Orchestration and endpoint deployment.

MSI Technology: Silent (unattended) installation.

🚀 Features
Full Logging: Generates detailed logs in C:\Windows\Temp to facilitate remote troubleshooting.

Idempotency: Verifies directory existence before creation, preventing errors during re-executions.

Automated Configuration: Deploys a sanitized nddprint.ini file, ensuring the agent points to the correct monitoring server immediately after installation.

📦 How to Use
Clone this repository.

Add the .msi installer and the .ini file (configured with your environment's network addresses) to the same folder as the script.

Package it as a .intunewin (if using Intune) or run Install-NDDPrint.ps1 with Administrator privileges.
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
**Portuguese Version**

📝 Descrição do Projeto
Este projeto apresenta um script de automação desenvolvido para resolver o desafio de instalar e configurar o agente de monitoramento de impressão NDD Print em larga escala.

Em ambientes Enterprise, a configuração manual de arquivos .ini e a instalação individual de agentes são processos lentos e sujeitos a falhas humanas. Esta solução permite o deploy silencioso e a padronização das configurações de rede via Microsoft Intune ou SCCM.

🛠️ Tecnologias Utilizadas
PowerShell: Lógica de instalação e manipulação de arquivos.

Microsoft Intune / SCCM: Orquestração e deploy em endpoints.

MSI Technology: Instalação silenciosa (unattended).

🚀 Funcionalidades
Logging Completo: Gera logs detalhados em C:\Windows\Temp para facilitar o troubleshooting remoto.

Idempotência: Verifica a existência de diretórios antes da criação, evitando erros em re-execuções.

Configuração Automática: Realiza o deploy do arquivo nddprint.ini sanitizado, garantindo que o agente aponte para o servidor de monitoramento correto imediatamente após a instalação.

📦 How to Use / Como utilizar
Clone this repository / Clone este repositório.

Add the .msi installer and the .ini file to the same folder / Adicione o instalador .msi e o arquivo .ini na mesma pasta.

Run Install-NDDPrint.ps1 as Administrator / Execute o script como Administrador.
