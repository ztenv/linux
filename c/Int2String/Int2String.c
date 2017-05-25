#include <stdio.h>                                                                  // +-------+------+------+------+------+------+
                                                                                    // |NUM_LEN| NUM1 | NUM2 | NUM3 | NUM4 | NUM5 |
#define MAX_CAPACITY 6                 //二维数组中第二维的元素个数，存储结构示意图:// +-------+------+------+------+------+------+
#define LEN (7*sizeof(char))           //二维数组中第二维所占字节数                 // |   1   |  '0' |  '0' |  '0' |  '0' |  '0' |//十进制0的存储
#define MAX_NUM 100000                 //最大值                                     // +-------+------+------+------+------+------+
                                                                                    // |  ...  |  ... |  ... |  ... |  ... |  ... |
                                                                                    // +-------+------+------+------+------+------+
                                                                                    // |   3   |  '0' |  '0' |  '1' |  '2' |  '3' |//十进制123的存储
                                                                                    // +-------+------+------+------+------+------+
                                                                                    // |  ...  |  ... |  ... |  ... |  ... |  ... |
                                                                                    // +-------+------+------+------+------+------+
                                                                                    // |   5   |  '9' |  '9' |  '9' |  '9' |  '9' |//十进制99999的存储
                                                                                    // +-------+------+------+------+------+------+

#define MAX_LEN 12                     //整数转为字符数组的最大长度(一个符号位，十个数字位，一个零结束符)

static int initTable(char *pTable)
{//初始化查找表
    unsigned int index=0;
    unsigned int ival=0;
    unsigned char pos=MAX_CAPACITY;

    do
    {
        ival=index;
        pos=MAX_CAPACITY;

        do
        {//填充数字位
            pTable[index*LEN+(--pos)]=48+ival%10;
            ival/=10;
        }while(ival!=0);
        pTable[index*LEN]=MAX_CAPACITY-pos;

        while(pos>1)
        {//将未使用的高位填充为'0'
            pTable[index*LEN+(--pos)]=48;
        }

    }while(++index<MAX_NUM);

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

        int len=0;
        if(uHVal>0)
        {
            {
                //填充低五个字符
                CONVERT_VALUE(uLVal,5);
            }
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

    printf("%s\n",toString(-0));
    printf("%s\n",toString(-10));
    printf("%s\n",toString(-100));
    printf("%s\n",toString(-1000));
    printf("%s\n",toString(-10000));
    printf("%s\n",toString(-100000));
    printf("%s\n",toString(-1000000));
    printf("%s\n",toString(-10000000));
    printf("%s\n",toString(-100000000));
    printf("%s\n",toString(-1000000000));

    printf("%s\n",toString(-1000000001));
    printf("%s\n",toString(-2147483647));
    printf("%s\n",toString(-2147483648));
    printf("%s\n",toString(-0x80000000));

    printf("%s\n",toString(1));
    printf("%s\n",toString(11));
    printf("%s\n",toString(111));
    printf("%s\n",toString(1111));
    printf("%s\n",toString(11111));
    printf("%s\n",toString(111111));
    printf("%s\n",toString(1111111));
    printf("%s\n",toString(11111111));
    printf("%s\n",toString(111111111));
    printf("%s\n",toString(1111111111));

    printf("%s\n",toString(-1));
    printf("%s\n",toString(-11));
    printf("%s\n",toString(-111));
    printf("%s\n",toString(-1111));
    printf("%s\n",toString(-11111));
    printf("%s\n",toString(-111111));
    printf("%s\n",toString(-1111111));
    printf("%s\n",toString(-11111111));
    printf("%s\n",toString(-111111111));
    printf("%s\n",toString(-1111111111));

    printf("%s\n",toString(99999));
    printf("%s\n",toString(11111));
    printf("%s\n",toString(21111));
    printf("%s\n",toString(31111));
    printf("%s\n",toString(2147483647));
    printf("%s\n",toString(2147483648));
    printf("%s\n",toString(2147483646));
    printf("%s\n",toString(0x80000000));
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
