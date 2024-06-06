package sol;

public class Persona {
    private String nombre;
    private int edad;
    private String sexo;
    private double sueldoMensual;


    public Persona() {

    }
    public Persona(String nombre, int edad, String sexo, double sueldoMensual) {
        this.nombre = nombre;
        this.edad = edad;
        this.sexo = sexo;
        this.sueldoMensual = sueldoMensual;

    }


    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public double getSueldoMensual() {
        return sueldoMensual;
    }

    public void setSueldoMensual(double sueldoMensual) {
        this.sueldoMensual = sueldoMensual;
    }



}

