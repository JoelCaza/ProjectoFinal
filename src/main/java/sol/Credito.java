package sol;

public class Credito {
    private double monto;
    private int plazo;

    public Credito() {
    }

    public Credito(Double monto, int plazo) {
        this.monto = monto;
        this.plazo = plazo;
    }

    public Double getMonto() {
        return monto;
    }

    public void setMonto(Double monto) {
        this.monto = monto;
    }

    public int getPlazo() {
        return plazo;
    }

    public void setPlazo(int plazo) {
        this.plazo = plazo;
    }

    public double calcularTotal() {
        double interes = 0;
        switch (plazo) {
            case 12:
                interes = 0.25;
                break;
            case 24:
                interes = 0.45;
                break;
            case 36:
                interes = 0.60;
                break;
            case 60:
                interes = 0.75;
                break;
        }
        return monto * (1 + interes);
    }

    public double calcularPagoMensual() {
        return calcularTotal() / plazo;
    }

}

