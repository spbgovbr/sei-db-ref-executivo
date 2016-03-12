/*
SCRIPT DE LIMPEZA DE PROCESSOS E DOCUMENTOS DA BASE DE DADOS DO SEI 2.6.0 (MySQL)
*/

use sei;

/* Limpeza de tabelas afetas a Protocolo de Processos, de Documentos Gerados e Externos */

truncate table anexo;
truncate table seq_anexo;

truncate table numeracao;
truncate table seq_numeracao;

truncate table acesso;
truncate table seq_acesso;

truncate table acesso_externo;
truncate table seq_acesso_externo;

truncate table acompanhamento;
truncate table seq_acompanhamento;

truncate table andamento_situacao;
truncate table seq_andamento_situacao;

truncate table anotacao;
truncate table seq_anotacao;

truncate table assinatura;
truncate table seq_assinatura;

truncate table estatisticas;
truncate table seq_estatisticas;

truncate table indexacao_base_conhecimento;

truncate table indexacao_protocolo;

truncate table indexacao_publicacao;

truncate table versao_secao_documento;
truncate table seq_versao_secao_documento;

truncate table secao_documento;
truncate table seq_secao_documento;

truncate table atributo_andamento;
truncate table seq_atributo_andamento;

truncate table retorno_programado;
truncate table seq_retorno_programado;

truncate table acesso_externo;
truncate table seq_acesso_externo;

truncate table participante;
truncate table seq_participante;

truncate table observacao;
truncate table seq_observacao;

truncate table rel_protocolo_assunto;

truncate table rel_protocolo_protocolo;
truncate table seq_rel_protocolo_protocolo;

truncate table publicacao;
truncate table seq_publicacao;

truncate table rel_bloco_protocolo;

truncate table rel_bloco_unidade;

truncate table protocolo_modelo;
truncate table seq_protocolo_modelo;

truncate table unidade_publicacao;
truncate table seq_unidade_publicacao;

truncate table serie_publicacao;
truncate table seq_serie_publicacao;

--truncate table texto_padrao;

truncate table rel_protocolo_atributo;

truncate table feed;
truncate table seq_feed;

truncate table velocidade_transferencia;

truncate table atributo_andamento_situacao;

truncate table auditoria_protocolo;
truncate table seq_auditoria_protocolo;

truncate table rel_notificacao_documento;

truncate table estatisticas;
truncate table seq_estatisticas;

truncate table atributo_andamento;
truncate table seq_atributo_andamento;

truncate table notificacao;
truncate table seq_notificacao;

truncate table bloco;
truncate table seq_bloco;

truncate table atividade;
truncate table seq_atividade;

truncate table documento;
truncate table seq_documento;

truncate table procedimento;

truncate table protocolo;
truncate table seq_protocolo;

/* Reconstrui as tabelas de log e auditoria e tabelas sequenciais correspondentes */
truncate table infra_auditoria;
truncate table seq_infra_auditoria;

truncate table infra_log;
truncate table seq_infra_log;

truncate table infra_navegador;
truncate table seq_infra_navegador;

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