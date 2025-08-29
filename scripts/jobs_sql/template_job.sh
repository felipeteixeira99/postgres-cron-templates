#!/bin/bash
#########################################################################
# Nome: template_job.sh
# Autor: Felipe Teixeira Assunção
# Data: YYYY-MM-DD
# Versão: 1.0
#########################################################################

DATA_EXEC=$(date '+%Y-%m-%d %H:%M:%S')
LOG_DIR="./logs/template_job"
LOG_FILE="$LOG_DIR/template_job.log"

PSQL="/usr/local/pgsql/bin/psql"
USUARIO="postgres"
BANCO="meu_banco_exemplo"

mkdir -p "$LOG_DIR"

echo "=====================================================" >> "$LOG_FILE"
echo "Execução iniciada em: $DATA_EXEC (usuário: $(whoami))" >> "$LOG_FILE"

$PSQL -h localhost -U $USUARIO -d $BANCO -c "DO \$\$
BEGIN
    PERFORM FUNCAO_SQL_EXEMPLO();
END
\$\$;" >> "$LOG_FILE" 2>&1

RETORNO=$?
if [ $RETORNO -eq 0 ]; then
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] Execução concluída com sucesso." >> "$LOG_FILE"
else
  echo "[$(date '+%Y-%m-%d %H:%M:%S')] ERRO na execução! Código: $RETORNO" >> "$LOG_FILE"
fi

echo "=====================================================" >> "$LOG_FILE"
echo "" >> "$LOG_FILE"