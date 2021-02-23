package preguntashito;

import controladores.PreguntasJpaController;
import controladores.UsuariosJpaController;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;

public class OperacionesJPA {

    EntityManagerFactory emf = Persistence.createEntityManagerFactory("PreguntasHITOPU");
    EntityManager em = emf.createEntityManager();
    PreguntasJpaController pjc = new PreguntasJpaController(emf);

    EntityManagerFactory emf2 = Persistence.createEntityManagerFactory("PreguntasHITOPU");
    EntityManager em2 = emf.createEntityManager();
    UsuariosJpaController ujc = new UsuariosJpaController(emf2);

    private static String nombreArchivo = "pregunta.txt";
    private static String rutaArchivo = "src/preguntashito/";

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

    public void crearPreguntas(Preguntas preguntas) {
        try {
            em.getTransaction().begin();
            em.persist(preguntas);
            em.getTransaction().commit();
            System.out.println("CREAR CORRECTO");
        } catch (Exception e) {
            System.out.println("ERROR CREAR");
        }
    }

    public List<Preguntas> BuscarTodasPreguntas() {
        List<Preguntas> clientes_al = pjc.findPreguntasEntities();
        return clientes_al;
    }

    public boolean Validar(String user, int idV) {
        Boolean bandera = false;
        String jpql = "SELECT u FROM Usuarios u WHERE u.nombre='" + user + "' AND u.idUsuario=" + idV;
        Query query = em2.createQuery(jpql);
        List<Usuarios> articulos_al = query.getResultList();
        System.out.println(articulos_al.get(0));
        if (articulos_al.size() >= 1) {
            bandera = true;
        }
        System.out.println(bandera);
        return bandera;
    }

    public List<Usuarios> BuscarTodosUsuarios() {
        List<Usuarios> usuarios_al = ujc.findUsuariosEntities();
        return usuarios_al;
    }

    public void borrarTodosCamposPreguntas() {
        em.getTransaction().begin();
        em.createNativeQuery("truncate table preguntas").executeUpdate();
        em.getTransaction().commit();
    }
}
