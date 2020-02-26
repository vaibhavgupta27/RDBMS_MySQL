delimiter $$

create trigger before_datacenter_insert
before insert
on datacenter for each row
begin
	declare rowcount int;
	select count(*) into rowcount
	from datacenterstats;

	if rowcount > 0 then
		update datacenterstats
		set totalcapacity = totalcapacity + new.capacity;
	else
		insert into datacenterstats(totalcapacity)
		values(new.capacity);
	end if;
end $$

delimiter ;
