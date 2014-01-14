#include <iostream>
#include "diceman.hpp"

using namespace std;

/**
 * @method getTasks
 * @param double limit
 * @return double
 */
vector<string> DiceMan::getTasks(double limit) {
    return tasks;
}

/**
 * @method count
 * @return double
 */
double DiceMan::count() {
    return sizeof(tasks) / sizeof(tasks[0]);
}