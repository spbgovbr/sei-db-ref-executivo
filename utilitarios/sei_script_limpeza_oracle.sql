/*
SCRIPT DE LIMPEZA DE PROCESSOS E DOCUMENTOS DA BASE DE DADOS DO SEI 2.6.0 (ORACLE)
*/

/* Limpeza de tabelas afetas a Protocolo de Processos, de Documentos Gerados e Externos */

create or replace procedure reset_seq( p_seq_name in varchar2 )
is
l_val number;
begin
execute immediate 'select ' || p_seq_name || '.nextval from dual' INTO l_val;

execute immediate 'alter sequence ' || p_seq_name || ' increment by -' || l_val || ' minvalue 0';

execute immediate 'select ' || p_seq_name || '.nextval from dual' INTO l_val;

execute immediate 'alter sequence ' || p_seq_name || ' increment by 1 minvalue 0';
end;

truncate table anexo;
exec reset_seq('sei.seq_anexo');

truncate table numeracao;
exec reset_seq('sei.seq_numeracao');

truncate table acesso;
exec reset_seq('sei.seq_acesso');

truncate table acesso_externo;
exec reset_seq('sei.seq_acesso_externo');

truncate table acompanhamento;
exec reset_seq('sei.seq_acompanhamento');

truncate table andamento_situacao;
exec reset_seq('sei.seq_andamento_situacao');

truncate table anotacao;
exec reset_seq('sei.seq_anotacao');

truncate table assinatura;
exec reset_seq('sei.seq_assinatura');

truncate table estatisticas;
exec reset_seq('sei.seq_estatisticas');

truncate table indexacao_base_conhecimento;

truncate table indexacao_protocolo;

truncate table indexacao_publicacao;

truncate table versao_secao_documento;
exec reset_seq('sei.seq_versao_secao_documento');

truncate table secao_documento;
exec reset_seq('sei.seq_secao_documento');

truncate table atributo_andamento;
exec reset_seq('sei.seq_atributo_andamento');

truncate table retorno_programado;
exec reset_seq('sei.seq_retorno_programado');

truncate table acesso_externo;
exec reset_seq('sei.seq_acesso_externo');

truncate table participante;
exec reset_seq('sei.seq_participante');

truncate table observacao;
exec reset_seq('sei.seq_observacao');

truncate table rel_protocolo_assunto;

truncate table rel_protocolo_protocolo;
exec reset_seq('sei.seq_rel_protocolo_protocolo');

truncate table publicacao;
exec reset_seq('sei.seq_publicacao');

truncate table rel_bloco_protocolo;

truncate table rel_bloco_unidade;

truncate table protocolo_modelo;
exec reset_seq('sei.seq_protocolo_modelo');

truncate table unidade_publicacao;
exec reset_seq('sei.seq_unidade_publicacao');

truncate table serie_publicacao;
exec reset_seq('sei.seq_serie_publicacao');

--truncate table texto_padrao;

truncate table rel_protocolo_atributo;

truncate table feed;
exec reset_seq('sei.seq_feed');

truncate table velocidade_transferencia;

truncate table atributo_andamento_situacao;

truncate table auditoria_protocolo;
exec reset_seq('sei.seq_auditoria_protocolo');

truncate table rel_notificacao_documento;

truncate table estatisticas;
exec reset_seq('sei.seq_estatisticas');

truncate table atributo_andamento;
exec reset_seq('sei.seq_atributo_andamento');

truncate table notificacao;
exec reset_seq('sei.seq_notificacao');

truncate table bloco;
exec reset_seq('sei.seq_bloco');

truncate table atividade;
exec reset_seq('sei.seq_atividade');

truncate table documento;
exec reset_seq('sei.seq_documento');

truncate table procedimento;

truncate table protocolo;
exec reset_seq('sei.seq_protocolo');

/* Reconstrui as tabelas de log e auditoria e tabelas sequenciais correspondentes */
truncate table infra_auditoria;
exec reset_seq('sei.seq_infra_auditoria');

truncate table infra_log;
exec reset_seq('sei.seq_infra_log');

truncate table infra_navegador;
exec reset_seq('sei.seq_infra_navegador');

truncate table infra_dado_usuario;

/*
Sobre a última linha abaixo, a tabela de sequência anual de protocolo de processos pode ser qualquer um dos formatos abaixo (de acordo com a configuração da numeração de protocolo):

seq_[ano]_org_sip_[id sip]
seq_[ano]_org_sei_[cod sei]
seq_[ano]_uni_sip_[id sip]
seq_[ano]_uni_sei_[cod sei]

*/

delete from infra_sequencia where nome_tabela like 'seq_%_uni_sei_%';
delete from infra_sequencia where nome_tabela like 'seq_%_uni_sip_%';
delete from infra_sequencia where nome_tabela like 'seq_%_org_sei_%';
delete from infra_sequencia where nome_tabela like 'seq_%_org_sip_%';

update infra_sequencia set num_atual=0 where nome_tabela='infra_log';
update infra_sequencia set num_atual=0 where nome_tabela='infra_navegador';

/********************************************************************************************************************************************************/