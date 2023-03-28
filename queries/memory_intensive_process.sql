SELECT
    pid as 'Process ID',
    name as 'Process Name',
    CAST (ROUND((resident_size * 0.0000010), 0) as int) AS 'Private Memory (M)',
    CAST (ROUND((total_size * 0.0000010), 0) as int) AS 'Virtual Memory (M)'
FROM
    processes
ORDER BY
    total_size DESC
LIMIT
    10;