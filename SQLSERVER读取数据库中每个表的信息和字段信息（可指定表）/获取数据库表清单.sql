select top 1000 
  ROW_NUMBER() OVER (ORDER BY a.object_id) AS No,  
  a.name AS 表名, 
  isnull(g.[value],'-') AS 说明
from 
  sys.tables a left join sys.extended_properties g 
  on (a.object_id = g.major_id AND g.minor_id = 0)