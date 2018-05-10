SELECT
  a.column_id AS No,
  a.name AS ����,
  isnull(g.[value],'-') AS ˵��
FROM
  sys.columns a left join sys.extended_properties g
 on (a.object_id = g.major_id AND g.minor_id = a.column_id)
WHERE
  object_id =
    (SELECT object_id FROM sys.tables WHERE name = 'TFE_FormType')