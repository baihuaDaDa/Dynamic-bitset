#include "ans.h" // 你的实现文件路径

void print(dynamic_bitset &dyn) {
    std::cout << "Size: " << dyn.size() << " | ";
    for (std::size_t i = 0 ; i != dyn.size() ; ++i) std::cout << dyn[i];
    std::cout << '\n';
}

signed main() {
    freopen("1.out", "w", stdout);
    std::string str = "111";
    for (int i = 0 ; i < 4 ; ++i) str += str;
    dynamic_bitset dyn {str};
    print(dyn);
    std::cout << dyn.all() << ' ' << dyn.none() << std::endl;
    return 0;
}