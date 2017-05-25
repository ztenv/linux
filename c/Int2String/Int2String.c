#include <stdio.h>

#define MAX_CAPACITY 6                 //二维数组中第二维的元素个数
#define LEN (7*sizeof(char))           //二维数组中第二维所占字节数
#define MAX_NUM 100000                 //最大值
#define MAX_LEN 12                     //整数转为字符数组的最大长度(一个符号位，十个数字位，一个零结束符)

static int initTable(char *pTable)
{//初始化查找表
    unsigned int index=0;
    unsigned int ival=0;
    unsigned char pos=MAX_CAPACITY-1;

    do
    {
        ival=index;
        pos=MAX_CAPACITY-1;

        do
        {//填充数字位
            pTable[index*LEN+pos--]=48+ival%10;
            ival/=10;
        }while(ival!=0);
        pTable[index*LEN]=MAX_CAPACITY-1-pos;

        while(pos>0)
        {//将未使用位填充为'0'
            pTable[index*LEN+pos--]=48;
        }

    }while(++index<MAX_NUM);

    return 0;
}

const char * toString(int iVal)
{
    //将uVal转换为字符数组,并将结果填充到pResult
#define CONVERT_VALUE(uVal)\
    {\
        int len=(char)pTable[(uVal)*LEN+0];\
        char *p=&pTable[(uVal)*LEN+MAX_CAPACITY];\
        do\
        {\
            pResult[--wpos]=*(--p);\
        }while(--len>0);\
    }
    static char pTable[MAX_NUM*LEN]={0};
    static char pResult[MAX_LEN]={0};
    static char flag=0;
    unsigned char wpos=MAX_LEN-1;

    if(flag==0)
    {
        initTable(pTable);
        flag=1;
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

        if(uHVal>0)
        {
            {
                //填充低五位
                int len=5;
                char *p=&pTable[(uLVal)*LEN+MAX_CAPACITY];
                do
                {
                    pResult[--wpos]=*(--p);
                }while(--len>0);
            }
            //填充高位
            CONVERT_VALUE(uHVal);
        }else{
            //只填充低位
            CONVERT_VALUE(uLVal);
        }

        if(negFlag)
        {
            pResult[--wpos]='-';
//            printf("wpos=%d,",wpos);
        }
    }

    return pResult+wpos;
}


int main(int argc,char *argv[])
{
    printf("%s\n",toString(0));
    printf("%s\n",toString(10));
    printf("%s\n",toString(100));
    printf("%s\n",toString(1000));
    printf("%s\n",toString(10000));
    printf("%s\n",toString(100000));
    printf("%s\n",toString(1000000));
    printf("%s\n",toString(10000000));
    printf("%s\n",toString(100000000));
    printf("%s\n",toString(1000000000));

    printf("%s\n",toString(1000000001));
    printf("%s\n",toString(2147483647));
    printf("%s\n",toString(2147483648));

    printf("%s\n",toString(0x80000000));
//    printf("%s\n",toString(-10));
//    printf("%s\n",toString(-0));
//    printf("%s\n",toString(0));
//    printf("%s\n",toString(10));
//    printf("%s\n",toString(100));
//    printf("%s\n",toString(1000));
//    printf("%s\n",toString(10000));
//    printf("%s\n",toString(90000));
//    printf("%s\n",toString(99999));
//    printf("%s\n",toString(11111));
//    printf("%s\n",toString(21111));
//    printf("%s\n",toString(31111));
//    printf("%s\n",toString(2147483647));
//    printf("%s\n",toString(2147483648));
//    printf("%s\n",toString(2147483646));
//    printf("%s\n",toString(0x80000000));
//
//    int i=0;
//    for(i=0x80000000;i<0;++i)
//    {
//        if(-i%1000001==0)
//        printf("%d:%s ",i,toString(i));
//    }
//
//    for(i=0;i<0x7fffffff;+i)
//    {
//        printf("%d:%s ",i,toString(i));
//    }

    return 0;
}
