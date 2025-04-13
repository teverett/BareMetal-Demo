
#include "bareMetalNetwork.hpp"

BareMetalNetwork::BareMetalNetwork(){
}

void BareMetalNetwork::tx(void *mem, u64 len, u64 iid){
    b_net_tx(mem, len, iid);
}

u64 BareMetalNetwork::rx(void *mem, u64 iid){
   return b_net_rx(mem, iid);
}
