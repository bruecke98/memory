#include "map.hpp"
#include <string>
#include <vector>
#include <stdexcept>
#include <algorithm>
#include <iostream>

cppp::Map::Map(const std::size_t size) : size(size) {
    // TODO
    arr = new MapBucket(size);
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
    std::cout << arr->size() << std::endl; 
}

cppp::Map::~Map() {
    // TODO
    delete[] arr;
    arr = nullptr;
}

void cppp::Map::insert(const std::string& key, const std::vector<Item>& order) {
    // TODO
    //calculate hash
     std::size_t hash = calcHash(key);
    //check if *arr at position hash is empty
    if (&arr[hash].empty){
        //create a MapElemnt 
        MapElement mapEl;
        mapEl.key = key;
        mapEl.value = order;
        //create MapBucket
        MapBucket mapBu(size);
        mapBu.push_back(mapEl);

        //write the MapBucket in arr at position hash
        //ERROR program stops working
        arr[hash] = mapBu;
        //&arr[hash].push_back(mapEl);

    }else{

    }

    // insert a MapElement in *arr (MapBucket)
    // MapElement is 
    //MapBucket arr;



/**

        std::size_t hash = calcHash(key);


               std::cout << &arr[hash].empty << std::endl;
               std::cout << &arr[hash].at(0).key << std::endl;




       // arr = this->arr;
    //MapBucket *arr = new MapBucket[size];
    MapBucket mB(size);
    MapElement mapE;
    Item it;
    it.anzahl = 1;
    it.bezeichnung = "r";
    mapE.key = "a";
    mapE.value = {it};

    mB.push_back(mapE); **/
    //arr[hash] ={mB};
   // mB.at(0) = {mapE};
    //arr->at(0) = 
        //std::cout << arr[hash].at(0).key << std::endl;
        //std::cout << &arr << std::endl;
        //std::cout << arr +1  << std::endl;
        //std::cout << arr[hash] << std::endl;



    /**
    if (true){

        MapBucket *arr = new MapBucket[size];
        MapBucket mB(size);
        MapElement mapE;
        mapE.key = key;
        mapE.value = order;

        mB.at(0) = mapE;
        arr[hash] ={mB};
                                    std::cout << "erster" << std::endl;

    }else{
                            std::cout << "zweiter" << std::endl;

    }

    **/


 

                std::cout << "geschafft" << std::endl;


}

std::vector<cppp::Item> cppp::Map::get(const std::string& key) {
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