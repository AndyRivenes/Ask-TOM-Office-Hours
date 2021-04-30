set serveroutput on;
declare
  v_sql varchar2(100);
  v_cnt number;
begin
  for i in 1 .. 10 loop
    v_sql := 'select count(*) from &tab ';
    execute immediate v_sql into v_cnt;
    dbms_output.put_line(v_cnt);
  end loop;
end;
/
undefine tab;


