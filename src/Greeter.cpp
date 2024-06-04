// src/Greeter.cpp
#include "Greeter.h"
#include <iostream>

Greeter::Greeter(const std::string& name) : name(name) {}

void Greeter::greet() const {
    std::cout << "Hello, " << name << "!" << std::endl;
}
