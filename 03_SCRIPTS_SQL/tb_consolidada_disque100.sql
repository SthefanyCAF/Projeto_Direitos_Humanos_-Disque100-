USE [Projeto_Direitos_Humanos];
GO

CREATE TABLE [dbo].[tb_consolidada_disque100] (
    [id_registro]                                   INT IDENTITY(1,1) PRIMARY KEY, 
    [ano_referencia]                                INT,
    [hash]                                          NVARCHAR(255), 
    [Data_de_cadastro]                              DATETIME2, 
    
    -- Informações da Denúncia
    [Canal_de_atendimento]                          NVARCHAR(255),
    [Denúncia_emergencial]                          NVARCHAR(255),
    [Denunciante]                                   NVARCHAR(255),
    [Cenário_da_violação]                           NVARCHAR(500),
    [País]                                          NVARCHAR(255),
    [UF]                                            NVARCHAR(255),
    [Município]                                     NVARCHAR(255),
    [Frequência]                                    NVARCHAR(255),
    [Início_das_violações]                          NVARCHAR(255),
    
    -- Dados da Vítima
    [sl_quantidade_vitimas]                         NVARCHAR(255),
    [Grupo_vulnerável]                              NVARCHAR(255),
    [Motivação]                                     NVARCHAR(500),
    [Relação_vítima_suspeito]                       NVARCHAR(500),
    [sl_vitima_cadastro]                            NVARCHAR(255),
    [Gênero_da_vítima]                              NVARCHAR(255),
    [Orientação_sexual_da_vítima]                   NVARCHAR(255),
    [Faixa_etária_da_vítima]                        NVARCHAR(255),
    [Nacionalidade_da_vítima]                       NVARCHAR(255),
    [sl_vitima_naturalidade]                        NVARCHAR(255),
    [sl_vitima_naturalizado_uf]                     NVARCHAR(255),
    [sl_vitima_naturalizado_municipio]              NVARCHAR(255),
    [Deficiência_da_vítima]                         NVARCHAR(255),
    [Doença_rara_da_vítima]                         NVARCHAR(500),
    [Deficiência_relacionada_a_doença_rara]         NVARCHAR(255),
    [Vítima_preso_a]                                NVARCHAR(255),
    [País_da_vítima]                                NVARCHAR(255),
    [UF_da_vítima]                                  NVARCHAR(255),
    [Município_da_vítima]                           NVARCHAR(255),
    [Profissão_da_vítima]                           NVARCHAR(255),
    [Grau_de_instrução_da_vítima]                   NVARCHAR(255),
    [Religião_da_vítima]                            NVARCHAR(255),
    [Raça_Cor_da_vítima]                            NVARCHAR(255),
    [Etnia_da_vítima]                               NVARCHAR(255),
    [Faixa_de_renda_da_vítima]                      NVARCHAR(255),
    
    -- Dados do Suspeito
    [Natureza_Jurídica_do_Suspeito]                 NVARCHAR(255),
    [Gênero_do_suspeito]                            NVARCHAR(255),
    [Orientação_sexual_do_suspeito]                 NVARCHAR(255),
    [Faixa_etária_do_suspeito]                      NVARCHAR(255),
    [Suspeito_nacionalidade]                        NVARCHAR(255),
    [sl_suspeito_naturalidade]                      NVARCHAR(255),
    [sl_suspeito_naturalizado_uf]                   NVARCHAR(255),
    [sl_suspeito_naturalizado_municipio]            NVARCHAR(255),
    [Deficiência_do_suspeito]                       NVARCHAR(255),
    [Doença_rara_do_suspeito]                       NVARCHAR(1000),
    [Deficiência_relacionada_a_doença_rara_suspeito]NVARCHAR(255),
    [Suspeito_preso]                                NVARCHAR(255),
    [País_do_suspeito]                              NVARCHAR(255),
    [UF_do_suspeito]                                NVARCHAR(255),
    [sl_suspeito_municipio]                         NVARCHAR(255),
    [Profissão_do_suspeito]                         NVARCHAR(255),
    [Grau_de_instrução_do_suspeito]                 NVARCHAR(255),
    [Religião_do_suspeito]                          NVARCHAR(255),
    [Raça_Cor_do_suspeito]                          NVARCHAR(255),
    [Suspeito_Etnia]                                NVARCHAR(255),
    [Faixa_de_renda_do_suspeito]                    NVARCHAR(255),
    [Vínculo_Órgão_PJ_do_suspeito]                  NVARCHAR(255),
    [sl_suspeito_ramo]                              NVARCHAR(255),
    
    -- Detalhamentos Finais
    [suspeito_especificacao_etnia]                  NVARCHAR(255),
    [vitima_especificacao_etnia]                    NVARCHAR(255),
    [violacao]                                      NVARCHAR(1000)
);
GO