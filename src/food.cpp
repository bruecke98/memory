#include "food.hpp"
#include <fstream>
#include <sstream>
#include <string>
#include <stdexcept>
#include <iostream>

Food::Food(int bestellnummer, std::string bezeichnung, float preis) : bestellnr(bestellnummer), bezeichnung(bezeichnung), preis(preis) {}

std::string Food::getBezeichnung() const {
    return bezeichnung;
}

float Food::getPreis() const {
    return preis;
}

int Food::getBestellnummer() const {
    return bestellnr;
}

void speichern(const std::string& dateiname, const std::vector<Food>& speisen) {
    std::ofstream file;
    file.open ("../food.csv", std::ios::app);
    for (Food f: speisen){
        file << (std::to_string(f.getBestellnummer()) + ';' + f.getBezeichnung() + ';' +  std::to_string(f.getPreis()) + '\n');
    }
    file.close();
}

void laden(const std::string& dateiname, std::vector<Food>& speisen) {

    std::cout << "Loaded " << speisen.size() << std::endl;
    // TODO,
    try{
    std::ifstream inFile("../food.csv");
    std::string csvLine;
    
        //alle linien der csv 
        while (getline(inFile, csvLine)) {
                std::istringstream csvStream(csvLine);
                std::string csvElement;
                // read every element from the line that is seperated by commas
                // and put it into the vector or strings

                //variablen für das Food Objekt
                int bestell_nr;
                std::string bezeichnung;
                float preis;

                int i = 0 ;
                //alle einträge pro Linie
                while( getline(csvStream, csvElement, ';') )
                {
                    if (i==0) 
                        bestell_nr = std::stoi(csvElement);
                        
                    if (i==1) 
                        bezeichnung = csvElement;
                        
                    if (i==2) 
                        preis = std::stod(csvElement);
                        
                    i++;
                }
                Food load_food(bestell_nr, bezeichnung, preis);
                speisen = {load_food};
        }
    }catch (const std::runtime_error& error){
        std::cout << "Fehler beim lesen der CSV-Datei" << std::endl;
    }

    
    
}
