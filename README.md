# CHATBOT UGU - FACOM UFU
Chatbot para esclarecer dúvidas dos estudantes da FACOM UFU, principalmente de novatos.

## Requisitos para instalação (Ubuntu 22.04 Server)
Para disponibilização do chatbot será necessário um Ubuntu Server.

* Primeiro atualize o ubuntu
    * `sudo apt-get update && sudo apt-get -y upgrade`

* Em seguida instale as dependencias
    * `sudo apt-get install -y build-essential libssl-dev libffi-dev python3-dev`

* Do Python3, instale o virtual environment e o pip3:
    * `sudo apt-get install -y python3-pip python3-venv`

* Instale o git
    * `sudo apt-get install git`

## Clonando o repositório e preparando o ambiente
* Primeiro é necessário clonar o repositório do chatbot 
```
git clone https://github.com/mateusherrera/chatbot_facom_ugu.git
cd chatbot_facom_ugu
```

* Agora, na pasta do projeto, crie e ative o ambiente vitual
> Nota: 'my_venv' será o nome do seu ambeinte virtual.
```
python3 -m venv my_venv
source my_venv/bin/activate
```

* Em seguida, é necessário instalar as bibliotecas:
```
pip3 install -r requirements.txt
```

## Inserindo o Token do chatbot do Telegram
* Após gerar o Token do seu chatbot no Telegram, é necessário inserí-lo no código, dentro da pasta do repositório, digite:
> Nota: Vamos utilizar o nano.
```
sudo nano main.py
```

* Dentro do código, adicione o Token dentro das aspas em:
```
TOKEN_BOT = ''
```

* Salve e feche o arquivo.

## Iniciar a execução do chatbot
Agora, basta executar o arquivo `main.py` e ele já estará respondendo as requisições do Telegram =D.
