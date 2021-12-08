#include "vector.h"
#include "math.h"

vector add(vector a, vector b) {
    vector ret;
    ret.x = madd(a.x, b.x);
    ret.y = madd(a.y, b.y);

    return ret;
}
