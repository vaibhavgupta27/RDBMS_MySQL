#Listing procedures
select routine_name 
from information_schema.routines
where routine_type = "procedure"
  and routine_schema = "ajdb";
