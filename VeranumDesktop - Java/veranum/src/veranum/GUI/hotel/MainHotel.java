/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package veranum.GUI.hotel;

import java.awt.event.WindowAdapter;
import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;

/**
 *
 * @author veranum
 */
public class MainHotel extends javax.swing.JInternalFrame {
    /**
     * Creates new form MainHotel
     */
    public MainHotel() {
        initComponents();
        tabContenido.addTab("Hoteles", new panelHotel());
        tabContenido.addTab("Servicios Hotel", new panelHotelServicio());
        tabContenido.addTab("Características Hotel", new panelHotelCaract());
        tabContenido.addTab("Hotel Menú", new panelMenuHotel());
        tabContenido.addTab("Insumos Hotel", new panelHotelInsumos());
        
        tabContenido.addChangeListener(new ChangeListener() { 
            @Override
            public void stateChanged(ChangeEvent e) {
                switch (tabContenido.getSelectedIndex()) {
                    case 0:
                        tabContenido.setComponentAt(0, new panelHotel());
                        break;
                    case 1:
                        tabContenido.setComponentAt(1, new panelHotelServicio());
                        break;
                    case 2:
                        tabContenido.setComponentAt(2, new panelHotelCaract());
                        break;
                    case 3:
                        tabContenido.setComponentAt(3, new panelMenuHotel());
                        break;
                    case 4:
                        tabContenido.setComponentAt(4, new panelHotelInsumos());
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

        tabContenido = new javax.swing.JTabbedPane();

        setBorder(javax.swing.BorderFactory.createTitledBorder("Panel Hoteles"));
        setForeground(new java.awt.Color(204, 204, 204));
        setPreferredSize(new java.awt.Dimension(557, 391));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(tabContenido, javax.swing.GroupLayout.Alignment.TRAILING)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(tabContenido)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTabbedPane tabContenido;
    // End of variables declaration//GEN-END:variables

    public void addWindowListener(WindowAdapter windowAdapter) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
