# 📑 Análise Consolidada: Direitos Humanos (Disque 100)

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Profile-blue?style=flat-square&logo=linkedin)](https://www.linkedin.com/in/sthefanycaf/)

## 📝 Visão Geral
Este projeto consiste na estruturação, tratamento e visualização de uma base massiva de dados (mais de **16 milhões de registros**) referentes a denúncias de violações de Direitos Humanos no Brasil. O objetivo foi transformar dados brutos e volumosos em um dashboard estratégico para análise de padrões de violência, perfis de vítimas e suspeitos.

## 📂 Fonte dos Dados
Os dados utilizados nesta análise são públicos e foram extraídos do Portal Brasileiro de Dados Abertos:
*   **Link oficial:** [https://dados.gov.br/dados/conjuntos-dados](https://dados.gov.br/dados/conjuntos-dados)

> **Nota:** Devido ao limite de tamanho de arquivos do GitHub (100MB), as bases de dados brutas e refinadas (pastas 01 e 02), bem como o arquivo `.pbix` do Power BI (pasta 05), não estão disponíveis integralmente neste repositório devido ao seu grande volume. O foco deste portfólio está nos scripts de engenharia, pacotes de ETL e no resultado visual demonstrado pelas capturas de tela.

## 🛠️ Stack Tecnológica
*   **Banco de Dados:** SQL Server (Engenharia de dados, otimização e manutenção).
*   **ETL:** SQL Server Integration Services (SSIS).
*   **Visualização:** Power BI (Design de dashboards, DAX, Figma para UI).
*   **Documentação:** Markdown (Dicionário de dados técnico).

## 🏗️ Arquitetura e Engenharia de Dados
Lidar com 16 milhões de linhas exigiu técnicas avançadas de gerenciamento e tratamento de dados:

*   **Processo de ETL (SSIS):** 
    *   Extração de grandes volumes de dados brutos e automação da carga para o SQL Server.
    *   Limpeza e saneamento de valores nulos e colunas em branco para garantir a integridade das métricas.
    *   **Conversão de Dados:** Tipagem otimizada para `VARCHAR` e `INT` visando ganho de performance no processamento.
    *   **Transformação:** Conversão de formatos de data e hora e extração de atributos específicos a partir de colunas complexas.
      
*   **Performance em SQL Server:** 
    *   Implementação de compressão de dados (**ROW COMPRESSION**) reduzindo o consumo de HD em até 50%.
    *   Manutenção de Big Data: Gerenciamento de memória RAM via limpeza de cache (**Buffer Pool**) e recuperação de espaço via **SHRINKDATABASE**.
       
*   **Modelagem no Power BI:** 
    *   Criação de medidas em **DAX** para análise de tendências e indicadores de violação.
    *   Layout estruturado com foco em UX/UI, utilizando modelos gráficos desenvolvidos no **Figma**.
*   **Dicionário de Dados:** Documentação detalhada de **66 colunas** para garantir a governança da estrutura.

## 📊 Dashboard (5 Páginas)

### 1. Informações Gerais
Visão macro dos registros, volumes anuais e canais de atendimento.
![Informações Gerais](./06_ASSETS/1%20-%20Informações%20Gerais.png)

### 2. Dados Gerais
Exploração dos tipos de violação e cenários onde os fatos ocorrem.
![Dados Gerais](./06_ASSETS/2%20-%20Dados%20Gerais.png)

### 3. Dados da Vítima
Análise demográfica detalhada: gênero, raça, escolaridade e grupos vulneráveis.
![Dados Vítima](./06_ASSETS/3%20-%20Dados%20Vítima.png)

### 4. Dados do Suspeito
Perfil do agressor e vínculos com a vítima para entender dinâmicas de violência.
![Dados Suspeito](./06_ASSETS/4%20-%20Dados%20Suspeito.png)

### 5. Localização
Mapeamento geográfico das denúncias por UF, renda, escolaridade e tipos de doença rara.
![Localizações](./06_ASSETS/5%20-%20Localizações.png)

## 📁 Estrutura do Repositório
*   `03_SCRIPTS_SQL`: Queries de limpeza, conversão e comandos de manutenção.
*   `04_SSIS_ETL`: Pacotes de integração e automação do fluxo de dados.
*   `06_ASSETS`: Imagens e ícones utilizados no design do dashboard.
*   `DICIONARIO_DE_DADOS.md`: Documentação técnica das colunas.

## ✉️ Contato
Conecte-se comigo no [LinkedIn](https://www.linkedin.com/in/sthefanycaf/) para discutirmos sobre análise e engenharia de dados.
