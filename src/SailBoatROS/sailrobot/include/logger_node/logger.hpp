#ifndef LOGGER_HPP
#define LOGGER_HPP

#include "controller.hpp" //Includes the Controller class which initialize automatically all the communication with the arduino
#include <fstream>
#include <iostream>

namespace Sailboat {
    class Data_logger : public Controller {
    public:
        Data_logger(std::string name, int looprate) : Controller(name, looprate, 0) {}

        void setup(ros::NodeHandle *n);
        bool loopUnpublished();
        geometry_msgs::Twist control();

    private:
        std::ofstream outfile;
    };
}
#endif