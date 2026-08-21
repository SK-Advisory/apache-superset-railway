# Apache Superset (SKAPP)

Custom image for SKAPP on Railway. Built on `apache/superset:6.1.0` with
MySQL and Postgres drivers baked in so they survive redeploys.

Connect **Superset**, **Superset-Worker**, and **Superset-Beat** to this
repository. Keep the existing Railway start commands; this image does not
replace the entrypoint.

MySQL 8/9 (`caching_sha2_password`): if `mysql://` fails, use
`mysql+mysqlconnector://`.
