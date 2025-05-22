# Web Application Document - Projeto Individual - Módulo 2 - Inteli

**_Os trechos em itálico servem apenas como guia para o preenchimento da seção. Por esse motivo, não devem fazer parte da documentação final._**

## Nome do Projeto

Task organizor

#### Autor do projeto

Gabriel Brand Goldsztajn

## Sumário

1. [Introdução](#c1)
2. [Visão Geral da Aplicação Web](#c2)
3. [Projeto Técnico da Aplicação Web](#c3)
4. [Desenvolvimento da Aplicação Web](#c4)
5. [Referências](#c5)

<br>

## <a name="c1"></a>1. Introdução (Semana 01)

Este projeto tem como objetivo, o desenvolvimento de um sistema para gerenciamento de tarefas, voltado à organização pessoal e ao aumento da produtividade. A proposta consiste em criar uma ferramenta que permita ao usuário registrar, organizar e acompanhar suas atividades de forma prática e centralizada. O sistema vai ser estruturado para atender diferentes perfis de usuários, desde indivíduos que buscam organizar tarefas cotidianas até equipes que necessitam gerenciar fluxos de trabalho. Entre as principais funcionalidades, estão: criação e edição de tarefas, categorização por tipo ou prioridade, definição de prazos, lembretes e acompanhamento do status de execução. Além disso, o projeto contempla a implementação de uma interface intuitiva, que facilite a navegação e o uso do sistema mesmo por pessoas com pouca familiaridade com tecnologia. O objetivo é oferecer um ambiente funcional, que contribua para uma melhor visualização das atividades e permita uma administração mais eficiente do tempo. A proposta também inclui a possibilidade de sincronização com calendários externos e o uso de notificações para manter o usuário informado sobre prazos e pendências. Dessa forma, o sistema poderá ser utilizado tanto em dispositivos móveis quanto em computadores, garantindo maior acessibilidade e flexibilidade.

## <a name="c2"></a>2. Visão Geral da Aplicação Web

### 2.1. Personas (Semana 01)

Nome: Elysandro Filho

Idade: 27 anos

Ocupação: Apostador esportivo

Hábitos digitais: Usa o celular para acompanhar a rotina dos jogos e acessa diferentes sites de apostas a todo momento.

Necessidades: Ter acesso a internet em qualquer lugar e ter uma visão clara da rotina diária de jogos.

Dores: Não consegue lidar com dias de prejuízo e não tem tempo para família e amigos.

Solução: Para Elysandro, que vive uma rotina intensa e dinâmica no mundo das apostas esportivas, o sistema proposto será uma plataforma de gerenciamento pessoal adaptada ao estilo de vida do apostador. A ideia é integrar informações relevantes do universo das apostas com uma agenda pessoal inteligente, ajudando-o a organizar sua rotina, visualizar os jogos do dia e equilibrar melhor sua vida pessoal.

### 2.2. User Stories (Semana 01)

US01: Como usuário que precisa manter controle sobre minhas tarefas, quero definir prazos e receber lembretes automáticos, para que eu não perca os prazos e consiga concluir minhas atividades dentro do tempo previsto. 

US02: Como usuário que realiza diferentes tipos de atividades, quero categorizar minhas tarefas por tipo ou prioridade, para que eu possa visualizar e organizar melhor o que deve ser feito primeiro. 

US03: Como usuário que acompanha meu próprio progresso, quero visualizar o status das tarefas (pendente, em andamento, concluída), para que eu possa acompanhar o andamento das minhas atividades e manter minha organização atualizada.

## <a name="c3"></a>3. Projeto da Aplicação Web

### 3.1. Modelagem do banco de dados (Semana 3)

<div align="center">
    <small><strong style="font-size: 12px;">Banco de dados(Figura 1);</strong></small><br>
        <img src="/assets/foto_banco.png">
    <small style="margin-top: 4px; font-size: 10px;">Fonte: Material produzido pelos autores (2025)</small>
</div>

A tabela “users” armazena os dados dos usuários do aplicativo. Ela possui três atributos: 
ID, que é um identificador único gerado automaticamente (chave primária)
Nome, que armazena o nome do usuário com até 40 caracteres
CPF, que representa o Cadastro de Pessoa Física. 
Cada usuário pode estar associado a várias tarefas, o que caracteriza uma relação de um para muitos com a tabela tasks. Com isso, falta um campo de chave estrangeira em tasks que aponte para users. 

A tabela tasks guarda as tarefas dos usuários. Ela possui os atributos:
id (chave primária) 
Nome (nome da tarefa) 
Complemento (descrição detalhada da tarefa)
Prazo (data e hora limite)
Para representar corretamente os relacionamentos, seria necessário incluir os campos user_id (chave estrangeira para users.ID) e category_id (chave estrangeira para categories.id). Assim, cada tarefa pode ser relacionada a um usuário e a uma categoria. 

A tabela categories contém as categorias que podem ser atribuídas às tarefas, permitindo a organização por tipo. Ela tem dois atributos: 
id (chave primária) 
Categoria, que armazena o nome da categoria. 
No modelo atual, a tabela categories não está diretamente conectada à tabela tasks, e esse relacionamento precisaria ser adicionado por meio de uma chave estrangeira em tasks. Cada tarefa pertence a um único usuário e a uma única categoria.

  o modelo físico com o Schema do BD (arquivo .sql)
<a href="/scripts/Untitled.sql">Clique aqui</a>  (arquivo .sql)

### 3.1.1 BD e Models (Semana 5)

_Descreva aqui os Models implementados no sistema web_

### 3.2. Arquitetura (Semana 5)

_Posicione aqui o diagrama de arquitetura da sua solução de aplicação web. Atualize sempre que necessário._

**Instruções para criação do diagrama de arquitetura**

- **Model**: A camada que lida com a lógica de negócios e interage com o banco de dados.
- **View**: A camada responsável pela interface de usuário.
- **Controller**: A camada que recebe as requisições, processa as ações e atualiza o modelo e a visualização.

_Adicione as setas e explicações sobre como os dados fluem entre o Model, Controller e View._

### 3.3. Wireframes (Semana 03)

<div align="center">
    <small><strong style="font-size: 12px;">wireframe1(Figura 1);</strong></small><br>
        <img src="/assets/IMG_3928.jpeg">
    <small style="margin-top: 4px; font-size: 10px;">Fonte: Material produzido pelos autores (2025)</small>
</div>

Permite ao usuário visualizar tarefas com prazos indicados. O ícone de lembrete ao lado de cada tarefa mostra se o lembrete está ativo, atendendo à parte da User Story que trata de notificações automáticas.

<div align="center">
    <small><strong style="font-size: 12px;">wirefram2(Figura 1);</strong></small><br>
        <img src="/assets/IMG_3929.jpeg">
    <small style="margin-top: 4px; font-size: 10px;">Fonte: Material produzido pelos autores (2025)</small>
</div>

Esse desenho evidencia os campos de data, dando ao usuário, controle sobre quando será notificado. Isso garante que ele possa organizar suas atividades dentro do tempo previsto, exatamente como descrito na User Story.

### 3.4. Guia de estilos (Semana 05)

<img src="../projeto-prog---ux/assets/Screenshot 2025-05-22 084825.png">

### 3.5. Protótipo de alta fidelidade (Semana 05)

<img src="/assets/Desktop - 1.png">

### 3.6. WebAPI e endpoints (Semana 05)

_Utilize um link para outra página de documentação contendo a descrição completa de cada endpoint. Ou descreva aqui cada endpoint criado para seu sistema._

### 3.7 Interface e Navegação (Semana 07)

_Descreva e ilustre aqui o desenvolvimento do frontend do sistema web, explicando brevemente o que foi entregue em termos de código e sistema. Utilize prints de tela para ilustrar._

---

## <a name="c4"></a>4. Desenvolvimento da Aplicação Web (Semana 8)

### 4.1 Demonstração do Sistema Web (Semana 8)

_VIDEO: Insira o link do vídeo demonstrativo nesta seção_
_Descreva e ilustre aqui o desenvolvimento do sistema web completo, explicando brevemente o que foi entregue em termos de código e sistema. Utilize prints de tela para ilustrar._

### 4.2 Conclusões e Trabalhos Futuros (Semana 8)

_Indique pontos fortes e pontos a melhorar de maneira geral._
_Relacione também quaisquer outras ideias que você tenha para melhorias futuras._

## <a name="c5"></a>5. Referências

_Incluir as principais referências de seu projeto, para que seu parceiro possa consultar caso ele se interessar em aprofundar. Um exemplo de referência de livro e de site:_<br>

---

---
