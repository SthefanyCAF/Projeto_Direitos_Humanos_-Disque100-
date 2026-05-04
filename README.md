📑 Análise Consolidada: Direitos Humanos (Disque 100)
📝 Visão Geral
Este projeto consiste na estruturação, tratamento e visualização de uma base massiva de dados (mais de 16 milhões de registros) referentes a denúncias de violações de Direitos Humanos no Brasil. O objetivo foi transformar dados brutos e volumosos em um dashboard estratégico para análise de padrões de violência, perfis de vítimas e suspeitos.

📂 Fonte dos Dados
Os dados utilizados nesta análise são públicos e foram extraídos do Portal Brasileiro de Dados Abertos:

Link oficial: https://dados.gov.br/dados/conjuntos-dados

Nota: Devido ao limite de tamanho de arquivos do GitHub (100MB), as bases de dados brutas e refinadas (pastas 01 e 02) não estão disponíveis integralmente neste repositório. O foco deste portfólio está nos scripts de engenharia, pacotes de ETL e no resultado visual do dashboard.

🛠️ Stack Tecnológica
Banco de Dados: SQL Server (Engenharia de dados, otimização e manutenção).

ETL: SQL Server Integration Services (SSIS).

Visualização: Power BI (Design de dashboards, DAX, Figma para UI).

Documentação: Markdown (Dicionário de dados técnico).

🏗️ Arquitetura e Engenharia de Dados
Lidar com 16 milhões de linhas exigiu técnicas avançadas de gerenciamento de banco de dados:

Padronização Técnica: Reestruturação física da tabela para um modelo consolidado com 66 colunas, utilizando tipos de dados otimizados (INT, VARCHAR).

Otimização de Performance: Implementação de compressão de dados (ROW COMPRESSION) para reduzir o consumo de HD em até 50%.

Manutenção de Big Data: Gerenciamento de memória RAM, limpeza de cache (Buffer Pool) e atualização de estatísticas para garantir consultas rápidas.

Dicionário de Dados: Documentação detalhada para garantir a governança e entendimento da estrutura.

📊 Dashboard (5 Páginas)
1. Informações Gerais
Visão macro dos registros, volumes anuais e canais de atendimento.(Referência: image_660429.png)

2. Dados Gerais
Exploração dos tipos de violação e cenários onde os fatos ocorrem.(Referência: image_660429.png)

3. Dados da Vítima
Análise demográfica detalhada: gênero, raça, escolaridade e grupos vulneráveis.(Referência: image_660429.png)

4. Dados do Suspeito
Perfil do agressor e vínculos com a vítima para entender dinâmicas de violência.(Referência: image_660429.png)

5. Localização
Mapeamento geográfico das denúncias por UF e Município.(Referência: image_660429.png)

📁 Estrutura do Repositório
01_DATA_BASE_ORIGEM: Metadados da origem.

02_DATA_BASE_REFINADOS: Documentação do processo de limpeza.

03_SCRIPTS_SQL: Queries de criação, migração e otimização.

04_SSIS_ETL: Pacotes de integração.

05_PBI_DASHBOARD: Arquivo .pbix e templates.

06_ASSETS: Imagens e ícones utilizados no design.

DICIONARIO_DE_DADOS.md: Documentação técnica das colunas.

✉️ Contato
Conecte-se comigo no [LinkedIn](https://www.linkedin.com/in/sthefanycaf/) para discutirmos sobre análise e engenharia de dados.
