# 📂 Dicionário de Dados - Projeto Direitos Humanos (Disque 100)

Este documento detalha a estrutura técnica, a convenção de nomenclatura e a integridade da base de dados consolidada do Disque 100.

## 📊 Resumo do Dataset
* **Total de Registros:** 16.298.614
* **Total de Colunas:** 66
* **Última Auditoria de Integridade:** 20/04/2026 (100% Limpo)

---

## 🏷️ Legenda de Prefixos (Convenção de Nomenclatura)

* **`id_` (Identificador):** Chave primária ou código único.
* **`tp_` (Tipo):** Variável categórica para classificação.
* **`ds_` (Descrição):** Campos de texto informativo ou descritivo.
* **`st_` (Status):** Indicadores binários ou de situação (Sim/Não).
* **`nr_` (Número):** Valores numéricos inteiros.
* **`dt_` (Data):** Datas cronológicas.
* **`hr_` (Hora):** Registro de horário.

---

## 📑 Estrutura Técnica das Colunas

### 1. Identificação e Temporalidade
| Coluna | Tipo | Descrição |
| :--- | :--- | :--- |
| `id_registro` | INT | Identificador exclusivo da denúncia. |
| `nr_ano_registro` | INT | Ano do registro (Ex: 2024). |
| `nr_mes_registro` | INT | Mês do registro (1 a 12). |
| `nr_dia_registro` | INT | Dia do registro (1 a 31). |
| `hr_registro` | TIME | Horário exato do registro. |
| `ds_hash` | VARCHAR | Código hash de integridade. |
| `dt_inicio_violacoes` | DATE | Data de início relatada das violações. |

### 2. Informações do Fato (Ocorrência)
| Coluna | Tipo | Descrição |
| :--- | :--- | :--- |
| `tp_violacao` | VARCHAR | Tipo principal da violação. |
| `ds_canal_atendimento` | VARCHAR | Canal de entrada (Telefone, App, etc). |
| `st_emergencial` | VARCHAR | Indica se é emergência (SIM/NÃO). |
| `tp_denunciante` | VARCHAR | Classificação de quem denunciou. |
| `ds_cenario_violacao` | VARCHAR | Local/Cenário onde ocorreu o fato. |
| `pais_fato` | VARCHAR | País da ocorrência. |
| `uf_fato` | VARCHAR | Estado da ocorrência (Sigla). |
| `municipio_fato` | VARCHAR | Município da ocorrência. |
| `ds_frequencia_violacao`| VARCHAR | Periodicidade da violação. |
| `ds_motivacao` | VARCHAR | Suposta motivação do crime. |
| `ds_vinculo_vitima_suspeito` | VARCHAR | Relação entre as partes. |

### 3. Entidade: Vítima
| Coluna | Tipo | Descrição |
| :--- | :--- | :--- |
| `qtde_vitimas` | INT | Total de vítimas no registro. |
| `vitima_id_cadastro` | INT | ID interno de cadastro da vítima. |
| `vitima_grupo_vulneravel`| VARCHAR | Grupo de vulnerabilidade (Ex: Idoso). |
| `vitima_genero` | VARCHAR | Gênero da vítima. |
| `vitima_orientacao_sexual`| VARCHAR | Orientação sexual da vítima. |
| `vitima_faixa_etaria` | VARCHAR | Idade ou faixa etária. |
| `vitima_raca` | VARCHAR | Raça/Cor da vítima. |
| `vitima_escolaridade` | VARCHAR | Nível de instrução. |
| `vitima_uf` | VARCHAR | UF de residência da vítima. |
| `vitima_municipio` | VARCHAR | Município de residência da vítima. |
| `vitima_profissao` | VARCHAR | Ocupação da vítima. |
| `vitima_renda` | VARCHAR | Faixa de rendimentos. |
| `vitima_deficiencia` | VARCHAR | Possui deficiência. |
| `vitima_doenca_rara` | VARCHAR | Possui doença rara. |
| `st_vitima_preso` | VARCHAR | Vítima em privação de liberdade. |
| `vitima_etnia_detalhe` | VARCHAR | Detalhamento de etnia específica. |

### 4. Entidade: Suspeito
| Coluna | Tipo | Descrição |
| :--- | :--- | :--- |
| `suspeito_genero` | VARCHAR | Gênero do suspeito. |
| `suspeito_raca` | VARCHAR | Raça/Cor do suspeito. |
| `suspeito_faixa_etaria` | VARCHAR | Faixa etária do suspeito. |
| `suspeito_escolaridade` | VARCHAR | Nível de instrução. |
| `st_suspeito_preso` | VARCHAR | Suspeito em privação de liberdade. |
| `suspeito_natureza_juridica`| VARCHAR | Tipo de entidade (se PJ). |
| `suspeito_vinculo_pj` | VARCHAR | Nome da instituição vinculada. |
| `suspeito_ramo_atividade`| VARCHAR | Área de atuação do suspeito. |
| `suspeito_uf` | VARCHAR | UF de residência do suspeito. |
| `suspeito_municipio` | VARCHAR | Município do suspeito. |

---
## ⚡ Notas de Manutenção
Tabela otimizada com `REBUILD` e `UPDATE STATISTICS` para garantir alta performance em consultas analíticas sobre o volume de **16.298.614** registros. Todos os campos de texto foram padronizados como **VARCHAR** para otimização de armazenamento.