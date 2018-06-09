--------------------------------------------------------------------
--AUTH_INFO������AUTH_DATA_TYPE�ֶ� 0-��ͨ���� 1-��������
declare
  num number;
begin
  select count(*) into num from user_tab_cols where TABLE_NAME = 'AUTH_INFO' and COLUMN_NAME = 'AUTH_DATA_TYPE';
  if num = 0 then 
    execute immediate ('ALTER TABLE AUTH_INFO ADD AUTH_DATA_TYPE CHAR(1) DEFAULT ''0'' NOT NULL ');
    execute immediate ('COMMENT ON COLUMN AUTH_INFO.AUTH_DATA_TYPE IS ''���ļ�������'' ');
  end if;
end;
/

COMMIT;