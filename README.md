# gil-auto

# test-cucumber

<p align="center">
  <a href="https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html">Robot Framework Documentation</a> |
  <a href="https://rainmanwy.github.io/robotframework-SikuliLibrary/doc/SikuliLibrary.html">Sikuli Library</a> |
  <a href="https://www.oracle.com/br/java/technologies/downloads/">JDK Download</a>
</p>

Este projeto visa criar fluxo de automação para o sistema GIL. Neste projeto é utlizado o Framework Robot, o JDK e a biblioteca Sikuli.

## Installing

### Python Install

Primeiramente, verifique se o Python está instalado executando o seguinte comando:
```bash
python --version
```

Caso o Python não estiver instalado, siga as instruções abaixo para instalá-lo via terminal. Baixe o instalador do Python usando curl (se você estiver usando PowerShell):
```bash
curl -o python-installer.exe https://www.python.org/ftp/python/3.11.5/python-3.11.5-amd64.exe
```
Ao final do processo, confira a instalação:
```bash
python --version
pip --version
```

### SDK Install

O SikuliX requer Java para funcionar. Instale o Java Development Kit (JDK) via terminal.
```bash
url -o jdk-installer.exe https://download.oracle.com/java/17/latest/jdk-17_windows-x64_bin.exe
```

Verifique sua instalação:
```bash
java -version
```

Você também pode instalar o JDK visualmente através do site oficial. O link está o cabeçalho desta documentação.

### Robot Framework Install

Instale o Robot Framework usando o pip:
```bash
pip install robotframework
```

Verifique a instalação do Robot Framework:
```bash
robot --version
```

### SikuliLibrary for Robot Framework

A biblioteca SikuliLibrary permite que o Robot Framework utilize a API do SikuliX. Instale a SikuliLibrary via pip:
```bash
pip install robotframework-SikuliLibrary
```

Verifique a instalação da biblioteca:
```bash
pip show robotframework-SikuliLibrary
```

## Project Settings

Agora que você tem o Robot Framework e o SikuliLibrary instalados, você pode configurar seu projeto.

Crie uma pasta para o projeto:
```bash
robot --version
```

Crie um arquivo de teste .robot básico. Você pode usar um editor de texto como o Notepad para editar o arquivo ou criar diretamente via terminal:
```bash
notepad teste_automacao.robot
```

No arquivo teste_automacao.robot, adicione o seguinte conteúdo de exemplo:
```bash
*** Settings ***
Library    SikuliLibrary    C:/SikuliX/sikulixapi-2.0.5.jar

*** Test Cases ***
Teste de Clique
    Open Application    notepad.exe
    Click Image    caminho_para_imagem.png
```

## Project Structure

:file_folder: gil-auto
```text
├ app
├ logs
├ resources
| ├ elements
| └ base.robot
| sikuli_captured
├ tests
├ .gitignore
├ log.html
├ output.xml
├ README.md
└ report.html
```
