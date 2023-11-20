
# Desafio Técnico 1

Implemente uma função que receba um número inteiro positivo e retorne o somatório de todos os valores
inteiros divisíveis por 3 ou 5 que sejam inferiores ao número passado.






## Tecnologias
**Git & GitHub**

**Dart**

**Docker**


## Uso com GitHub (Ubuntu/Debian)
1) Instalação do git:
```bash
sudo apt update

sudo apt upgrade

sudo apt install git
```
2) Instalação do dart:
```bash
sudo apt-get update

sudo apt-get install apt-transport-https

wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/dart.gpg

echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' | sudo tee /etc/apt/sources.list.d/dart_stable.list

sudo apt-get update

sudo apt-get install dart
```
3) Baixar o repositório do git em sua máquina:

```bash
git clone https://github.com/mateuspit/technicalChallengeDart.git
```

4) A função requisitada está no arquivo: `lib/sum_three_and_five_multiples_until.dart`
5) Para utilizá-la você pode importá-la:
```dart
import 'package:cli/sum_three_and_five_multiples_until.dart';
```
6) Exemplo de utilização após importá-la:

```dart
int input = 10;

sumThreeAndFiveMultiplesUntil(input);
```
Importante lembrar que para mostrar o resultado no console é necessario utilizar alguma função com este objetivo, como `print('${sumThreeAndFiveMultiplesUntil(input)}');`, para o caso acima.

7) Executando o código Dart:
```bash
dart run
```

8.1) Testes automatizados da função:
```bash
dart test
```

8.2) Testes automatizados da função de forma mais interessante:
```bash
dart test/application_test.dart
```

#### Screenshots

![Inicio](https://i.imgur.com/X8bemD5.png)
![Sucesso](https://i.imgur.com/79GGR7Z.png)


## Uso com Docker (Ubuntu/Debian)

1) Instalação do Docker:
```bash
for pkg in docker.io docker-doc docker-compose docker-compose-v2 podman-docker containerd runc; do sudo apt-get remove $pkg; done

sudo apt-get update

sudo apt-get install ca-certificates curl gnupg

sudo install -m 0755 -d /etc/apt/keyrings

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

sudo chmod a+r /etc/apt/keyrings/docker.gpg

echo \
  "deb [arch="$(dpkg --print-architecture)" signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  "$(. /etc/os-release && echo "$VERSION_CODENAME")" stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
```

2) Verificar instalação do Docker:
```bash
sudo docker run hello-world
```

3) Baixar a imagem `matezao/technical-challenge-dart-barcelos` do Docker Hub:
```bash
docker pull matezao/technical-challenge-dart-barcelos:latest
```

4) Verificar se a imagem foi baixada: 
```bash
docker images
```

5) Montar a imagem e executar o programa
```bash
docker run -it matezao/technical-challenge-dart-barcelos:latest
```

#### Screenshots

![App Screenshot](https://i.imgur.com/KZqNaiz.png)
![App Screenshot](https://i.imgur.com/d9BxvFn.png)

## Aplicação

Foi criado um arquivo chamado `cli.dart` para usar a função implementada em Dart. Neste arquivo, é solicitado ao usuário que insira uma entrada, com tratamento de erros incorporado.
## Testes automatizados

Ao criar o projeto usando o comando `dart create -t console cli`, são gerados automaticamente arquivos nativos para testes. Esses testes estão localizados em `test/application_test.dart` e podem ser executados individualmente com o comando `dart test/application_test.dart` ou em geral com `dart test`.

#### Possíveis erros

1. A entrada recebida não é um número!
2. O número recebido não é positivo!
3. Overflow no número de entrada!
4. Overflow durante a soma!

#### Screenshots

![App Screenshot](https://i.imgur.com/kQimm40.png)

## Observações

Na aplicação, removi a opção para que o usuário execute testes, uma vez que o CLI Dart incorpora nativamente testes automatizados, os quais foram conduzidos.

É importante notar que, quando a string fornecida representa um número, a entrada é convertida para o tipo `number`.

A introdução de constantes foi realizada para evitar o uso de "magic numbers" e "magic strings".

Este foi meu primeiro contato com Dart. Observo que Dart possui tipagem estática, ao contrário do JavaScript. Dart é orientado a objetos, enquanto JavaScript é multiparadigma. Dart utiliza o `pub` em vez do `npm` como gerenciador de pacotes. Essas foram algumas diferenças que percebi, mas, de maneira geral aparentemente, uma das grandes vantagens do Dart em relação ao JavaScript/TypeScript é a utilização do framework Flutter, possibilitando o desenvolvimento multiplataforma para iOS, Android e web.
## Referências

- [Instalação do GIT](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git)
- [Instalação/guia do Dart](https://dart.dev/guides)
- [Instalação do Docker](https://docs.docker.com/engine/install/ubuntu/)
- [Guia Markdown](https://www.markdownguide.org/)
## Repositórios

- [GitHub](https://github.com/mateuspit/technicalChallengeDart)
- [DockerHub](https://hub.docker.com/repository/docker/matezao/technical-challenge-dart-barcelos/general)
## Desafio técnico em JavaScript

- [GitHub](https://github.com/mateuspit/technicalChallengeJS)
## Autor

- [@Mateus Barcelos](https://www.github.com/mateuspit)

Qualquer dúvidas: mateuspit@gmail.com ou pelo whastapp: [+55 61 98144 1074](https://api.whatsapp.com/send?phone=5561981441074&text=Oi%20Vi%20seu%20codigo%20no%20GitHub%20e...).
