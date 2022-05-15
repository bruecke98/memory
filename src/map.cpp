#include "map.hpp"
#include <string>
#include <vector>
#include <stdexcept>
#include <algorithm>
#include <iostream>

cppp::Map::Map(const std::size_t size) : size(size) {
    // TODO
    arr = (MapBucket*) new MapBucket(size);
    /**
    MapBucket mB(size);
    MapElement mapE;
    Item it;
    it.anzahl = 1;
    it.bezeichnung = "";
    mapE.key = "";
    mapE.value = {it};

    mB.at(0) = mapE;
    for (size_t i = 0; i < size-1; i++)
    {
        std::cout << i << std::endl;
        arr[i] = {mB};
    }

    **/
    
        
    
    //arr[0] ={mB};
    //std::cout << arr->size() << std::endl; 
}

cppp::Map::~Map() {
    // TODO
    delete arr;
    //arr = nullptr;
}

void cppp::Map::insert(const std::string& key, const std::vector<Item>& order) {
    // TODO
    //calculate hash
     std::size_t hash = calcHash(key);
    // mapBu[] = &arr;
    //arr[hash] = MapBucket(size);

    std::cout << "Hash: "<< hash << std::endl;


    std::cout  << arr[hash].size() << std::endl;


    
        MapElement mapEl;
        mapEl.key = key;
        mapEl.value = order;

    //check if *arr at position hash is empty
    if (arr[hash].size() == 0){
        //create a MapElemnt 


        // if line is included cout doesnt show anything
        arr[hash] = MapBucket(size);
        arr[hash].push_back(mapEl);
 
        std::cout << "first" << std::endl;

    }else{
        //if (arr[hash].at())
        arr[hash] = MapBucket(size);
        arr[hash].push_back(mapEl);

        std::cout << "second" << std::endl;
    }   

   


}

std::vector<cppp::Item> cppp::Map::get(const std::string& key) {
    std::size_t hash = calcHash(key);
    //arr[hash].erase
    //if (arr[hash].empty() || arr[hash].at()
    return {}; // TODO
}

void cppp::Map::remove(const std::string& key) {
    // TODO
}

std::size_t cppp::Map::calcHash(const std::string& key) {
    size_t sum = 0;
    for (char i : key) {
        sum += i;
    }
    //std::cout << sum << std::endl;

    return sum % size; // TODO
}