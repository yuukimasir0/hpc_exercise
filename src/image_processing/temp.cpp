#include <bits/extc++.h>

float mylog(float x) {
    float res = - --x;
    res += 1;
    float y = x * x;
    res -= y;
    y *= x;
    res += y / 2.f;
    y *= x;
    res += y / 6.f;
    y *= x;
    res += y / 24.f;
    y *= x;
    res += y / 120.f;
    return res;
}

signed main() {
    for(int i = 0; i < 10; i++) {
        std::cout << mylog(i) << ' ' << log2f32(i) << '\n';
    }
}
