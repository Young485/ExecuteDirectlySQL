select top 1000 
  ROW_NUMBER() OVER (ORDER BY a.object_id) AS No,  
  a.name AS ����, 
  isnull(g.[value],'-') AS ˵��
from 
  sys.tables a left join sys.extended_properties g 
  on (a.object_id = g.major_id AND g.minor_id = 0)