/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package preguntashito;

import controladores.PreguntasJpaController;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

/**
 *
 * @author kk
 */
public class NewMain {


    private static String nombreArchivo = "pregunta.txt";
    private static String rutaArchivo = "src/preguntashito/";

    public static void main(String[] args) {
        //mostrarTodoContenidoArhivoTextoPregunta();
        //mostrarListaPreguntas();
        //insertarDocumentosColeccionPregunta();
        //mostrarTodosDocumentosColeccionPreguntas();
        //recuperarOpcionesListaPreguntas();
        List<Preg> preguntas_al = retornarListaPreguntas2();

        System.out.println(preguntas_al.get(1));
    }

    
    public static List<Preg> retornarListaPreguntas2() {
        File f1 = new File("C:\\Users\\cr1st\\Documents\\NetBeansProjects\\PreguntasHITO\\src\\java\\preguntashito\\pregunta.txt");
        String rutaAbsolutaArchivo = f1.getAbsolutePath();
        System.out.println("Ruta del archivo : " + rutaAbsolutaArchivo);

        String registro;

        int idPregunta;
        String enunciado;
        String opcion1;
        String opcion2;
        String opcion3;
        String opcion4;
        String respuesta;
        String[] parte;
        List<Preg> preguntas_al = new ArrayList<Preg>();

        File f;
        FileReader fr = null;
        BufferedReader br;

        try {
            f = new File(rutaAbsolutaArchivo);
            fr = new FileReader(f);
            br = new BufferedReader(fr);
            while ((registro = br.readLine()) != null) {
                parte = registro.split("/");
                idPregunta = Integer.parseInt(parte[0].trim());
                enunciado = parte[1].trim();
                opcion1 = parte[2].trim();
                opcion2 = parte[3].trim();
                opcion3 = parte[4].trim();
                respuesta = parte[5].trim();
                
               
                Preg pregunta = new Preg(idPregunta, enunciado, opcion1, opcion2, opcion3, respuesta);
                preguntas_al.add(pregunta);
            }
            return preguntas_al;
        } catch (IOException e) {
            return null;
        } finally {
            try {
                if (null != fr) {
                    fr.close();
                }
            } catch (IOException e) {
                return null;
            }
        }
    }
}
