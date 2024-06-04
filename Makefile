# Makefile

CXX = g++
CXXFLAGS = -Iinclude -std=c++11
SRC_DIR = src
BUILD_DIR = build
TARGET = $(BUILD_DIR)/ComplexCppProject

SRCS = $(wildcard $(SRC_DIR)/*.cpp)
OBJS = $(patsubst $(SRC_DIR)/%.cpp,$(BUILD_DIR)/%.o,$(SRCS))

all: $(TARGET)

$(TARGET): $(OBJS)
    $(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJS)

$(BUILD_DIR)/%.o: $(SRC_DIR)/%.cpp
    mkdir -p $(BUILD_DIR)
    $(CXX) $(CXXFLAGS) -c $< -o $@

clean:
    rm -rf $(BUILD_DIR)/*

.PHONY: all clean
