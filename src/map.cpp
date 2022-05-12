#include "map.hpp"
#include <string>
#include <vector>
#include <stdexcept>
#include <algorithm>
#include <iostream>

cppp::Map::Map(const std::size_t size) : size(size) {
    // TODO
    //const s = size;
    MapBucket * arr = new MapBucket[size];
    //std::cout << arr1 << std::endl;

}

cppp::Map::~Map() {
    // TODO
    delete[] arr;
}

void cppp::Map::insert(const std::string& key, const std::vector<Item>& order) {
    // TODO
    std::size_t hash = calcHash(key);
    MapBucket *mapB = arr;

    //stimmt auch nicht 
    bool empt = mapB->empty();


    if (empt){ 

        std::cout << mapB << std::endl;
        

        MapElement mapE;

        mapE.key = key;
        mapE.value = order;


        //dieser Schritt klappt nicht
        mapB[hash] = {{mapE}};
        //mapB->push_back(mapE);


        arr = mapB;
        
        
        std::cout  << arr <<  " - made it" << std::endl;



        
    }else{

        

        std::cout << "zweiter" << std::endl;

    }
}

std::vector<cppp::Item> cppp::Map::get(const std::string& key) {
    return {}; // TODO
}

void cppp::Map::remove(const std::string& key) {
    // TODO
}

std::size_t cppp::Map::calcHash(const std::string& key) {
    return key.length() % size; // TODO
}