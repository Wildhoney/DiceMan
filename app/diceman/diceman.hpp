#include <string>
#include <iostream>
#include <vector>

using namespace std;

/**
 * @class DiceMan
 */
class DiceMan {

    /**
     * @property tasks
     */
    vector<string> tasks;

    public:

    /**
     * @constructor
     */
    DiceMan() {
        tasks.push_back("First task");
        tasks.push_back("Second task");
        tasks.push_back("Third task");
    }

    /**
     * @method getTasks
     * @param double limit
     * @return double
     */
    vector<string> getTasks(double limit);

    /**
     * @method count
     * @param double limit
     * @return double
     */
    double count();

};