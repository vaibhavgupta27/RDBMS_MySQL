#Stored Procedure
use classicmodels;
delimiter $$
create procedure list_name(inout name_list varchar(4000))
begin
	declare is_done integer default 0;
	declare e_name varchar(100) default "";
	declare emp_cursor cursor for 
	select firstName from employees;
	declare continue handler for not found set is_done = 1;
	open emp_cursor;
	get_list: Loop
	fetch emp_cursor into e_name;
	if is_done = 1 then 
		leave get_list;
	end if;
	set name_list = concat(e_name,";",name_list);
end Loop get_list;
close emp_cursor;
end$$


