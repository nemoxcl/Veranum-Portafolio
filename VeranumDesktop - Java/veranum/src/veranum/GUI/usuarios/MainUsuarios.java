/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package veranum.GUI.usuarios;

import javax.swing.JPanel;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;

/**
 *
 * @author veranum
 */
public class MainUsuarios extends javax.swing.JInternalFrame {

    /**
     * Creates new form MainUsuarios
     */
    public MainUsuarios() {
        initComponents();
        final JPanel usuarios = new panelUsuarios();
        final JPanel roles = new panelRoles();
        
        tabContenidoUsuarios.addTab("Usuario", usuarios);
        tabContenidoUsuarios.addTab("Roles", roles);
        tabContenidoUsuarios.addChangeListener(new ChangeListener() { 
            @Override
            public void stateChanged(ChangeEvent e) {
                switch (tabContenidoUsuarios.getSelectedIndex()) {
                    case 0:
                        tabContenidoUsuarios.setComponentAt(0, new panelUsuarios());
                        break;
                    case 1:
                        tabContenidoUsuarios.setComponentAt(1, new panelRoles());
                        break;
                    default:
                        break;
                }
            }
        });
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        tabContenidoUsuarios = new javax.swing.JTabbedPane();

        tabContenidoUsuarios.setMinimumSize(new java.awt.Dimension(32767, 32767));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(tabContenidoUsuarios, javax.swing.GroupLayout.PREFERRED_SIZE, 590, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(tabContenidoUsuarios, javax.swing.GroupLayout.PREFERRED_SIZE, 184, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTabbedPane tabContenidoUsuarios;
    // End of variables declaration//GEN-END:variables
}
