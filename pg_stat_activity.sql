SELECT pg_sleep(20);



SELECT
    pid,
    usename,
    datname,
    state,
    wait_event_type,
    wait_event,
    now() - query_start AS duration,
    query
FROM pg_stat_activity
WHERE state <> 'idle'
ORDER BY duration DESC;
