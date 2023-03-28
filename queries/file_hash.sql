SELECT
    path,
    md5,
    sha1,
    sha256
FROM
    hash
WHERE
    path = '/etc/sudoers'
    or path = '/etc/passwd';