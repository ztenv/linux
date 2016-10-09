#include <stdio.h>
#include <stdlib.h>

/**
 * link node 声明
 */
struct linknode
{
    /**
     * 存储数据的成员
     */
    int data;

    /**
     * 前向指针
     */
    struct linknode *preview;
    /**
     * 后向指针
     */
    struct linknode *next;
};

/**
 * list 声明
 */
struct list
{
    /**
     * 链表的头
     */
    struct linknode *head;
    /**
     * 链表的尾
     */
    struct linknode *tail;
};

/**
 * 向plist增加一个值为data的结点
 */
int addNode(struct list *plist,int data)
{
    if(plist==NULL)
    {
        return -1;
    }
    struct linknode *ln=(struct linknode *)malloc(sizeof(struct linknode));
    if(ln==NULL)
    {
        return -2;
    }

    ln->data=data;
    if(plist->head==NULL)
    {
        plist->head=ln;
    }
    if(plist->tail!=NULL)
    {
        plist->tail->next=ln;
    }
    ln->preview=plist->tail;
    plist->tail=ln;
    return 0;
}

/**
 * 查找值为value的结点
 */
struct linknode *findNode(struct list *plist,int value)
{
    if(plist==NULL)
    {
        return NULL;
    }
    struct linknode *p=plist->head;
    while(p!=NULL)
    {
        if(p->data==value)
        {
            return p;
        }
        p=p->next;
    }
    return NULL;
}

/**
 * 将值为oldvalue的结点值更新为newvalue
 */
int updateNode(struct list *plist,int oldvalue,int newvalue)
{
    struct linknode *ln=findNode(plist,oldvalue);
    if(ln!=NULL)
    {
        ln->data=newvalue;
        return 0;
    }
    return -1;
}

/**
 * 删除值为value的结点
 */
int removeNode(struct list *plist,int value)
{
    struct linknode *ln=findNode(plist,value);
    if(ln==NULL)
    {
        return -1;
    }
    if(ln->preview!=NULL)
    {
        ln->preview->next=ln->next;
    }
    if(ln->next!=NULL)
    {
        ln->next->preview=ln->preview;
    }
    if(ln==plist->head)
    {
        plist->head=ln->next;
    }
    if(ln==plist->tail)
    {
        plist->tail=ln->preview;
    }
    free(ln);
    ln=NULL;
    return 0;
}

/**
 * 从pdata数组构造一个双向链表
 */
struct list *buildList(int *pdata,unsigned int datalen)
{
    struct list *plist=(struct list *)malloc(sizeof(struct list));
    plist->head=NULL;
    plist->tail=NULL;

    int i=0;
    for(;i<datalen;++i)
    {
        if(addNode(plist,pdata[i])!=0)
        {
            break;
        }
    }
    return plist;
}

/**
 * 释放plist双向链表
 */
void freeList(struct list * plist)
{
    if(plist!=NULL)
    {
        while(plist->head!=NULL)
        {
            struct linknode *p=plist->head;
            free(p);
            p=NULL;

            plist->head=plist->head->next;
            if(plist->head!=NULL)
            {
                plist->head->preview=NULL;
            }
        }
    }
}

/**
 * 遍历双向链表，并将结果输出到控制台
 */
void traversal(struct list *plist)
{
    if(plist==NULL)
    {
        return;
    }

    struct linknode *p=plist->head;
    while(p!=NULL)
    {
        printf("%d ",p->data);
        p=p->next;
    }
    printf("\n");
}

/**
 * 主程序入口
 */
int main(int argc,char *argv[])
{
////////////////////////////////////////////////
//构造测试数据
    const int datalen=2;
    int data[datalen];
    int i=0;
    for(;i<datalen;++i)
    {
        data[i]=i*2+3;
    }
///////////////////////////////////////////////

    //构造链表
    struct list *plist=buildList(data,datalen);
    traversal(plist);

    //增加结点
    addNode(plist,100);
    addNode(plist,200);
    addNode(plist,300);
    traversal(plist);

    //更新结点
    updateNode(plist,100,-100);
    traversal(plist);

    //删除结点
    removeNode(plist,300);
    removeNode(plist,3);

    //遍历链表
    traversal(plist);

    //释放链表
    freeList(plist);

    return 0;
}
