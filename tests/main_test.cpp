#include <cstdlib>
#include <iostream>

int run_vectort() {
    std::cout << "Running vectort...\n";
    return system("build/Debug/vectort.exe");
}

int main() {
    int result = 0;
    
    result |= run_vectort();

    if (result == 0) {
        std::cout << "✅ All tests passed.\n";
    } else {
        std::cout << "❌ One or more tests failed.\n";
    }

    return result;
}
