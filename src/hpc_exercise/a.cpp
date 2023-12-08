#include <cmath>

inline int func(int x, int *y, double rad) {
    *y = x * cos(rad);
}

int main() {
    int x = 100;
    int *y;
    func(x, y, 10.2);
}