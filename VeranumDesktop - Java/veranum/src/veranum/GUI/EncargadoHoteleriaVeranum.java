/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package veranum.GUI;

import java.beans.PropertyVetoException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFrame;
import veranum.DAO.DAORol;
import static veranum.GUI.MainVeranum.p;
import veranum.GUI.cliente.MainCliente;
import veranum.GUI.reportes.MainReportes;
import veranum.GUI.reservas.MainReserva;
import veranum.GUI.reservasA.MainReservasA;
import veranum.entities.ClPasajeros;
import veranum.entities.ClRol;


/**
 *
 * @author veranum
 */
public class EncargadoHoteleriaVeranum extends javax.swing.JFrame {
    private ClPasajeros usuario;
    
    /**
     * Creates new form AdminVeranum
     * @param pasajero
     */
    public EncargadoHoteleriaVeranum(ClPasajeros pasajero) {
        initComponents();
        this.usuario = pasajero;
        lblBienvenido.setText("Bienvenido "+usuario.getNombre());
        DAORol drol = new DAORol();
        ClRol rol = drol.sqlLeer(usuario.getIdRol());
        this.setTitle(rol.getNombre().toString());
    }
    
     public EncargadoHoteleriaVeranum() {
        initComponents();
        this.setExtendedState(this.getExtendedState() | this.MAXIMIZED_BOTH);
    }



    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        panelMenu = new javax.swing.JPanel();
        imgLogo = new javax.swing.JLabel();
        btnClientes = new javax.swing.JButton();
        btnSalir = new javax.swing.JButton();
        lblBienvenido = new javax.swing.JLabel();
        btnReservas = new javax.swing.JButton();
        btnCambiarUsuario = new javax.swing.JButton();
        btnReservasA = new javax.swing.JButton();
        btnInspeccion = new javax.swing.JButton();
        panelContenido = new javax.swing.JPanel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Administrador | Veranum");
        setResizable(false);

        panelMenu.setBackground(new java.awt.Color(102, 153, 255));

        imgLogo.setIcon(new javax.swing.ImageIcon(getClass().getResource("/veranum/imagenes/logo.jpg"))); // NOI18N

