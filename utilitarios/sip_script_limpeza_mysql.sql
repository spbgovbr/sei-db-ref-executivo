/*
SCRIPT DE LIMPEZA DE DADOS DA BASE DE DADOS DO SIP - SEI 2.6.0 (MySQL)
*/

/* Reconstrui as tabelas de log e auditoria e tabelas sequenciais correspondentes */
truncate table infra_auditoria;
exec reset_seq('sei.seq_infra_auditoria');

truncate table infra_log;
exec reset_seq('sei.seq_infra_log');

/********************************************************************************************************************************************************/