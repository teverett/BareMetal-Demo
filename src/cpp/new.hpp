
#ifndef _NEW_HPP
#define _NEW_HPP

#include "libBareMetal.h"

void* operator new (u64 size);
void operator delete (void* ptr);

#endif