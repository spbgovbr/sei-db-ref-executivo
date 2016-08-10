/*
SCRIPT DE LIMPEZA DE DADOS DA BASE DE DADOS DO SIP - SEI 2.6.0 (ORACLE)
*/

connect sip@sip

/* Reconstrui as tabelas de log e auditoria e as sequences correspondentes */

truncate table infra_auditoria;
truncate table infra_log;
 
declare
  l_val number;
Begin
   execute immediate 'select seq_infra_auditoria.nextval from dual' INTO l_val;
   execute immediate 'alter sequence seq_infra_auditoria increment by -' || l_val || ' minvalue 0';
   execute immediate 'select seq_infra_auditoria.nextval from dual' INTO l_val;
   execute immediate 'alter sequence seq_infra_auditoria increment by 1 minvalue 0';

   execute immediate 'select seq_infra_log.nextval from dual' INTO l_val;
   execute immediate 'alter sequence seq_infra_log increment by -' || l_val || ' minvalue 0';
   execute immediate 'select seq_infra_log.nextval from dual' INTO l_val;
   execute immediate 'alter sequence seq_infra_log increment by 1 minvalue 0';
end;

truncate login;
/********************************************************************************************************************************************************/



