// include/Greeter.h
#ifndef GREETER_H
#define GREETER_H

#include <string>

class Greeter {
public:
    Greeter(const std::string& name);
    void greet() const;
private:
    std::string name;
};

#endif // GREETER_H
