# Base de Dados de Referência do SEI para uso no Poder Executivo Federal

Este projeto consiste em bases de dados do sistema SEI pré-configuradas para agilizar o processo de implantação e configuração em instituições do Poder Executivo Federal.

## CONFIGURAÇÕES

Entre as configurações presentes nesta base, estão:

* Máscara para o Número Único de Protocolo (NUP) no padrão para o Poder Executivo Federal.
* Plano de Classificação, Temporalidade e Destinação de Documentos de Arquivo Relativos às Atividades-Meio da Administração Pública, conforme Portaria nº 47, de fevereiro de 2020, do Arquivo Nacional.
* 39 Estilos, com estaque para estilos com numeração e renumeração automática de itens e de parágrafos.
* 318 Tipos de Processos comuns das Atividades-Meio.
* 254 Tipos de Documentos comuns das Atividades-Meio, considerados de uso comum por todos os órgãos. Ainda, os Modelos de vários Tipos de Documentos utilizam os Estilos com numeração e renumeração automática de itens e de parágrafos.
* 23 Hipóteses Legais de restrição de acesso de uso comum por todos os órgãos.
* 20 Extensões de Arquivos Permitidas em conformidade com o e-PING.
* 6 Tipos de Prioridade previstas em Lei.
* Boletim de Serviço Eletrônico configurado e com os tipos de documentos que exigem publicação oficial já parametrizados, além dos feriados federais (precisa atualizar os Feriados depois que instalar).
* Listas de Municípios e de Países atualizada.
* Tarjas de Assinatura e de Autenticação de documentos atualizadas com citação aos respectivos normativos.


## Chaves de Acesso

A partir da versão 4.0.0, é necessário a configuração de chaves de acesso para o SEI e SIP. Estas chaves devem ser adicionadas nos arquivos de configuração do SEI (_ConfiguracaoSEI.php - [SessaoSEI->ChaveAcesso]_) e do SIP (_ConfiguracaoSip.php - [SessaoSip->ChaveAcesso]_), conforme descrito manual de instalação do sistema.

Para a base padrão disponibilizada junto com os fontes usar o valor disponível nesta chave no arquivo _/opt/sip/config/ConfiguracaoSip.php.exemplo_

### ATENÇÃO: NUNCA UTILIZE A CHAVE DE ACESSO DA BASE PADRÃO EM PRODUÇÃO, CONFORME DESCRITO NO MANUAL DE INSTALAÇÃO DO SEI

Logo após efetuar o primeiro login como Administrador do SIP:

1) Acessar o menu Sistemas/Listar;
2) Executar a ação “Gerar Chave de Acesso” para o sistema SIP;
3) Atualizar o arquivo de configuração com o novo valor.


## DOWNLOAD

O download das bases de dados pode ser encontrado na seção Releases deste projeto no GitHub.
Acesse o link https://github.com/spbgovbr/sei-db-ref-executivo/releases

**[DOWNLOAD PACOTE DE INSTALAÇÃO/ATUALIZAÇÃO](https://github.com/spbgovbr/sei-db-ref-executivo/releases)**


## PROJETOS RELACIONADOS

O projeto sei-db-ref-executivo trata-se de pré-configurações nas bases de dados do SEI para agilizar o processo de implantação e configuração do sistema no contexto do Poder Executivo Federal.
Para a sua utilização, é necessário que a instituição possua o sistema SEI.

Para informações sobre como aderir ao SEI, acesse:
http://processoeletronico.gov.br/index.php/assuntos/produtos/sistema-eletronico-de-informacoes


## CONTRIBUIÇÃO

Existem diversas formas de colaborar neste projeto:

* Enviar registros de erros ou solicitação de melhorias ([Issues](https://github.com/spbgovbr/sei-db-ref-executivo/issues))
* Revisar a documentação do projeto e enviar qualquer tipo de contribuição via [Pull Request](https://github.com/spbgovbr/sei-db-ref-executivo/pulls)
* Ajudar na correção de erros ou melhoria da base de código. Para isto, faça um fork do projeto no GitHub e posteriormente nos envie um [Pull Request](https://github.com/spbgovbr/sei-db-ref-executivo/pulls)


## DÚVIDAS E SUPORTE 

Em caso de dúvidas ou problemas durante o procedimento de atualização, favor acionar a Central de Atendimento do Processo Eletrônico Nacional por meio dos seguintes canais:

- Portal de Atendimento (PEN): Canal de Atendimento - Módulo do Barramento
- Telefone: 0800 978 9005