        btnClientes.setBackground(new java.awt.Color(51, 255, 255));
        btnClientes.setFont(new java.awt.Font("Lucida Console", 0, 12)); // NOI18N
        btnClientes.setText("Clientes");
        btnClientes.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnClientesActionPerformed(evt);
            }
        });

        btnSalir.setBackground(new java.awt.Color(255, 51, 51));
        btnSalir.setForeground(new java.awt.Color(255, 255, 255));
        btnSalir.setText("Salir");
        btnSalir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnSalirActionPerformed(evt);
            }
        });

        lblBienvenido.setText("Bienvenido ");

        btnReservas.setBackground(new java.awt.Color(102, 255, 102));
        btnReservas.setText("Reservar");
        btnReservas.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnReservasActionPerformed(evt);
            }
        });

        btnCambiarUsuario.setBackground(new java.awt.Color(102, 255, 102));
        btnCambiarUsuario.setText("Cambiar Usuario");
        btnCambiarUsuario.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCambiarUsuarioActionPerformed(evt);
            }
        });

        btnReservasA.setBackground(new java.awt.Color(255, 255, 102));
        btnReservasA.setFont(new java.awt.Font("Lucida Console", 0, 12)); // NOI18N
        btnReservasA.setText("Consultas Reservas");
        btnReservasA.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnReservasAActionPerformed(evt);
            }
        });

        btnInspeccion.setBackground(new java.awt.Color(255, 255, 255));
        btnInspeccion.setFont(new java.awt.Font("Lucida Console", 0, 12)); // NOI18N
        btnInspeccion.setText("Control de Gestion");
        btnInspeccion.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnInspeccionActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout panelMenuLayout = new javax.swing.GroupLayout(panelMenu);
        panelMenu.setLayout(panelMenuLayout);
        panelMenuLayout.setHorizontalGroup(
            panelMenuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(imgLogo, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addGroup(panelMenuLayout.createSequentialGroup()
                .addGroup(panelMenuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                    .addComponent(btnInspeccion, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, 174, Short.MAX_VALUE)
                    .addComponent(btnReservasA, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btnReservas, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(btnClientes, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(0, 0, Short.MAX_VALUE))
            .addGroup(panelMenuLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(panelMenuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(lblBienvenido)
                    .addComponent(btnCambiarUsuario)
                    .addComponent(btnSalir))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        panelMenuLayout.setVerticalGroup(
            panelMenuLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(panelMenuLayout.createSequentialGroup()
                .addComponent(imgLogo)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(lblBienvenido, javax.swing.GroupLayout.PREFERRED_SIZE, 25, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(33, 33, 33)
                .addComponent(btnClientes)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(btnReservas)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(btnReservasA)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(btnInspeccion)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 296, Short.MAX_VALUE)
                .addComponent(btnCambiarUsuario)
                .addGap(18, 18, 18)
                .addComponent(btnSalir)
                .addGap(31, 31, 31))
        );

        panelContenido.setBackground(new java.awt.Color(102, 153, 255));
        panelContenido.setLayout(new java.awt.BorderLayout());

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addComponent(panelMenu, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(panelContenido, javax.swing.GroupLayout.DEFAULT_SIZE, 1060, Short.MAX_VALUE)
                .addContainerGap())
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(panelMenu, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
            .addComponent(panelContenido, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void btnSalirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnSalirActionPerformed
        System.exit(0);
    }//GEN-LAST:event_btnSalirActionPerformed

    private void btnClientesActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnClientesActionPerformed
        try {
            new helper.IFrameHelper().openContenidoAdmin(new MainCliente(), panelContenido);
        } catch (PropertyVetoException ex) {
            Logger.getLogger(EncargadoHoteleriaVeranum.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnClientesActionPerformed

    private void btnReservasActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnReservasActionPerformed
       try {
            new helper.IFrameHelper().openContenidoAdmin(new MainReserva(), panelContenido);
        } catch (PropertyVetoException ex) {
            Logger.getLogger(EncargadoHoteleriaVeranum.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnReservasActionPerformed

    private void btnCambiarUsuarioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCambiarUsuarioActionPerformed
        MainVeranum ver = new MainVeranum();
        ver.setVisible(true);
        this.setVisible(false);
    }//GEN-LAST:event_btnCambiarUsuarioActionPerformed

    private void btnReservasAActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnReservasAActionPerformed
        try {
            new helper.IFrameHelper().openContenidoAdmin(new MainReservasA(), panelContenido);
        } catch (PropertyVetoException ex) {
            Logger.getLogger(AdminVeranum.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnReservasAActionPerformed

    private void btnInspeccionActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnInspeccionActionPerformed
        try {
            new helper.IFrameHelper().openContenidoAdmin(new MainReportes(), panelContenido);
        } catch (PropertyVetoException ex){
            Logger.getLogger(AdminVeranum.class.getName()).log(Level.SEVERE, null, ex);
        }
    }//GEN-LAST:event_btnInspeccionActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(EncargadoHoteleriaVeranum.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(EncargadoHoteleriaVeranum.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(EncargadoHoteleriaVeranum.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(EncargadoHoteleriaVeranum.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new EncargadoHoteleriaVeranum().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnCambiarUsuario;
    private javax.swing.JButton btnClientes;
    private javax.swing.JButton btnInspeccion;
    private javax.swing.JButton btnReservas;
    private javax.swing.JButton btnReservasA;
    private javax.swing.JButton btnSalir;
    private javax.swing.JLabel imgLogo;
    private javax.swing.JLabel lblBienvenido;
    private javax.swing.JPanel panelContenido;
    private javax.swing.JPanel panelMenu;
    // End of variables declaration//GEN-END:variables
}
