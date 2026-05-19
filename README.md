# postgres-cron-templates

Automatize tarefas repetitivas no PostgreSQL sem depender 
de ferramentas pagas ou infraestrutura complexa.

## Problema que resolve

Muitas empresas têm rotinas críticas rodando manualmente:
fechamento de caixa, apuração de metas, geração de relatórios.
Isso significa alguém abrindo terminal todo dia, toda semana,
sem log, sem rastreabilidade, sem aviso quando falha.

Esses templates resolvem isso com shell + cron nativos do Linux,
sem dependência externa, prontos pra usar em produção.

## O que tem aqui

- Template genérico de job SQL agendado
- Exemplo real de apuração automatizada
- Logs automáticos com data e status
- Boas práticas de segurança (sem credenciais no código)

## Tecnologias

PostgreSQL · Shell Script · Cron · Linux

## Resultado prático

Processos que antes exigiam execução manual diária
passam a rodar automaticamente, com log de auditoria
e notificação em caso de falha.
