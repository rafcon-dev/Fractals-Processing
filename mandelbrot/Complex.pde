class Complex
{
    double real;   // the real part
    double img;   // the imaginary part
    
    public Complex(double real, double img) 
    {
      this.real = real;
      this.img = img;
    }
    
    public Complex addi(Complex b)
    {
      return new Complex(this.real + b.real, this.img + b.img);
    }
    
    public Complex multi(Complex b) 
    {
      double real = this.real * b.real - this.img * b.img;
      double img = this.real * b.img + this.img * b.real;
      return new Complex(real, img);
    }
    
    public double complexSize()
    {
        return Math.sqrt(this.real*this.real + this.img*this.img);
    }
    
}