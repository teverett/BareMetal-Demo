
#ifndef BAREMETALCONSOLE_HPP
#define BAREMETALCONSOLE_HPP

#include "libBareMetal.h"

class BareMetalConsole {
    
    public:
        BareMetalConsole();
        u8 input(void);
        void output(const char *str, u64 nbr);
    };

#endif