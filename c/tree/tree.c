#include <stdio.h>
#include <stdlib.h>


struct treenode
{
    int data;

    struct treenode **childs;
    int childNumber;
};

void buildTree(struct treenode *pnode,int *data,unsigned int datalen)
{
    if((pnode==NULL)||(datalen==0))
    {
        return;
    }
    pnode->childs=(struct treenode **)malloc(datalen*sizeof(struct treenode));
    pnode->childNumber=datalen;

    int i=0;
    for(;i<datalen;++i)
    {
        pnode->childs[i].data=data[i];
        pnode->childs[i].childs=NULL;
    }
}
void freeTree(struct treenode *pnode)
{
    if(pnode==NULL)
    {
        return;
    }
    if(pnode->childNumber==0)
    {
        printf("%d ",pnode->data);

        free(pnode);
    }else
    {
        int i=0;
        for(;i<pnode->childNumber;++i)
        {
            freeTree(&pnode->childs[i]);
        }
    }

}

int main(int argc,char *argv[])
{
    struct treenode *root=(struct treenode *)malloc(sizeof(struct treenode));
    root->data=-1;
    root->childNumber=0;
    root->childs=NULL;

    int data[10];
    int i=0;
    for(;i<10;++i)
    {
        data[i]=i;
    }
    buildTree(root,data,10);

    freeTree(root);
    return 0;
}
