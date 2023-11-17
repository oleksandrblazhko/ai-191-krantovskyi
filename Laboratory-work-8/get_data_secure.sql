create or replace function get_data_secure(auto_name varchar)

returns table(auto_id integer, name varchar, year varchar, access integer)

as $$

declare
	query1 varchar;
begin
	query1:= 'select * from hotel where name = $1';
	raise notice 'Query = %', query1;
	return query execute query1 using auto_name;
end;
$$ language plpgsql;
