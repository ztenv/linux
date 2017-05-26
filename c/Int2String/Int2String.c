#include <stdio.h>                                                        // +-------+------+------+------+------+------+------+
                                                                          // |NUM_ITEM_LEN| NUM1 | NUM2 | NUM3 | NUM4 | NUM5 | END  |
#define ITEM_CAPACITY 6                //元素容量，存储结构示意图:        // +-------+------+------+------+------+------+------+
#define ITEM_LEN (ITEM_CAPACITY+1)     //整型对应字符数组的长度           // |   1   |  '0' |  '0' |  '0' |  '0' |  '0' |  0   |     //十进制0
#define MAX_NUM 100000                 //最大值                           // +-------+------+------+------+------+------+------+
#define RES_LEN 12                     //整数转为字符数组的最大长度       // |  ...  |  ... |  ... |  ... |  ... |  ... |  0   |
                                                                          // +-------+------+------+------+------+------+------+
                                                                          // |   3   |  '0' |  '0' |  '1' |  '2' |  '3' |  0   |     //十进制123
                                                                          // +-------+------+------+------+------+------+------+
                                                                          // |  ...  |  ... |  ... |  ... |  ... |  ... |  0   |
                                                                          // +-------+------+------+------+------+------+------+
                                                                          // |   5   |  '9' |  '9' |  '9' |  '9' |  '9' |  0   |     //十进制99999
                                                                          // +-------+------+------+------+------+------+------+

/**
 * @brief 初始化查找表
 *
 * @param[in] pTable 待初始化的查找表，其元素为MAX_NUM个
 *
 * @return 初始化结果: 0-成功；其它-失败
 */
static int initTable(char *pTable)
{
    unsigned int iIndex=0;
    unsigned int uVal=0;
    unsigned short usPos=ITEM_CAPACITY;

    do
    {
        uVal=iIndex;
        usPos=ITEM_CAPACITY;

        do
        {//填充数字字符
            pTable[iIndex*ITEM_LEN+(--usPos)]=48+uVal%10;
            uVal/=10;
        }while(uVal!=0);
        pTable[iIndex*ITEM_LEN]=ITEM_CAPACITY-usPos;

        while(usPos>1)
        {//将未使用的元素填充为'0'
            pTable[iIndex*ITEM_LEN+(--usPos)]=48;
        }

    }while(++iIndex<MAX_NUM);

    return 0;
}

/**
 * @brief 把整数iVAl转换为字符数组
 *
 * @param[in] iVal 待转换的整数
 *
 * @return 转换后的字符数组
 *
 * @note 1、线程不安全
 *       2、此函数返回后，调用者应当立即把返回的字符数组拷贝到自己的内存空间，否则结果有被覆盖的风险
 */
const char * toString(int iVal)
{
//将uVal转换为字符数组,并将结果填充到pResult，填充长度由len指定
#define CONVERT_VALUE(uVal,len)\
    {\
        char *p=&pTable[(uVal)*ITEM_LEN+ITEM_CAPACITY];\
        unsigned short i=(len);\
        do\
        {\
            pResult[--usPos]=*(--p);\
        }while(--i>0);\
    }

    static char pTable[MAX_NUM*ITEM_LEN]={0};
    static char pResult[RES_LEN]={0};
    static unsigned short usInitFlag=0;

    unsigned short usPos=RES_LEN-1;//从pResult的尾部写起
    unsigned char negFlag=iVal<0;
    unsigned int uVal=negFlag?(-iVal):iVal;
    unsigned int uLVal=uVal%MAX_NUM;
    unsigned int uHVal=uVal/MAX_NUM;

    if(usInitFlag==0)
    {
        initTable(pTable);
        usInitFlag=1;
    }

    unsigned short usLen=0;
    if((uHVal==0)&&(!negFlag))
    {//非负整数，且整数小于MAX_NUM(100000)
        usLen=(char)pTable[uLVal*ITEM_LEN+0];
        const char *p=&pTable[uLVal*ITEM_LEN+ITEM_CAPACITY-usLen];
        return p;

    }else{
        pResult[RES_LEN-1]=0;

        if(uHVal>0)
        {
            //填充低五个字符，填充长度为5
            CONVERT_VALUE(uLVal,5);

            //填充高位字符，填充长度为len
            usLen=(char)pTable[(uHVal)*ITEM_LEN];
            CONVERT_VALUE(uHVal,usLen);
        }else{
            //只填充低位字符，填充的长度为len
            usLen=(char)pTable[(uLVal)*ITEM_LEN];
            CONVERT_VALUE(uLVal,usLen);
        }

        if(negFlag)
        {
            pResult[--usPos]='-';
        }
    }

    return pResult+usPos;
}

int main(int argc,char *argv[])
{
    int i=0;
    int testVal[]={0,0x7fffffff,0x80000000,0x88888888,0x11111111,0x80808080,0x00010000,0x70707070,1000000000,1000000001};

    for(i=0;i<sizeof(testVal)/sizeof(int);++i)
    {
        printf("%11d:%s \n",testVal[i],toString(testVal[i]));
        printf("%11d:%s \n\n",-testVal[i],toString(-testVal[i]));
    }

     i=0x80000000;
     for(;i<0;++i)
     {
         toString(i);
         //printf("%d:%s ",i,toString(i));
     }

     i=0;
     for(;i<0x7fffffff;++i)
     {
         toString(i);
 //        printf("%d:%s",i,toString(i));
     }

    return 0;
}
