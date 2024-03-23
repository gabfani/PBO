import java.util.Scanner;

public class HitungNilai {

    String nim;
    String nama;
    double nUts;
    double nTugas;
    double nUas;
    double pnUts;
    double pnTugas;
    double pnUas;
    double nAkhir;

    public HitungNilai() {
        Scanner input = new Scanner(System.in);

        System.out.print("Masukkan NIM: ");
        nim = input.nextLine();

        System.out.print("Masukkan Nama: ");
        nama = input.nextLine();

        System.out.print("Masukkan Nilai UTS: ");
        nUts = input.nextDouble();

        System.out.print("Masukkan Nilai Tugas: ");
        nTugas = input.nextDouble();

        System.out.print("Masukkan Nilai UAS: ");
        nUas = input.nextDouble();

        hitungNilai();
    }

    public void hitungNilai() {
        pnUts = nUts * 0.35;
        pnTugas = nTugas * 0.3;
        pnUas = nUas * 0.35;

        nAkhir = pnUts + pnTugas + pnUas;
    }

    public void cetakNilai() {
        System.out.println("NIM: " + nim);
        System.out.println("Nama: " + nama);
        System.out.println("Nilai UTS: " + nUts);
        System.out.println("Nilai Tugas: " + nTugas);
        System.out.println("Nilai UAS: " + nUas);
        System.out.println("-Hasil-");
        System.out.println("UTS: " + pnUts);
        System.out.println("Tugas: " + pnTugas);
        System.out.println("UAS: " + pnUas);
        System.out.println("Nilai Akhir: " + nAkhir);
    }

    public static void main(String[] args) {
        HitungNilai hitungNilai = new HitungNilai();
        hitungNilai.cetakNilai();
    }
}
