#!/bin/bash
#########################################################################
# Nome: exemplo_apuracao.sh
# Autor: Felipe Teixeira Assunção
# Data: 2025-08-29
# Versão: 1.0
#########################################################################

DATA_EXEC=$(date '+%Y-%m-%d %H:%M:%S')
LOG_DIR="./logs/exemplo_apuracao"
LOG_FILE="$LOG_DIR/exemplo_apuracao.log"

PSQL="/usr/local/pgsql/bin/psql"
USUARIO="postgres"
BANCO="meu_banco_exemplo"

mkdir -p "$LOG_DIR"

echo "=====================================================" >> "$LOG_FILE"
echo "Execução iniciada em: $DATA_EXEC (usuário: $(whoami))" >> "$LOG_FILE"

$PSQL -h localhost -U $USUARIO -d $BANCO -c "DO \$\$
BEGIN
    -- Exemplo fictício
    PERFORM fn_exemplo_apuracao(date_trunc('month', current_date - interval '1 day')::date);
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
