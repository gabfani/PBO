import java.util.Scanner;

public class KonversiSuhu {

    public static void main(String[] args) { //untuk demo langsung
        Scanner input = new Scanner(System.in);

        System.out.print("Masukkan suhu Celcius: ");
        double celcius = input.nextDouble();

        //untuk cetak ke layar dari method
        System.out.println("suhu celcius: " + celcius);
        konversiKeKelvin(celcius); 
        konversiKeFahrenheit(celcius);
        konversiKeRankine(celcius);
        konversiKeDelisle(celcius);
        konversiKeNewton(celcius);
        konversiKeReaumur(celcius);
        konversiKeRomer(celcius);
    }
    //dideklarasikan statiknyaa dalam method langsung
    public static void konversiKeKelvin(double celcius) {
        double kelvin = celcius + 273.15; //rumus
        System.out.println("konvert Kelvin: " + kelvin); //return value
    }
    public static void konversiKeFahrenheit(double celcius) {
        double fahrenheit = celcius * 1.8 + 32;
        System.out.println("konvert Fahrenheit: " + fahrenheit);
    }
    public static   void konversiKeRankine(double celcius){
        double ran = celcius*1.8+491.67;
System.out.println("konvert Rankine: "+ran);
    }
    public static void konversiKeDelisle(double celcius){
    double dels=(100-celcius)*1.5;
    System.out.println("konvert Delisle: "+dels);
}
public static void konversiKeNewton(double celcius){
    double newt=celcius*33/100;
    System.out.println("konvert Newton: "+newt);
}
public static void konversiKeReaumur(double celcius){
    double rea=celcius*0.8;
    System.out.println("konvert Reaumur: "+rea);
}
public static void konversiKeRomer(double celcius) {
        double romer = celcius * 21 / 40 + 7.5;
        System.out.println("konvert Romer: " + romer);
    }
}