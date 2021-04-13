//
// Created by ivan-Vectozavr on 17.02.2020.
//

#ifndef PHYSICSSIMULATIONS_VEMATH_H
#define PHYSICSSIMULATIONS_VEMATH_H

#include <cmath>
#include <vector>
#include <cstdlib>
#include <fstream>
#include <complex>

static const double PI = 3.141519;

namespace vemath {
    // struct Point2D allows you to do simple calculations with vectors really fast and comfortably.
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
        Point2D(){x=0;y=0;}
        Point2D(double d, double d1) {x=d; y=d1;}
        double getx(){return x;}
        double gety(){return y;}
        double getVx(){return Vx;}
        double getVy(){return Vy;}
        double getAx(){return Ax;}
        double getAy(){return Ay;}
        bool getInflected(){return inflected;}
        void setInflected(bool d){inflected = d;}
        void setx(double d){x=d;}
        void sety(double d){y=d;}
        void setVx(double d){Vx=d;}
        void setVy(double d){Vy=d;}
        void setAx(double d){Ax=d;}
        void setAy(double d){Ay=d;}
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
        friend bool saveVectorPoint2DToFile(const std::vector<Point2D> &data, const std::string &fileName, unsigned long long N);
    };
    class Point3D {
    private:
        double x = 0;
        double y = 0;
        double z = 0;

        double Vx = 0;
        double Vy = 0;
        double Vz = 0;

        double Ax = 0;
        double Ay = 0;
        double Az = 0;

        double mass = 0;
    public:
        double getx(){return x;}
        double gety(){return y;}
        double getz(){return z;}
        void setx(double d){x=d;}
        void sety(double d){y=d;}
        void setz(double d){z=d;}
        Point3D(double d, double d1, double d2){x=d; y=d1; z=d2;}
        Point3D& operator+=(const Point3D& point2D) { this->x += point2D.x; this->y += point2D.y; this->z += point2D.z; }
        Point3D& operator=(const Point3D& point2D) { this->x = point2D.x; this->y = point2D.y; this->z = point2D.z; return *this; }
        Point3D& operator*(double number) { this->x *= number; this->y *= number; this->z *= number;}
        Point3D operator-(const Point3D& point2D) const { return {this->x - point2D.x, this->y - point2D.y, this->z - point2D.z}; }
        Point3D operator+(const Point3D& point2D) const { return {this->x + point2D.x, this->y + point2D.y, this->z + point2D.z}; }

        Point3D &operator*=(double number) {
            this->x *= number;
            this->y *= number;
            this->z *= number;
        }
        Point3D normalize() { return Point3D{this->x/abs(), this->y/abs(), this->z/abs()};}
        double abs() {return sqrt(x*x + y*y + z*z); }
    };

    // struct Complex allows you to store complex numbers.
    struct Complex {
        double real = 0;
        double imagine = 0;

        Complex operator*(const Complex &complex) const { return {real*complex.real - imagine*complex.imagine, imagine*complex.real + real*complex.imagine}; }
        Complex &operator+=(const Complex &complex) {
            this->real += complex.real;
            this->imagine += complex.imagine;
        }

        [[nodiscard]] double abs() const {return sqrt(real*real + imagine*imagine); }
    };
    struct ComplexPlot {
        double _xn = 1;
        [[nodiscard]] double xn() const { return _xn; }

        std::vector<std::pair<double, std::complex<double>>> v_c;

        unsigned long long size() const { return v_c.size(); }

        [[nodiscard]] std::vector<Point2D> abs() const{
            std::vector<Point2D> result;
            for(int i = 0; i < v_c.size(); i++)
                result.push_back({v_c[i].first, std::abs(v_c[i].second)});
            return result;
        }

        [[nodiscard]] std::vector<Point2D> real() const{
            std::vector<Point2D> real;
            for(int i = 0; i < v_c.size(); i++)
                real.push_back({v_c[i].first, v_c[i].second.real()});
            return real;
        }

        [[nodiscard]] std::vector<Point2D> imagine() const{
            std::vector<Point2D> imagine;
            for(int i = 0; i < v_c.size(); i++)
                imagine.push_back({v_c[i].first, v_c[i].second.imag()});
            return imagine;
        }

        [[nodiscard]] std::vector<Point2D> phase() const{
            std::vector<Point2D> _phase;
            for(int i = 0; i < v_c.size(); i++)
                _phase.push_back({v_c[i].first, std::arg(v_c[i].second)});
            return _phase;
        }

        void adaptiveFilter(int sensitive = 10) {
            double max_ampl = 0;
            for(auto el : v_c)
                if(max_ampl < std::abs(el.second))
                    max_ampl = std::abs(el.second);
            for(auto& el : v_c)
                if(std::abs(el.second) < (double)max_ampl/sensitive)
                    el.second = {0, 0};
        }

        void cut(int from = 0, int to = 0) {
            for(int i = from; i < to; i++) {
                v_c[i].second = {0, 0};
            }
        }

        void push(double x, std::complex<double> z){ v_c.emplace_back(x, z); }

    };

    // save 2D plot from <data> to "filename"
    bool saveVectorPoint2DToFile(const std::vector<Point2D> &data, const std::string &fileName = "data.dat", unsigned long long N = 0);
    // simple fourier transform of 2D plot. Without imagine component.
    void fourierTransform(const ComplexPlot& data, ComplexPlot& transform);
    // add some noise to 2D plot <data> with amplitude <noiseAmplitude>
    void inverseFourierTransform(const ComplexPlot& data, ComplexPlot& transform);
    // convolution of 2 2D plots <data1> and <data2>. result in <conv>
    void convolution(const ComplexPlot& data1, const ComplexPlot& data2, ComplexPlot& conv);
    // cross corelation of 2 2D plots <data1> and <data2>. result in <conv>
    void crossCorrelation(const ComplexPlot& data1, const ComplexPlot& data2, ComplexPlot& cross);
    // High frequency filter. Acts from <in> -> <out> considering frequency in [0, freq]
    void highFilter(const ComplexPlot& in, ComplexPlot& out, int freq = 0);
    // add some noise to 2D plot <data> with amplitude <noiseAmplitude>
    void addNoise(ComplexPlot& data, double noiseAmplitude = 0.1, int seed = 1234);

    //return min x from ComplexPlot
    double minx(const ComplexPlot& data);
    //return max x from ComplexPlot
    double maxx(const ComplexPlot& data);
    //return min y from ComplexPlot
    double miny(const ComplexPlot& data);
    //return max y from ComplexPlot
    double maxy(const ComplexPlot& data);

    [[nodiscard]] Point3D randomDirection(int seed = 1234);

    //std::vector<int> colorInterpolate(double progress) {
    //    std::vector<int> result_color = {0, 0, 255};
//
    //    if((progress <= 0) || (progress >= 1))
    //        return (progress <= 0) ? result_color : std::vector<int>{255,0,0};
    //    int i = 0;
    //    for(i = 0; progress > (double)(i+1)/4; i++)
    //        result_color[(i+1)%3] = (i%2 == 0) ? 255 : 0;
    //    result_color[(i+1)%3] = (i%2 == 0) ? (4*progress - i)*255 : (1 + i-4*progress)*255;
//
    //    return result_color;
    //}
}
#endif //PHYSICSSIMULATIONS_VEMATH_H
