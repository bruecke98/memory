#include <iostream>
#include "map.hpp"
#include "food.hpp"
#include <string>



int main(int argc, char** argv) {
    // TODO Kreativaufgabe 
    //cppp::Map map(16);
    std::vector<cppp::Item> a = { { 1, "a" }, { 2, "b" } };
    std::vector<cppp::Item> b = { { 3, "c" }, { 4, "d" } };
    ;

    cppp::Map map(16);


    map.insert("a", a);
   // map.insert("a", a);
    map.insert("b", b);
    

    

}
