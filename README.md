# BE Talent Monorepo
*Este repositório contém os aplicativos desenvolvidos para o desafio proposto para vaga de Desenvolvedor Flutter na Be Talent*

## Demo

## Sumário


### Sobre o Projeto
Este projeto foi desenvolvido com a última versão do Flutter e Dart (3.29/3.7) disponíveis no momento de sua criação.
Aproveitando as novidades da versão, criei o projeto em um monorepo para utilizar as novas funcionalidades de workspace nativas do dart, veja um detalhe **aqui**.
Criei um package *design_system*, contendo as definições de cores, tipografia, componentes e demais definições que estavam presentes no arquivo de *Figma* disponibilizado.
Dentro da pasta `apps`, há um app de exemplo, neste é possível visualizar todos os componentes disponíveis no `design_system`. E o app `be_talent` que é o aplicativo principal proposto.

Neste, utilizei a nova arquitetura proposta pelo time do Google para o Flutter, o *App Architecture*, baseado em uma arquitetura **MVVM**, onde tenho a chamada da função na **View** para a **ViewModel (Cubit)** e este solicita o **Repository** que solicita o serviço externo (**Service**).

Utilizei uma estratégia de *Flavors* para executar o app em modo `dev` e `prod`, e também a estrutura de *Feature First*.

Utilizei **Cubit** para gerenciar o estado, como é uma aplicação simples, não houve necessidade de aplicar a verbosidade do BLoC.

Realizei o teste unitário (com o **Mockito**) de toda a aplicação, garantindo e cobrindo os cenários de sucesso e falhas. Com isso consegui na aplicação um **coverage de 99%**.

### Clonando o Repositório
Para clonar o repositório no seu computador, basta executar o comando no seu terminal:

```unix
git clone https://github.com/steniooliv/be_talent
```

### Baixando as Dependências
Como o recurso de *Workspaces* do dart está com um problema para carregar no bundle os assets de outro projeto (**Issue**), criei um arquivo de script que vai baixar as dependências de todos os projetos, basta executar no terminal:

```unix
./script.sh
```
Isso vai executar o comando `flutter pub get` em todas as subpastas que contém o arquivo `pubspec.yaml`, você também pode fazer isso manualmente se preferir.

### Executando os Projetos
Neste passo eu suponho que você já utilize o Flutter e tenha um emulador instalado ou um dispositivo físico instalado no seu computador, caso nao tenha, siga o **Get Started** no site do Flutter.

Abra o pasta do repositório no seu **VSCode**, nele na barra lateral, em Executar e Debugar (**Run and Debug**), você verá 4 opções de execução.

![alt text](image.png)

Aqui é possível executar o app **Be Talent** e o app de exemplos do Design System, o **Design System Example**.

Depois de selecionar e executar, você verá o app ser instalado e iniciado no seu dispositivo, assim como é possível ver na sessão de demonstração, no início desse arquivo.


### Melhorias e Ajustes Futuros
Nem tudo está perfeito, e sempre há meios de melhorar nossa implementações, e para este projeto a principal melhoria e ajuste futuro são relacionadas a ajustes do próprio Flutter.

A primeira como mencionei é no tratamento dos workspaces, com isso em repositórios monorepo, ficará mais fácil gerenciar as dependências dos projetos em qualquer lugar, assim ao executar o comando `flutter pub get` em qualquer lugar, ele irá verificar a baixar todas as dependências para uma única pasta na raiz do repositório, onde ficará o seu arquivo `pubspec.yaml` principal.
Para acompanhar a issue, acesse o link [aqui]('https://github.com/flutter/flutter/issues/160142').

Outra melhoria se deve ao gerenciamento das fontes, há um problema com o peso (*weight*) das fontes nativas do iOS.
O iOS tem como fonte principal a *Helvética*, a mesma utilizada para este projeto. Com isso tive um problema que o peso da fonte não era aplicado no iOS, mas funcionava perfeitamente no Android. Depois de muitas tentativas consegui observar que era um problema com o iOS, que nao aceitava o peso da fonte, com isso abri uma issue no repositório do Flutter, e descobri que ocorre também com fontes nativas em Chinês e Japonês. Fortalecendo o que havia notado.
Fiz uma ajuste para reconhecer a fonte, alterando seu nome na importação do assets, forçando o sistema reconhecer como uma fonte diferente e assim carregar meu asset corretamente. Para acompanhar também, pode acessar o link [aqui]('https://github.com/flutter/flutter/issues/163699')

