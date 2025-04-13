
#ifndef BAREMETALNETWORK_HPP
#define BAREMETALNETWORK_HPP

#include "libBareMetal.h"

class BareMetalNetwork {
    
    public:
        BareMetalNetwork();
        void tx(void *mem, u64 len, u64 iid);
        u64 rx(void *mem, u64 iid);
    };

#endif