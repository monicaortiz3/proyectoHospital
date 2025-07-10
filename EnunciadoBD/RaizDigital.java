public class RaizDigital {

    // 18 -> 1 + 8 = 9
    // 298 -> 2 + 9 + 8 = 19 
        // 9 + 1 = 10
            // 1 + 0 = 1
public static void main(String[] args) {
raices(1, 1000);
  
}

    public static int sumaDigitos(int numero){
        int suma = 0;

        while(numero != 0){
            suma = suma + (numero % 10);
            numero = numero / 10;
        }

        return suma;
    }

    public static int raizDigital(int numero){ // 298
        int raiz = sumaDigitos(numero); // 19

        while(raiz > 9){ //19>9 10 > 9 1>9
            raiz = sumaDigitos(raiz); // 10 1
        }

        return raiz; // 1
    }

    public static void raices(int inicio, int fin){
        for (int i = inicio; i < fin; i++) {
            System.out.println(raizDigital(i));
        }
    }
    
}
