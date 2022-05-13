#include "map.hpp"
#include <string>
#include <vector>
#include <stdexcept>
#include <algorithm>
#include <iostream>

cppp::Map::Map(const std::size_t size) : size(size) {
    // TODO
    //const s = size;
    //arr[15];
    MapBucket *arr = new MapBucket(size);
    
    
    
    //std::cout << arr1 << std::endl;

    //std::vector<MapElement> arr; 


}

cppp::Map::~Map() {
    // TODO
    delete[] arr;
}

void cppp::Map::insert(const std::string& key, const std::vector<Item>& order) {
    // TODO
    MapBucket arr;
    //arr.resize(size);
    //arr.reserve(size);
    std::size_t hash = calcHash(key);
    
    
    //speichert nicht korrekt in arr
    std::cout << arr.at(0).key.data() << std::endl;
    
    if (!arr.empty()){ 
        

        MapElement mapE;
        mapE.key = key;
        mapE.value = order;
        //arr.resize(size);
        arr.at(0) = mapE;
        //arr.at(hash) = mapE;
        //arr.assign(*mapE);


        
        std::cout  << arr.at(0).value.at(0).anzahl <<  " - made it" << std::endl;



        
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