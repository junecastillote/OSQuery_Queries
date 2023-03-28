SELECT
    path,
    ROUND(('10e-10' * blocks_available * blocks_size), 1) AS 'free (GB)',
    ROUND(
        100 - (blocks_available * 1.0 / blocks * 1.0) * 100,
        1
    ) AS 'used %',
    device,
    type
FROM
    mounts
WHERE
    device like '/dev/sd%1'
    or path = '/';