# Automating NDD Print Agent Deployment with PowerShell and Intune

## Overview
PowerShell script that automates the silent installation and configuration of the NDD Print monitoring agent, used to track printing on machines with USB-connected printers. The script was tested in a pilot group of about 10 machines before a wider rollout.

## Technologies
- PowerShell: installation logic and file handling
- Microsoft Intune: deployment to endpoints
- MSI: silent (unattended) installation

## Features
- **Logging:** detailed logs in `C:\Windows\Temp` for remote troubleshooting.
- **Directory check:** verifies that the target folder exists before creating it.
- **Automated configuration:** copies a sanitized `nddprint.ini` so the agent points to the monitoring server after install. Replace the placeholders with your own environment values.

## How to use
1. Clone this repository.
2. Put the `.msi` installer and the `.ini` file (with your own addresses) in the same folder as the script.
3. Run `Install-NDDPrint.ps1` as Administrator, or package it as `.intunewin` to deploy with Intune.

## Known limitations / next steps
- Return the MSI exit code to Intune so failed installs are reported correctly.
- Add a check for an already installed agent before reinstalling.

> No company data is included in this repository.

---

# Versão em Português

## Visão geral
Script em PowerShell que automatiza a instalação silenciosa e a configuração do agente de monitoramento NDD Print, usado para acompanhar a impressão em máquinas com impressoras USB. O script foi testado em um grupo-piloto de cerca de 10 máquinas antes de um deploy mais amplo.

## Tecnologias
- PowerShell: lógica de instalação e manipulação de arquivos
- Microsoft Intune: deploy nos endpoints
- MSI: instalação silenciosa

## Funcionalidades
- **Logs:** gera logs detalhados em `C:\Windows\Temp` para troubleshooting remoto.
- **Verificação de diretório:** confere se a pasta de destino existe antes de criá-la.
- **Configuração automática:** copia um `nddprint.ini` sanitizado para o agente apontar ao servidor de monitoramento após a instalação. Troque os valores de exemplo pelos do seu ambiente.

## Como usar
1. Clone este repositório.
2. Coloque o instalador `.msi` e o arquivo `.ini` (com seus endereços) na mesma pasta do script.
3. Execute `Install-NDDPrint.ps1` como Administrador, ou empacote como `.intunewin` para usar no Intune.

## Limitações e próximos passos
- Devolver o código de saída do MSI ao Intune, para falhas de instalação serem reportadas.
- Verificar se o agente já está instalado antes de reinstalar.

> Este repositório não contém dados de nenhuma empresa.
