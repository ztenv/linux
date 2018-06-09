--------------------------------------------------------------------
--AUTH_INFO表增加AUTH_DATA_TYPE字段 0-普通密码 1-国密密码
declare
  num number;
begin
  select count(*) into num from user_tab_cols where TABLE_NAME = 'AUTH_INFO' and COLUMN_NAME = 'AUTH_DATA_TYPE';
  if num = 0 then 
    execute immediate ('ALTER TABLE AUTH_INFO ADD AUTH_DATA_TYPE CHAR(1) DEFAULT ''0'' NOT NULL ');
    execute immediate ('COMMENT ON COLUMN AUTH_INFO.AUTH_DATA_TYPE IS ''密文加密类型'' ');
  end if;
end;
/

COMMIT;