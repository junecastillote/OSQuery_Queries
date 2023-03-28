SELECT
    containers,
    containers_running as running,
    containers_paused as paused,
    containers_stopped as stopped
FROM
    docker_info;