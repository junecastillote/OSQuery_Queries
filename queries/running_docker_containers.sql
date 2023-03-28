SELECT
    SUBSTRING(id, 1, 12) as id,
    name,
    pid,
    status,
    command
FROM
    docker_containers;