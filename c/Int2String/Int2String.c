#include <stdio.h>                                                                  // +-------+------+------+------+------+------+------+
                                                                                    // |NUM_LEN| NUM1 | NUM2 | NUM3 | NUM4 | NUM5 | END  |
#define MAX_CAPACITY 6                 //二维数组中第二维的元素个数，存储结构示意图:// +-------+------+------+------+------+------+------+
#define LEN ((MAX_CAPACITY+1)*sizeof(char))//二维数组中第二维所占字节数             // |   1   |  '0' |  '0' |  '0' |  '0' |  '0' |  0   |     //十进制0的存储
#define MAX_NUM 100000                 //最大值                                     // +-------+------+------+------+------+------+------+
#define MAX_LEN 12                     //整数转为字符数组的最大长度                 // |  ...  |  ... |  ... |  ... |  ... |  ... |  0   |
                                                                                    // +-------+------+------+------+------+------+------+
                                                                                    // |   3   |  '0' |  '0' |  '1' |  '2' |  '3' |  0   |     //十进制123的存储
                                                                                    // +-------+------+------+------+------+------+------+
                                                                                    // |  ...  |  ... |  ... |  ... |  ... |  ... |  0   |
                                                                                    // +-------+------+------+------+------+------+------+
                                                                                    // |   5   |  '9' |  '9' |  '9' |  '9' |  '9' |  0   |     //十进制99999的存储
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
    unsigned short usPos=MAX_CAPACITY;

    do
    {
        uVal=iIndex;
        usPos=MAX_CAPACITY;

        do
        {//填充数字字符
            pTable[iIndex*LEN+(--usPos)]=48+uVal%10;
            uVal/=10;
        }while(uVal!=0);
        pTable[iIndex*LEN]=MAX_CAPACITY-usPos;

        while(usPos>1)
        {//将未使用的元素填充为'0'
            pTable[iIndex*LEN+(--usPos)]=48;
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
 * @note 调用此函数完成后，调用者应当立即把返回的字符数组拷贝到自己的内存空间，否则结果被覆盖的风险
 */
const char * toString(int iVal)
{
//将uVal转换为字符数组,并将结果填充到pResult，填充长度由len指定
#define CONVERT_VALUE(uVal,len)\
    {\
        char *p=&pTable[(uVal)*LEN+MAX_CAPACITY];\
        int i=(len);\
        do\
        {\
            pResult[--usPos]=*(--p);\
        }while(--i>0);\
    }

    static char pTable[MAX_NUM*LEN]={0};
    static char pResult[MAX_LEN]={0};
    static unsigned short usInitFlag=0;
    unsigned short usPos=MAX_LEN-1;//从pResult的尾部写起

    if(usInitFlag==0)
    {
        initTable(pTable);
        usInitFlag=1;
    }

    unsigned char negFlag=iVal<0;
    unsigned int uVal=negFlag?(-iVal):iVal;
    unsigned int uLVal=uVal%MAX_NUM;
    unsigned int uHVal=uVal/MAX_NUM;

    if((uHVal==0)&&(!negFlag))
    {//非负整数，且整数小于MAX_NUM(100000)
        int uLen=(char)pTable[uLVal*LEN+0];
        const char *p=&pTable[uLVal*LEN+MAX_CAPACITY-uLen];
        return p;

    }else{
        pResult[MAX_LEN-1]=0;
        unsigned short usLen=0;

        if(uHVal>0)
        {
            //填充低五个字符，填充长度为5
            CONVERT_VALUE(uLVal,5);

            //填充高位字符，填充长度为len
            usLen=(char)pTable[(uHVal)*LEN];
            CONVERT_VALUE(uHVal,usLen);
        }else{
            //只填充低位字符，填充的长度为len
            usLen=(char)pTable[(uLVal)*LEN];
            CONVERT_VALUE(uLVal,usLen);
        }

        if(negFlag)
        {
            pResult[--usPos]='-';
        }
    }

    return pResult+usPos;
}

void test(int initVal,int step)
{
    int i=0;
    unsigned int res=initVal;
    printf("%d:%s ",res,toString(res));
    for(i=0;i<9;++i)
    {
        res=res*10+step;
        printf("%d:%s ",res,toString(res));
    }
    printf("\n");
}

int main(int argc,char *argv[])
{
    int i=0;
    for(i=1;i<10;++i)
    {
        test(i,0);
    }

    printf("\n");
    for(i=1;i<10;++i)
    {
        test(i,i);
    }

    int testVAl[]={0,0x7fffffff,0x80000000,-0x7fffffff,-0x80000000,0x88888888,0x11111111,0x80808080,0x00010000,0x70707070};
    for(i=0;i<sizeof(testVAl)/sizeof(int);++i)
    {
        printf("%d:%s ",testVAl[i],toString(testVAl[i]));
    }
    printf("\n");

    for(i=0x80000000;i<0;++i)
    {
        toString(i);
//        if(-i%100000000==0)
//        {
//            printf("%d:%s ",i,toString(i));
//        }
    }

    for(i=0;i<0x7fffffff;++i)
    {
        toString(i);
//        if(i%200000000==0)
//        {
//            printf("%d:%s ",i,toString(i));
//        }
    }

    printf("\ndone\n");
    return 0;
}
