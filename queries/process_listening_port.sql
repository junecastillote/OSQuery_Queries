SELECT
    listening_ports.pid as processid,
    processes.name as processname,
    users.username,
    listening_ports.port,
    listening_ports.address
FROM
    listening_ports
    JOIN processes ON listening_ports.pid = processes.pid
    JOIN users ON processes.uid = users.uid
LIMIT
    5;