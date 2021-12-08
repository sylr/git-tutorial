#include "vector.h"
#include "math.h"

vector vadd(vector a, vector b) {
    vector ret;
    ret.x = add(a.x, b.x);
    ret.y = add(a.y, b.y);

    return ret;
}
