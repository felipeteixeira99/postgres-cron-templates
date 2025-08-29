# 🚀 postgres-cron-templates

Templates e exemplos de automação de funções SQL no PostgreSQL via **shell + cron**.

---

## 📌 Objetivo
Este repositório contém **templates e exemplos de scripts em shell (`.sh`)** para execução automatizada de funções SQL no PostgreSQL, utilizando o **cron** do Linux.  

A ideia é servir como **guia e referência pública**, sem expor credenciais ou dados sensíveis.

---

## 🛠 Estrutura
```
scripts/
 ├── jobs_sql/
 │    ├── template_job.sh        # Modelo genérico
 │    └── exemplo_apuracao.sh    # Exemplo fictício
templates/                       # Outros modelos reutilizáveis
```

---

## ⚙️ Como usar
1. Copie o template:
   ```bash
   cp scripts/jobs_sql/template_job.sh scripts/jobs_sql/meu_job.sh
   ```

2. Edite variáveis principais:
   - Nome do log (`LOG_FILE`)
   - Usuário e banco (`USUARIO`, `BANCO`)
   - Função SQL:
     ```sql
     PERFORM MINHA_FUNCAO_AQUI();
     ```

3. Dê permissão:
   ```bash
   chmod +x scripts/jobs_sql/meu_job.sh
   ```

4. Teste manualmente:
   ```bash
   ./scripts/jobs_sql/meu_job.sh
   ```

5. Agende no cron:
   ```bash
   crontab -e
   ```
   Exemplo (todo dia às 02:30):
   ```
   30 2 * * * /caminho/para/meu_job.sh
   ```

---

## 📋 Boas práticas
- Sempre usar **caminho absoluto** do `psql`.  
- Nunca versionar **senhas, .pgpass ou credenciais**.  
- Logs devem estar em `.gitignore`.  

---

## 📜 Licença
Este projeto está sob a licença MIT – veja o arquivo [LICENSE](LICENSE) para mais detalhes.

---

✍️ Autor: **Felipe Teixeira Assunção**  
📅 Criado em: 2025-08-29

