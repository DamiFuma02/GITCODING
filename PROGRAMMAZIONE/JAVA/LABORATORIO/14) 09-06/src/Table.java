import puzzleboard.PuzzleBoard;

public class Table {
    private final int size;
    private boolean ordered;
    private String config;
    private int[][] matrix;
    private PuzzleBoard gui ;


    public Table(int n){
        size=n;
        ordered = false;
        gui = new PuzzleBoard(size);
        matrix = createTable(new int[n][n]);
        config = setConfig(matrix);

    }

    /**
     * @param matrix MATRICE VUOTA Già DIMENSIONATA
     * @return MATRICE RIEMPITA CON VALORI DA 1 a n^2-1, con un BUCO rappresentato dallo 0
     */
    private int[][] createTable(int[][] matrix) {

        int s = matrix.length;
        // DA 1 a s e 0/1 per indicare se è già stato usato
        int[][] values = new int[s*s][2];
        for (int i = 0; i < s*s; i++) {
            values[i][0] = i;
            values[i][1] = 0;
        }
        // genera un numero random tra 1 e s^2 - 1
        System.out.println("ciao");
        for (int i = 0; i < s; i++) {
            for (int j = 0; j < s; j++) {
                // 0 - s^2-1
                int f;
                do {
                    // FINCHè IL NUMERO IN POSIZIONE F è STATO GIà USATO NE GENERA UN ALTRO
                    f = (int) Math.floor(Math.random()*(s*s));
                } while ((values[f][1] == 1));
                gui.setNumber(i+1,j+1,values[f][0]);
                matrix[i][j] = values[f][0];
                values[f][1] = 1;
                gui.display();
            }
        }
        config = setConfig(matrix);
        return matrix;
    }

    private String setConfig(int[][] matrix) {
        int s = matrix.length;
        String c = "";
        for (int i = 0; i < s; i++) {
            for (int j = 0; j < s; j++) {
                if (matrix[i][j] == 0) c = c+"empty,";
                else c = c+matrix[i][j]+",";
            }
        }
        return c;
    }


    public String getConfig() {
        return config;
    }


    /**
     * @param riga RIGA
     * @param colonna COLONNA
     * @return vero o falso se il tassello è movibile
     */
    private int[] movable(int riga, int colonna){
        if (riga==0){
            if (colonna == 0){
                if (matrix[riga][colonna+1]==0){
                    return new int[]{riga, colonna+1, 1};
                } else if (matrix[riga+1][colonna]==0){
                    return new int[]{riga+1, colonna, 1};
                }
            } else if (colonna == size-1){
                if (matrix[riga][colonna-1]==0) return new int[]{riga, colonna-1, 1};
                if (matrix[riga+1][colonna]==0) return new int[]{riga+1, colonna, 1};
            } else {
                if (matrix[riga][colonna-1] == 0 ) return new int[]{riga, colonna-1, 1};
                if (matrix[riga][colonna+1]==0) return new int[]{riga, colonna+1, 1};
                if (matrix[riga+1][colonna]==0)  return new int[]{riga+1, colonna, 1};
            }
        }
        else if (riga == size-1){
            if (colonna == 0){
                if (matrix[riga][colonna+1]==0 ){
                    return new int[]{riga, colonna+1, 1};
                } else if (matrix[riga-1][colonna]==0){
                    return new int[]{riga-1, colonna, 1};
                }
            } else if (colonna == size-1){
                if (matrix[riga][colonna-1]==0 ) return new int[]{riga, colonna-1, 1};
                else if (matrix[riga-1][colonna]==0){
                    return new int[]{riga-1, colonna, 1};
                }
            } else {
                if (matrix[riga][colonna-1] == 0 ) return new int[]{riga, colonna-1, 1};
                else if (matrix[riga][colonna+1]==0) return new int[]{riga, colonna+1, 1};
                else if (matrix[riga-1][colonna]==0) return new int[]{riga-1, colonna, 1};
            }
        } else {
            if (colonna == 0){
                if (matrix[riga][colonna+1]==0){
                    return new int[]{riga, colonna+1, 1};
                }
                else if (matrix[riga-1][colonna]==0) return new int[]{riga-1, colonna, 1};
                else if (matrix[riga+1][colonna]==0) return new int[]{riga+1, colonna, 1};
            } else if (colonna == size-1){
                if (matrix[riga][colonna-1]==0) return new int[]{riga, colonna-1, 1};

                if (matrix[riga-1][colonna]==0) return new int[]{riga-1, colonna, 1};
                if (matrix[riga+1][colonna]==0) return new int[]{riga+1, colonna, 1};
            } else {
                if (matrix[riga][colonna-1] == 0   ) return new int[]{riga, colonna-1, 1};
                else if (matrix[riga][colonna+1]==0) return new int[]{riga, colonna+1, 1};
                if (matrix[riga-1][colonna]==0 ) return new int[]{riga-1, colonna, 1};
                else if ( matrix[riga+1][colonna]==0) return new int[]{riga+1, colonna, 1};
            }
        }
        return new int[]{-1, -1, 0};
    }


    public String move(int i, int j){
        // se non si puo muovere si termina
        int[] coords =movable(i,j);
        if (coords[2]==0) return config;
        int tmp = matrix[i][j];
        gui.setNumber(coords[0],coords[1],tmp);
        matrix[coords[0]][coords[1]] = tmp;
        // VUOTO
        gui.clear(i,j);
        matrix[i][j] = 0;
        config = setConfig(matrix);
        gui.display();
        return config;
    }





}
