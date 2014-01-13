#include <iostream>
#include <string>
#include "DiceMan.hpp"

int main(int argc, char* argv[]) {
   DiceMan diceMan;
   std::cout << diceMan.getTasks(4);
   return 0;
}