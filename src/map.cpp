#include "map.hpp"
#include <string>
#include <vector>
#include <stdexcept>
#include <algorithm>
#include <iostream>

cppp::Map::Map(const std::size_t size) : size(size) {
    // TODO
    arr = (MapBucket*) new MapBucket[size];
    //MapElement mE = new MapElement();
    //MapBucket mB = new MapBucket(0);

    /**for (size_t i = 0; i < size; i++)
    {
        //arr[i].at(0) = mE;
        arr[i].push_back(mE);
        std::cout <<  i << std::endl;
        
    } **/
    
    
    
    
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
    delete[] arr;
    arr = nullptr;
}

void cppp::Map::insert(const std::string& key, const std::vector<Item>& order) {
    // TODO
    //calculate hash
     std::size_t hash = calcHash(key);
     bool vorhanden = false;
    // mapBu[] = &arr;
    //arr[hash] = MapBucket();

    std::cout << "Hash: "<< hash << std::endl;
    //arr[hash] = MapBucket();


    std::cout  << arr[hash].size() << std::endl;


    
        MapElement mapEl;
        mapEl.key = key;
        mapEl.value = order;

    //check if *arr at position hash is empty
    if (arr[hash].size() == 0){
        //create a MapElemnt 


        // if line is included cout doesnt show anything
        //arr[hash] = MapBucket({mapEl});
        arr[hash].push_back(mapEl);
 
        std::cout << "first" << std::endl;

    }else{
        

        for (size_t i = 0; i < arr[hash].size() ; i++)
        {
            /* code */

            if(arr[hash].at(i).key == key){
                arr[hash].at(i) = {mapEl};
                vorhanden = true;
            }
        }
        if (vorhanden == false){
            arr[hash].push_back(mapEl);
        }
        
        
        //arr[hash].push_back(mapEl);

        std::cout << "second" << std::endl;
    }   

   


}

std::vector<cppp::Item> cppp::Map::get(const std::string& key) {
    
      std::size_t hash = calcHash(key);
    MapElement emptyMapEl;
    //arr[hash].erase
    for (auto iteratorArr : arr[hash])
    {
        if (iteratorArr.key == key){
            return iteratorArr.value;
        }
    }
    throw std::invalid_argument("Fehler");

    return {}; // TODO
}

void cppp::Map::remove(const std::string& key) {
    // TODO
    std::size_t hash = calcHash(key);
    MapElement emptyMapEl;
    //arr[hash].erase
    for (auto i : arr[hash])
    {
        if (i.key == key){
            arr[hash] = {emptyMapEl};
        }
    }
}

std::size_t cppp::Map::calcHash(const std::string& key) {
    size_t sum = 0;
    for (char i : key) {
        sum += i;
    }
    //std::cout << sum << std::endl;

    return sum % size; // TODO
}