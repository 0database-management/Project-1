SELECT
    calls,
    round(total_exec_time::numeric, 2) AS total_ms,
    round(mean_exec_time::numeric, 2) AS mean_ms,
    rows,
    query
FROM pg_stat_statements
ORDER BY mean_exec_time DESC
LIMIT 10;