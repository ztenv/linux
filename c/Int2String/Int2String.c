#include <stdio.h>                                                                  // +-------+------+------+------+------+------+------+
                                                                                    // |NUM_LEN| NUM1 | NUM2 | NUM3 | NUM4 | NUM5 | END  |
#define MAX_CAPACITY 6                 //二维数组中第二维的元素个数，存储结构示意图:// +-------+------+------+------+------+------+------+
#define LEN (7*sizeof(char))           //二维数组中第二维所占字节数                 // |   1   |  '0' |  '0' |  '0' |  '0' |  '0' |  0   |     //十进制0的存储
#define MAX_NUM 100000                 //最大值                                     // +-------+------+------+------+------+------+------+
#define MAX_LEN 12                     //整数转为字符数组的最大长度                 // |  ...  |  ... |  ... |  ... |  ... |  ... |  0   |
                                                                                    // +-------+------+------+------+------+------+------+
                                                                                    // |   3   |  '0' |  '0' |  '1' |  '2' |  '3' |  0   |     //十进制123的存储
                                                                                    // +-------+------+------+------+------+------+------+
                                                                                    // |  ...  |  ... |  ... |  ... |  ... |  ... |  0   |
                                                                                    // +-------+------+------+------+------+------+------+
                                                                                    // |   5   |  '9' |  '9' |  '9' |  '9' |  '9' |  0   |     //十进制99999的存储
                                                                                    // +-------+------+------+------+------+------+------+


static int initTable(char *pTable)
{//初始化查找表
    unsigned int iIndex=0;
    unsigned int uVal=0;
    unsigned char uPos=MAX_CAPACITY;

    do
    {
        uVal=iIndex;
        uPos=MAX_CAPACITY;

        do
        {//填充数字字符
            pTable[iIndex*LEN+(--uPos)]=48+uVal%10;
            uVal/=10;
        }while(uVal!=0);
        pTable[iIndex*LEN]=MAX_CAPACITY-uPos;

        while(uPos>1)
        {//将未使用的元素填充为'0'
            pTable[iIndex*LEN+(--uPos)]=48;
        }

    }while(++iIndex<MAX_NUM);

    return 0;
}

const char * toString(int iVal)
{

//将uVal转换为字符数组,并将结果填充到pResult，填充长度由len指定
#define CONVERT_VALUE(uVal,len)\
    {\
        char *p=&pTable[(uVal)*LEN+MAX_CAPACITY];\
        int i=len;\
        do\
        {\
            pResult[--wpos]=*(--p);\
        }while(--i>0);\
    }

    static char pTable[MAX_NUM*LEN]={0};
    static char pResult[MAX_LEN]={0};
    static char initFlag=0;
    unsigned char wpos=MAX_LEN-1;

    if(initFlag==0)
    {
        initTable(pTable);
        initFlag=1;
    }

    unsigned char negFlag=iVal<0;
    unsigned int uVal=negFlag?(-iVal):iVal;
    unsigned int uLVal=uVal%MAX_NUM;
    unsigned int uHVal=uVal/MAX_NUM;

    if((uHVal==0)&&(!negFlag))
    {
        //非负整数，且整数长度小于等于5位
        int len=(char)pTable[uLVal*LEN+0];
        const char *p=&pTable[uLVal*LEN+MAX_CAPACITY-len];
        return p;

    }else {

        pResult[MAX_LEN-1]=0;

        int len=0;
        if(uHVal>0)
        {
            //填充低五个字符
            CONVERT_VALUE(uLVal,5);

            //填充高位字符，填充长度为len
            len=(char)pTable[(uHVal)*LEN+0];
            CONVERT_VALUE(uHVal,len);
        }else{
            //只填充低位字符，填充长度为len
            len=(char)pTable[(uLVal)*LEN+0];
            CONVERT_VALUE(uLVal,len);
        }

        if(negFlag)
        {
            pResult[--wpos]='-';
        }
    }

    return pResult+wpos;
}

void test(int initVal,int step)
{
    int i=0;
    unsigned int res=initVal;
    printf("%s ",toString(res));
    for(i=0;i<9;++i)
    {
        res=res*10+step;
        printf("%s ",toString(res));
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

    printf("%s\n",toString(0));
    printf("%s\n",toString(-0));

    printf("%s\n",toString(0x7fffffff));
    printf("%s\n",toString(0x80000000));

    printf("%s\n",toString(0x88888888));

    printf("%s\n",toString(-0x7fffffff));
    printf("%s\n",toString(-0x80000000));

    for(i=0x80000000;i<0;++i)
    {
        if(-i%100000001==0)
        {
            printf("%d:%s ",i,toString(i));
        }
    }

    for(i=0;i<0x7fffffff;++i)
    {
        if(i%200000001==0)
        {
            printf("%d:%s ",i,toString(i));
        }
    }

    printf("\ndone\n");
    return 0;
}
