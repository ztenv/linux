#pragma once
#include <sstream>
#include <list>
#include <cstdio>
#include <cstdlib>
#include <cstring>
#include <memory>

class CcustNraTaxInfo
{
public:
    struct ST_R1Record;

    CcustNraTaxInfo(void){}
    ~CcustNraTaxInfo(){}

public:
    struct ST_R1Record
    {//61个字段，对应R1记录的61个字段
        char APP_SHEET_SNO[32+1];
        char TRANS_DATE[19+1];
        char TRANS_TIME[19+1];
        char OF_SELLER_CODE[16+1];
        char INT_ORG[10+1];
        char OFACCT[12+1];
        char USER_TYPE[1+1];
        char ORI_APP_DATE[10+1];
        char ORI_APP_SHEETNO[32+1];
        char SURV_METHOD[1+1];
        char INVEST_CER_FLAG[1+1];
        char NON_RESI_FLAG[1+1];
        char CHN_NAME[128+1];
        char ENG_NAME2[128+1];
        char ENG_FIRST_NAME2[128+1];
        char ENG_FNAME[256+1];
        char SEX[1+1];
        char ADDRESS_TYPE[3+1];
        char LIV_COUNTRY[3+1];
        char LIV_ADDRESS[384+1];
        char LIV_ADDRESS2[384+1];
        char LIV_ADDRESS3[384+1];
        char LIV_ADDRESS4[384+1];
        char BIRTH_DATE[10+1];
        char BIRTH_COUNTRY[3+1];
        char BIRTH_ENG_NAME[256+1];
        char BIRTH_CITY[256+1];
        char REG_REGION_CODE[2+1];
        char TAX_COUNTRY[3+1];
        char TAX_ID[256+1];
        char REMARK[64+1];
        char PASSIVE_NFE[1+1];
        char NON_RESCON_FLAG[1+1];
        char CHN_NAME2[128+1];
        char ENG_FAM_NAME3[128+1];
        char ENG_FIRST_NAME3[128+1];
        char CONTROL_TYPE[8+1];
        char CONNON_RESI_FLAG[1+1];
        char CON_SHARE_RATIO[8+1];
        char LIV_COUNTRY2[3+1];
        char LIV_ADDRESS5[384+1];
        char LIV_ADDRESS6[384+1];
        char LIV_ADDRESS7[384+1];
        char LIV_ADDRESS8[384+1];
        char REG_REGION_CODE2[2+1];
        char BIRTH_DATE2[10+1];
        char BIRTH_COUNTRY2[3+1];
        char BIRTH_ENG_NAME2[256+1];
        char BIRTH_CITY2[128+1];
        char TAX_COUNTRY2[3+1];
        char TAXID2[256+1];
        char REMARK2[64+1];
        char ADD_FLAG[1+1];
        char RESERVE1[32+1];
        char RESERVE2[32+1];
        char RESERVE3[32+1];
        char RESERVE4[16+1];
        char RESERVE5[16+1];
        char RESERVE6[384+1];
        char DATA_FLAG[1+1];
        char TA_CODE[10+1];
    public:
        ST_R1Record();
        ~ST_R1Record();

        const char *get(size_t index)
        {
            if(index<FIELD_COUNT)
            {
                return m_pField[index];
            }
            return NULL;
        }

        int set(size_t index,const char * value)
        {
            if(index<FIELD_COUNT)
            {
                memset(m_pField[index],0,m_fieldSize[index]);       //账户代码中删除此行
                strncpy(m_pField[index],value,m_fieldSize[index]-1);//使用KBSS_STRNCPY替代strncpy，同时删除此行的-1
                return 0;
            }
            return -1;
        }
        //char * operator[](size_t index){
        //    if(index<FIELD_COUNT)
        //    {
        //        return m_pField[index];
        //    }
        //    return NULL;
        //}
        friend std::ostream & operator<<(std::ostream &os,const ST_R1Record &recorder);
    private:
        static const size_t FIELD_COUNT=61;
        char *m_pField[FIELD_COUNT];
        size_t m_fieldSize[FIELD_COUNT];

        void initValue();
        void initMap();
    };
};
