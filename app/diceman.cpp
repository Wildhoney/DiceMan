#include <iostream>
#include <string>

/**
 * @class DiceMan
 */
class DiceMan {

    /**
     * @property tasks
     */
    char tasks[4][100];

    public:

    /**
     * @method getTasks
     * @param double limit
     * @return double
     */
    double getTasks(double limit) {
        return limit;
    }

};

int main(int argc, char* argv[]) {
   DiceMan diceMan;
   std::cout << diceMan.getTasks(4);
   return 0;
}