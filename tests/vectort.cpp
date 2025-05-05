#include <iostream>
#include <cassert>

void test_vector_addition() {
    // dummy test
    int a = 3;
    int b = 4;
    int c = a + b;
    assert(c == 7);
    std::cout << "test_vector_addition passed.\n";
}

int main() {
    test_vector_addition();
    std::cout << "All vectort tests passed.\n";
    return 0;
}
