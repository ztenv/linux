--------------------------------------------------------------------
--AUTH_INFO表增加AUTH_DATA_TYPE字段 0-普通密码 1-国密密码
declare @name86 varchar(60)
select @name86=b.name from syscolumns a,sysobjects b where a.id=object_id('AUTH_INFO') and b.id=a.cdefault and a.name='AUTH_DATA_TYPE' and b.name like 'DF%'
IF @name86 IS NULL PRINT 'Field No Constraint.' 
ELSE exec('alter table AUTH_INFO drop constraint '+@name86);

IF EXISTS(SELECT 1 FROM sysobjects a,syscolumns b WHERE a.id=b.id AND a.name='AUTH_INFO' AND b.name='AUTH_DATA_TYPE')
	ALTER TABLE AUTH_INFO DROP COLUMN AUTH_DATA_TYPE;
ALTER TABLE AUTH_INFO ADD AUTH_DATA_TYPE CHAR(1) NOT NULL DEFAULT '0';


GO