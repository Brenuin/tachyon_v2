#include <iostream>

// Declare the CUDA function
void launchCudaHello();

int main() {
    std::cout << "Hello from Tachyon v2....!" << std::endl;

    // Call the CUDA function
    launchCudaHello();

    return 0;
}
