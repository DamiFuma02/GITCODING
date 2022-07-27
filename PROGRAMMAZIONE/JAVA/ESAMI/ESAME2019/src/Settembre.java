public class Settembre {
    /**
     * @param a MAHNATTAN PATH
     * @param b MAHNATTAN PATH
     * @return
     */
    public static int commonStretches(String a, String b){
        // l = m + n = nrow + ncol
        int l = a.length();   // = b.length()
        int count = 0;
        int k = 0;   // NUMERO DI PASSI    0 <= k <= l = (m+n)    ==> indice della stringa a,b
        int[] counter = new int[]{0,0} ;
        // counter[0] => n° di "0" di A    ------  counter[1] => n° di "0" di B

        // numero di "1" in a, b è costante, come quelli di "0"


        while (k < l){

            if ((counter[0] == counter[1]) && (a.charAt(k) == b.charAt(k) )){
                count+=1;
            }
            // AGGIORNAMENTO CONTATORI
            if (a.charAt(k) == '0'){
                counter[0]+=1;
            }
            if (b.charAt(k) == '0'){
                counter[1]+=1;
            }

            k+=1;
        }






        return count;

    }
}
