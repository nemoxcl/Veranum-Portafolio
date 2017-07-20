    /*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package veranum.GUI.localizador;

import javax.swing.event.ChangeEvent;
import javax.swing.event.ChangeListener;


/**
 *
 * @author veranum
 */
public class MainLocalizador extends javax.swing.JInternalFrame {

    /**
     * Creates new form MainLocalizador
     */
    public MainLocalizador() {
        initComponents();
        tabContLocalizador.addTab("Regiones", new panelRegion());
        tabContLocalizador.addTab("Provincias", new panelProvincias());
        tabContLocalizador.addTab("Comunas", new panelComunas());
        tabContLocalizador.addChangeListener(new ChangeListener() { 
            @Override
            public void stateChanged(ChangeEvent e) {
                switch (tabContLocalizador.getSelectedIndex()) {
                    case 0:
                        tabContLocalizador.setComponentAt(0, new panelRegion());
                        break;
                    case 1:
                        tabContLocalizador.setComponentAt(1, new panelProvincias());
                        break;
                    case 2:
                        tabContLocalizador.setComponentAt(2, new panelComunas());
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

        jButton1 = new javax.swing.JButton();
        tabContLocalizador = new javax.swing.JTabbedPane();

        jButton1.setText("jButton1");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(tabContLocalizador, javax.swing.GroupLayout.DEFAULT_SIZE, 594, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(tabContLocalizador, javax.swing.GroupLayout.DEFAULT_SIZE, 374, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

  
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton jButton1;
    private javax.swing.JTabbedPane tabContLocalizador;
    // End of variables declaration//GEN-END:variables
}