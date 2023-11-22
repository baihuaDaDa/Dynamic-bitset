#include <vector>
#include <cstring>
#include <cstdint>
#include <iostream>
#include <algorithm>

struct dynamic_bitset {
    std::vector<unsigned long long> v;
    unsigned long long len;
    // 默认构造函数，默认长度为 0
    dynamic_bitset() = default;

    // 除非手动管理内存，否则 = default 即可
    ~dynamic_bitset() = default;

    /**
     * @brief 拷贝构造函数
     * 如果你用 std::vector 来实现，那么这个函数可以直接 = default
     * 如果你手动管理内存，则你可能需要自己实现这个函数
     */
    dynamic_bitset(const dynamic_bitset &) = default;

    /**
     * @brief 拷贝赋值运算符
     * 如果你用 std::vector 来实现，那么这个函数可以直接 = default
     * 如果你手动管理内存，则你可能需要自己实现这个函数
     */
    dynamic_bitset &operator = (const dynamic_bitset &) = default;

    // 初始化 bitset 的大小为 n ，且全为 0.
    dynamic_bitset(std::size_t n) {
        for (unsigned long long i = 1; i <= n / 64 + bool(n % 64); i++) {
            v.push_back(0);
        }
        len = n;
    }

    /**
     * @brief 从一个字符串初始化 bitset。
     * 保证字符串合法，且最低位在最前面。
     * 例如 a =  "0010"，则有:
     * a 的第 0 位是 0
     * a 的第 1 位是 0
     * a 的第 2 位是 1
     * a 的第 3 位是 0
     */
    dynamic_bitset(const std::string &str) {
        len = str.size();
        unsigned long long pos = 0;
        for (unsigned long long i = 0; i < len / 64 + bool(len % 64) ;i++) {
            v.push_back(0);
            for (unsigned long long j = 0; j < 64 && j + pos < len; j++) {
                v[i] |= ((unsigned long long)(str[j + pos] - '0') << (j + pos));
//                std::cout << v[i] << std::endl;
            }
            pos += 64;
        }
    }

    // 访问第 n 个位的值，和 vector 一样是 0-base
    bool operator [] (std::size_t n) const {
        return (v[n / 64] >> (n % 64) & 1ull);
    }
    // 把第 n 位设置为指定值 val
    dynamic_bitset &set(std::size_t n, bool val = true);
    // 在尾部插入一个位，并且长度加一
    dynamic_bitset &push_back(bool val);

    // 如果不存在 1 ，则返回 true。否则返回 false
    bool none() const {
        for (unsigned long long i = 0; i < v.size(); i++) {
            if (v[i]) {
                return false;
            }
        }
        return true;
    }
    // 如果不存在 0 ，则返回 true。否则返回 false
    bool all()  const {
        if (v.empty()) {
            return true;
        }
        for (unsigned long long i = 0; i < v.size() - 1; i++) {
            if (~(v[i])) {
                return false;
            }
        }
        if (len % 64 == 0) {
            return !(~v.back());
        } else {
            return !((~v.back()) & ((1ull << (len % 64)) - 1));
        }
    }

    // 返回自身的长度
    std::size_t size() const {
        return len;
    }

    /**
     * 所有位运算操作均按照以下规则进行:
     * 取两者中较短的长度那个作为操作长度。
     * 换句话说，我们仅操作两者中重叠的部分，其他部分不变。
     * 在操作前后，bitset 的长度不应该发生改变。
     *
     * 比如 a = "10101", b = "1100"
     * a |= b 之后，a 应该变成 "11101"
     * b |= a 之后，b 应该变成 "1110"
     * a &= b 之后，a 应该变成 "10001"
     * b &= a 之后，b 应该变成 "1000"
     * a ^= b 之后，a 应该变成 "01101"
     * b ^= a 之后，b 应该变成 "0110"
     */

    // 或操作，返回自身的引用。     a |= b 即 a = a | b
    dynamic_bitset &operator |= (const dynamic_bitset &);
    // 与操作，返回自身的引用。     a &= b 即 a = a & b
    dynamic_bitset &operator &= (const dynamic_bitset &);
    // 异或操作，返回自身的引用。   a ^= b 即 a = a ^ b
    dynamic_bitset &operator ^= (const dynamic_bitset &);

    /**
     * @brief 左移 n 位 。类似无符号整数的左移，最低位会补 0.
     * 例如 a = "1110"
     * a <<= 3 之后，a 应该变成 "0001110"
     * @return 返回自身的引用
     */
    dynamic_bitset &operator <<= (std::size_t n);
    /**
     * @brief 右移 n 位 。类似无符号整数的右移，最低位丢弃。
     * 例如 a = "10100"
     * a >>= 2 之后，a 应该变成 "100"
     * a >>= 9 之后，a 应该变成 "" (即长度为 0)
     * @return 返回自身的引用
     */
    dynamic_bitset &operator >>= (std::size_t n);

    // 把所有位设置为 1
    dynamic_bitset &set     ();
    // 把所有位取反
    dynamic_bitset &flip    ();
    // 把所有位设置为 0
    dynamic_bitset &reset   ();
};