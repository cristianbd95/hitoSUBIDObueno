/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package preguntashito;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Operaciones {

    private Connection conexion;

    public boolean BorrarUsuarios() {
        boolean bandera = false;
        String query = "DELETE FROM preguntas";
        PreparedStatement sql;
        try {
            sql = conexion.prepareStatement(query);
            sql.executeUpdate();
            bandera = true;
        } catch (SQLException ex) {
            bandera = false;
        }
        return bandera;
    }
}
