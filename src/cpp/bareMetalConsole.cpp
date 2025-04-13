
#include "bareMetalConsole.hpp"

BareMetalConsole::BareMetalConsole(){

}

u8 BareMetalConsole::input(void){
    return b_input();
}

void BareMetalConsole::output(const char *str, u64 nbr){
    b_output(str, nbr);
}
