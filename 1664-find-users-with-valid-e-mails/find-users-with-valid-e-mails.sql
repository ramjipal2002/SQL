SELECT user_id, name, mail
FROM Users
WHERE mail COLLATE Latin1_General_CS_AS LIKE '[A-Za-z]%@leetcode.com'
  AND RIGHT(mail, 13) COLLATE Latin1_General_CS_AS = '@leetcode.com'
  AND PATINDEX(
        '%[^A-Za-z0-9_.-]%',
        LEFT(mail, LEN(mail) - 13)
      ) = 0;