
#include "new.hpp"

void* operator new (u64 size){
    return 0;
}

void operator delete (void* ptr){
    
}