#include<stdio.h>
#include<stdlib.h>

struct prob{
    int *p;
    struct {
        int x;
        int y;
    }s;
    struct prob *next;
};

void sp_init(struct prob *sp){
   sp->s.x = sp->s.y;
   sp->p = &(sp->s.x);
   sp->next = sp;
  // sp->next = sp->p;
   sp->next =(struct prob *) ((void *)(sp->p));
}

int main(){
    struct prob *pointer = malloc(sizeof(struct prob));
    sp_init(pointer);

}
