#include <stdio.h>                                                        // +-------+------+------+------+------+------+------+---+--+
                                                                          // |NUM_LEN| NUM1 | NUM2 | NUM3 | NUM4 | NUM5 | NUM6 | END  |
#define ITEM_CAPACITY 7                 //元素容量，存储结构示意图:       // +-------+------+------+------+------+------+------+---+--+
#define ITEM_LEN (ITEM_CAPACITY+1)     //整型对应字符数组的长度           // |   1   |  '0' |  '0' |  '0' |  '0' |  '-' |  '0' |   0  |     //十进制0
#define MAX_NUM 100000                 //最大值                           // +-------+------+------+------+------+------+------+------+
#define RES_CAPACITY 12                                                   // |  ...  |  ... |  ... |  ... |  ... |  ... |  ... |   0  |
#define RES_ITEM_LEN (RES_CAPACITY+1) //存储转换后字符数组的长度          // +-------+------+------+------+------+------+------+------+
                                                                          // |   3   |  '0' |  '0' |  '-' |  '1' |  '2' |  '3' |   0  |     //十进制123
                                                                          // +-------+------+------+------+------+------+------+------+
                                                                          // |  ...  |  ... |  ... |  ... |  ... |  ... |  ... |   0  |
                                                                          // +-------+------+------+------+------+------+------+------+
                                                                          // |   5   |  '-' |  '9' |  '9' |  '9' |  '9' |  '9' |   0  |     //十进制99999
                                                                          // +-------+------+------+------+------+------+------+------+
/**
 * @brief 初始化查找表
 *
 * @param[in] pTable 待初始化的查找表，其元素为MAX_NUM个
 * @param[in] pResult 待初始化的返回结果列表，其元素为MAX_NUM个
 *
 * @return 初始化结果: 0-成功；其它-失败
 */
static int initTable(char *pTable,char *pResult)
{
    unsigned int iIndex=0;
    unsigned int uVal=0;
    unsigned short usPos=ITEM_CAPACITY;
    unsigned short usPos2=RES_CAPACITY;

    do
    {
        uVal=iIndex;
        usPos=ITEM_CAPACITY;
        usPos2=RES_CAPACITY;
        pResult[iIndex*RES_ITEM_LEN+usPos2]=0;

        do
        {//填充数字字符
            char ctmp=48+uVal%10;
            pTable[iIndex*ITEM_LEN+(--usPos)]=ctmp;
            pResult[iIndex*RES_ITEM_LEN+(--usPos2)]=ctmp;

            uVal/=10;
        }while(uVal!=0);
        pTable[iIndex*ITEM_LEN]=ITEM_CAPACITY-usPos;
        pTable[iIndex*ITEM_LEN+(--usPos)]='-';

        while(usPos>1)
        {//将未使用的元素填充为'0'
            pTable[iIndex*ITEM_LEN+(--usPos)]=48;
            pResult[iIndex*RES_ITEM_LEN+(--usPos2)]=48;
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
    static char pTable[MAX_NUM*ITEM_LEN]={0};
    static char pResult[MAX_NUM*RES_ITEM_LEN]={0};
    static unsigned short usInitFlag=0;

    unsigned short usPos=RES_CAPACITY-5;//从pResult的尾部写起
    unsigned char negFlag=iVal<0;
    unsigned int uVal=negFlag?(-iVal):iVal;
    unsigned int uLVal=uVal%MAX_NUM;
    unsigned int uHVal=uVal/MAX_NUM;

    if(usInitFlag==0)
    {
        initTable(pTable,pResult);
        usInitFlag=1;
    }

    unsigned short usLen=0;
    if(uHVal==0)
    {
        usLen=(char)pTable[uLVal*ITEM_LEN+0];
        const char *p=&pTable[uLVal*ITEM_LEN+ITEM_CAPACITY-usLen-negFlag];
        return p;
    }else{
        usLen=(char)pTable[(uHVal)*ITEM_LEN];
        char *p=&pTable[(uHVal)*ITEM_LEN+ITEM_CAPACITY];
        do
        {
            pResult[uLVal*RES_ITEM_LEN+--usPos]=*(--p);
        }while(--usLen>0);

        if(negFlag)
        {
            pResult[uLVal*RES_ITEM_LEN+(--usPos)]=*(--p);
        }
    }

    return pResult+uLVal*RES_ITEM_LEN+usPos;
}

int main(int argc,char *argv[])
{
    int i=0;
    int testVal[]={0,0x7fffffff,0x80000000,0x88888888,0x11111111,0x80808080,0x00010000,0x70707070,1000000000,1000000001,155555,1155555,11155555};

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
