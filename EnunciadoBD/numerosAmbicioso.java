public class numerosAmbicioso {
    public static void main(String[] args) {

       System.out.println(sumaDivisores(sumaDivisores(10)));
        //System.out.println(resultadoSumaDivisores(25));
        System.out.println(esPerfecto(6)); //true
         System.out.println(esPerfecto(7)); //false
          System.out.println(esPerfecto(15)); //false 
           System.out.println(esPerfecto(28)); //true
    }

    public static int sumaDivisores(int numero){
        int suma = 0;
        for(int i = 1; i < numero; i++){
            if(numero % i == 0){
                suma = suma + i;
            }
        }
        return suma;
    }
    public static boolean esPerfecto(int numero){ // 6 -> 1;2;3 -> 6
        if(numero == sumaDivisores(numero)){
            return true;
        }
        return false;
    }
    
}
    
