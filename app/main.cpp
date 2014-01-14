#include <iostream>
#include <string>
#include "diceman/diceman.hpp"

using namespace std;

int main(int argc, char* argv[]) {

   DiceMan diceMan;
   vector<string> tasks = diceMan.getTasks(5);
   std::string taskList = "";
   std::string options  = "";

   for (int index = 0; index < diceMan.count(); index++) {
       taskList += "   " + tasks[index] + "\n";
   }

   cout << "Which tasks would you like to add? (Comma-separate your response for multiple)\n\n";
   cout << taskList;
   std::getline(std::cin, options);

   cout << "You chose: " + options;

   return 0;

}