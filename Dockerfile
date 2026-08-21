# SKAPP image: official lean Superset plus MySQL (and Postgres) drivers.
# Railway start commands still own the process (web / worker / beat).
FROM apache/superset:6.1.0

USER root

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      pkg-config \
      libmariadb-dev \
      gcc \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/* \
 && uv pip install --python /app/.venv/bin/python --no-cache \
      mysqlclient \
      mysql-connector-python \
      psycopg2-binary \
 && /app/.venv/bin/python -c "import MySQLdb, mysql.connector, psycopg2; print('drivers ok')"

USER superset
