#include "food.hpp"
#include <fstream>
#include <sstream>
#include <string>
#include <stdexcept>
#include <iostream>


Food::Food(int bestellnummer, std::string bezeichnung, float preis) :
        bestellnr(bestellnummer), bezeichnung(bezeichnung), preis(preis) {}

std::string Food::getBezeichnung() const {
    return bezeichnung;
}

float Food::getPreis() const {
    return preis;
}

int Food::getBestellnummer() const {
    return bestellnr;
}

void speichern(const std::string &dateiname, const std::vector<Food> &speisen) {
    // TODO 2.1.a

    std::ofstream myFile;
    myFile.open("." + dateiname, std::ios::out); // write mode

    // Throw an exception in case the file could not be open
//    if (!myFile) {
//        throw std::runtime_error("Error for writing! File could not be opened : File not found");
//    }

    if (myFile.is_open()) {
        for (const auto &food : speisen) {
            myFile << food.getBestellnummer() << ";" << food.getBezeichnung() << ";" << food.getPreis() << std::endl;
        }
        myFile.close();
    } else {
        std::cout << "The File is not opened!" << std::endl;
    }
}

void laden(const std::string &dateiname, std::vector<Food> &speisen) {

    // TODO 2.1.b Bemerkung die Methode hat auf IOS sowie auch auf auf Linux funktionrt.
    //  Auf windows hatten wir das Problem mit tmpnam(nullptr) da der erzeugt path der Datein mit "\" als praefix erstellt wurde.

    std::ifstream myFile;
    myFile.open("." + dateiname, std::ios::in); // read mode

    //    if (!myFile) {
//        throw std::runtime_error("Error for reading! File could not be opened : File not found");
//    }

    std::string line;

    while (std::getline(myFile, line)) {

        std::stringstream stream(line);
        std::vector<std::string> elements; // vector of strings

        std::string element;

        while (std::getline(stream, element, ';')) {
            elements.push_back(element); // elements : vector[0] = first food
        }

        if (elements.size() != 3) {
            throw std::runtime_error(
                    "The file is corrupted. Elements' data could not be converted to food class attributes.");
        }

        try {
            speisen.push_back(Food(std::stoi(elements[0]), elements[1], std::stof(elements[2])));
            // Construct and insert element at the end of the vector
        } catch (const std::invalid_argument &myEx) {
            throw std::runtime_error(std::string("Error! pushing an element to the vector has failed") + myEx.what());
        }
    }

    myFile.close();
}