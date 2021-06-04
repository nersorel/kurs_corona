#ifndef PHYSICSSIMULATIONS_VEMATH_H
#define PHYSICSSIMULATIONS_VEMATH_H

#include <cmath>
#include <vector>
#include <cstdlib>
#include <fstream>
#include <complex>


static const double PI = 3.141519;

namespace vemath {

    class Pole
    {
    private:
        unsigned int N; //количество точек, человек
        double R; //размеры локации, размеры
        double velocity; //скорость человека
        double acceleration; //ускорение человека
        double r; //Радиус возможного заражения, радиус сферы вокруг точки
        int i_totalTime;
        double totalTime;
        int inflectedNumber;
    public:
        Pole(unsigned int N = 500, double R = 300*100, double velocity = 200, double acceleration = 2.f,double r = 700,
             int i_totalTime = 0, double totalTime = 0, int inflectedNumber = 0)
             {
                 this->N = N;
                 this->R = R;
                 this->velocity = velocity;
                 this->acceleration = acceleration;
                 this->r = r;
                 this->inflectedNumber = inflectedNumber;
                 this->i_totalTime = i_totalTime;
                 this->totalTime = totalTime;
             };
        int get_inflectedNumber(){return inflectedNumber;}
        int& set_inflectedNumber(){return inflectedNumber;}
        double& set_r(){return r;}
        unsigned int& set_N(){return N;}
        double& set_R(){return R;}
        double& set_velocity(){return velocity;}
        double& set_acceleration(){return acceleration;}
        double& set_totaltime(){return totalTime;}
        int& set_i_totalTime(){return i_totalTime;}
    };

    class Point2D {
    private:

        double x = 0;
        double y = 0;

        double Vx = 0;
        double Vy = 0;

        double Ax = 0;
        double Ay = 0;

        bool inflected = false;
    public:
        Point2D() {
            x = 0;
            y = 0;
        }

        Point2D(double d, double d1) {
            x = d;
            y = d1;
        }

        double getx() { return x; }
        double gety() { return y; }
        double getVx() { return Vx; }
        double getVy() { return Vy; }
        double getAx() { return Ax; }
        double getAy() { return Ay; }
        bool getInflected() { return inflected; }
        void setInflected(bool d) { inflected = d; }
        void setx(double d) { x = d; }
        void sety(double d) { y = d; }
        void setVx(double d) { Vx = d; }
        void setVy(double d) { Vy = d; }
        void setAx(double d) { Ax = d; }
        void setAy(double d) { Ay = d; }
        Point2D &operator+=(const Point2D &point2D) {
            this->x += point2D.x;
            this->y += point2D.y;
        }
        Point2D &operator=(const Point2D &point2D) {
            this->x = point2D.x;
            this->y = point2D.y;
            return *this;
        }
        Point2D &operator*=(double number) {
            this->x *= number;
            this->y *= number;
        }
        Point2D &operator*(double number) {
            this->x *= number;
            this->y *= number;
        }
        double operator*(const Point2D &point2D) const { return this->x * point2D.x + this->y * point2D.y; }
        Point2D operator-(const Point2D &point2D) const { return {this->x - point2D.x, this->y - point2D.y}; }
        Point2D operator+(const Point2D &point2D) const { return {this->x + point2D.x, this->y + point2D.y}; }
        Point2D normalize() { return Point2D{this->x / abs(), this->y / abs()}; }
        double abs() { return sqrt(x * x + y * y); }
    };
}
#endif //PHYSICSSIMULATIONS_VEMATH_H