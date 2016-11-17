/*
SCRIPT DE LIMPEZA DE DADOS DA BASE DE DADOS DO - SEI 2.6.0 (MySQL)
*/

/* Reconstrui as tabelas de log e auditoria e tabelas sequenciais correspondentes */
truncate table infra_auditoria;
truncate table seq_infra_auditoria;

truncate table infra_log;
truncate table seq_infra_log;

truncate table login;

/********************************************************************************************************************************************************/