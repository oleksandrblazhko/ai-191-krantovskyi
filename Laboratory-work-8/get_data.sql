create or replace function get_data(auto_name varchar)

RETURNS TABLE(name varchar, year integer)

AS $$

declare
	query1 varchar;
begin
	query1:= 'SELECT name, year FROM auto WHERE name = ''' || auto_name || '''';
	raise notice 'Query=%', query1;
	return query execute query1;
end;
$$ LANGUAGE plpgsql;
