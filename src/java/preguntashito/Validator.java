
package preguntashito;

import controladores.UsuariosJpaController;
import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.Query;


public class Validator {
    EntityManagerFactory emf = Persistence.createEntityManagerFactory("PreguntasHITOPUs");
    EntityManager em = emf.createEntityManager();
    UsuariosJpaController ujc = new UsuariosJpaController(emf);


    public boolean Validar(String user, int idV) {
        Boolean bandera = false;
        String jpql = "SELECT v FROM Usuarios v WHERE v.nombre='" + user + "' AND v.idUsuario=" + idV;
        Query query = em.createQuery(jpql);
        List<Usuarios> articulos_al = query.getResultList();
        System.out.println(articulos_al.get(0));
        if (articulos_al.size() >= 1) {
            bandera = true;
        }
        System.out.println(bandera);
        return bandera;
    }
}
