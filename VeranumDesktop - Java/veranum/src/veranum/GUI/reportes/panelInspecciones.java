/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package veranum.GUI.reportes;

import helper.Formularios;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.swing.JOptionPane;
import javax.swing.ListSelectionModel;
import javax.swing.table.DefaultTableModel;
import veranum.DAO.DAOHabitaciones;
import veranum.DAO.DAOHoteles;
import veranum.DAO.DAOInspecciones;
import veranum.entities.ClHabitacionInspecciones;
import veranum.entities.ClHabitaciones;
import veranum.entities.ClHoteles;

/**
 *
 * @author veranum
 */
public class panelInspecciones extends javax.swing.JPanel {

    private boolean paraGrabar = false;
    private DefaultTableModel dt = new DefaultTableModel();
    private int id = 0;
    
    /**
     * Creates new form panelInspercciones
     */
    public panelInspecciones() {
        initComponents();
        this.cargarHab();
        this.cargarHotel();
        grDatos.setEnabled(true);
        grDatos.setSelectionMode(ListSelectionModel.SINGLE_SELECTION);
        grDatos.getTableHeader().setReorderingAllowed(false);
        Formularios.DesactiveBotonesEliminarEditar(btEditar, btEliminar);
        btDesactivarEditar.setVisible(false);
        this.leerTodos(true);
    }

    
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        lbFechaInsp = new javax.swing.JLabel();
        btGrabar = new javax.swing.JButton();
        btEliminar = new javax.swing.JButton();
        btEditar = new javax.swing.JButton();
        txtBuscar = new javax.swing.JTextField();
        btBuscar = new javax.swing.JButton();
        btBuscarTodos = new javax.swing.JButton();
        jScrollPane2 = new javax.swing.JScrollPane();
        grDatos = new javax.swing.JTable();
        lbIdHabInspeccion = new javax.swing.JLabel();
        lbComentarioInspeccion = new javax.swing.JLabel();
        lbNombreInspector = new javax.swing.JLabel();
        txtComentario = new javax.swing.JTextField();
        txtNombre = new javax.swing.JTextField();
        btDesactivarEditar = new javax.swing.JButton();
        cbHabInspeccion = new javax.swing.JComboBox();
        jSeparator1 = new javax.swing.JSeparator();
        txtFechaInspeccion = new javax.swing.JFormattedTextField();
        lblHotel = new javax.swing.JLabel();
        cbHotel = new javax.swing.JComboBox();

        lbFechaInsp.setText("Fecha Inspección:");

        btGrabar.setText("Grabar");
        btGrabar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btGrabarActionPerformed(evt);
            }
        });

        btEliminar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/veranum/imagenes/delete96.png"))); // NOI18N
        btEliminar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btEliminarActionPerformed(evt);
            }
        });

        btEditar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/veranum/imagenes/write13.png"))); // NOI18N
        btEditar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btEditarActionPerformed(evt);
            }
        });

        txtBuscar.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtBuscarKeyTyped(evt);
            }
        });

        btBuscar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/veranum/imagenes/magnifier12.png"))); // NOI18N
        btBuscar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btBuscarActionPerformed(evt);
            }
        });

        btBuscarTodos.setIcon(new javax.swing.ImageIcon(getClass().getResource("/veranum/imagenes/refresh_16.png"))); // NOI18N
        btBuscarTodos.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btBuscarTodosActionPerformed(evt);
            }
        });

        grDatos.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null}
            },
            new String [] {
                "#", "Hotel", "Habitación Inspección", "Fecha Inspección", "Comentario", "Nombre Inspector"
            }
        ) {
            boolean[] canEdit = new boolean [] {
                false, false, false, false, false, false
            };

            public boolean isCellEditable(int rowIndex, int columnIndex) {
                return canEdit [columnIndex];
            }
        });
        grDatos.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                grDatosMouseClicked(evt);
            }
        });
        jScrollPane2.setViewportView(grDatos);
        if (grDatos.getColumnModel().getColumnCount() > 0) {
            grDatos.getColumnModel().getColumn(0).setMaxWidth(40);
        }

        lbIdHabInspeccion.setText("Habitación Inspección:");

        lbComentarioInspeccion.setText("Comentario:");

        lbNombreInspector.setText("Nombre Inspector:");

        txtComentario.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtComentarioKeyTyped(evt);
            }
        });

        txtNombre.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyTyped(java.awt.event.KeyEvent evt) {
                txtNombreKeyTyped(evt);
            }
        });

        btDesactivarEditar.setBackground(new java.awt.Color(255, 0, 0));
        btDesactivarEditar.setText("Salir Modo Editar");
        btDesactivarEditar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btDesactivarEditarActionPerformed(evt);
            }
        });

        lblHotel.setText("Hotel: ");

        cbHotel.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                cbHotelItemStateChanged(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(this);
        this.setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jScrollPane2)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(jSeparator1)
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                        .addGroup(layout.createSequentialGroup()
                                            .addComponent(btEliminar, javax.swing.GroupLayout.PREFERRED_SIZE, 85, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                            .addComponent(btEditar, javax.swing.GroupLayout.PREFERRED_SIZE, 77, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                            .addComponent(txtBuscar, javax.swing.GroupLayout.PREFERRED_SIZE, 158, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                            .addComponent(btBuscar)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                            .addComponent(btBuscarTodos))
                                        .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                            .addGap(10, 10, 10)
                                            .addComponent(lblHotel)
                                            .addGap(93, 93, 93)
                                            .addComponent(cbHotel, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                            .addComponent(btDesactivarEditar)
                                            .addGap(33, 33, 33)))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addGroup(layout.createSequentialGroup()
                                                .addGap(10, 10, 10)
                                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                                    .addComponent(lbFechaInsp)
                                                    .addComponent(lbComentarioInspeccion)
                                                    .addComponent(lbNombreInspector))
                                                .addGap(35, 35, 35))
                                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                                .addComponent(lbIdHabInspeccion)
                                                .addGap(18, 18, 18)))
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(cbHabInspeccion, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                                .addComponent(txtComentario)
                                                .addComponent(txtNombre)
                                                .addComponent(txtFechaInspeccion, javax.swing.GroupLayout.PREFERRED_SIZE, 138, javax.swing.GroupLayout.PREFERRED_SIZE)))))
                                .addGap(0, 152, Short.MAX_VALUE)))
                        .addContainerGap())
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(btGrabar, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGap(335, 335, 335))))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(btEliminar, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                        .addComponent(btEditar)
                        .addComponent(txtBuscar, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addComponent(btBuscar)
                        .addComponent(btBuscarTodos)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 106, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(3, 3, 3)
                .addComponent(jSeparator1, javax.swing.GroupLayout.PREFERRED_SIZE, 10, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(2, 2, 2)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btDesactivarEditar)
                    .addComponent(lblHotel)
                    .addComponent(cbHotel, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(lbIdHabInspeccion)
                    .addComponent(cbHabInspeccion, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(10, 10, 10)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lbFechaInsp)
                            .addComponent(txtFechaInspeccion, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(18, 18, 18)
                        .addComponent(lbComentarioInspeccion)
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lbNombreInspector)
                            .addComponent(txtNombre, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(31, 31, 31)
                        .addComponent(txtComentario, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(18, 18, 18)
                .addComponent(btGrabar)
                .addContainerGap(72, Short.MAX_VALUE))
        );

        txtFechaInspeccion.setFormatterFactory(new javax.swing.JFormattedTextField.AbstractFormatterFactory(){
            public javax.swing.JFormattedTextField.AbstractFormatter
            getFormatter(javax.swing.JFormattedTextField tf) {
                try {
                    javax.swing.text.MaskFormatter mf = new javax.swing.text.MaskFormatter("##/##/####");
                    mf.setPlaceholderCharacter('_');
                    return mf;
                } catch(java.text.ParseException pe){
                    pe.printStackTrace();
                }
                return null;
            }
        });
    }// </editor-fold>//GEN-END:initComponents

    private void btEliminarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btEliminarActionPerformed
        this.leer(Formularios.getSelectedRow(grDatos));
        if(this.id == 0){
            JOptionPane.showMessageDialog(this, "NO existe para eliminar");
        }else{
            try {
                DAOInspecciones.sqlDelete(new ClHabitacionInspecciones(this.id));
            } catch (SQLException ex) {
                JOptionPane.showMessageDialog(this, "No se ha podido eliminar.");
            }
            JOptionPane.showMessageDialog(this, "Eliminado");
            helper.Formularios.limpiar(this);
            Formularios.DesactiveBotonesEliminarEditar(btEditar, btEliminar);
            this.leerTodos(true);
        }
    }//GEN-LAST:event_btEliminarActionPerformed

    private void btEditarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btEditarActionPerformed
        this.leer(Formularios.getSelectedRow(grDatos));
        this.paraGrabar = true;
        this.btnEditarMode();
    }//GEN-LAST:event_btEditarActionPerformed

    private void btBuscarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btBuscarActionPerformed
        if(txtBuscar.getText().equals("")){
            JOptionPane.showMessageDialog(this, "Ingrese datos para buscar");
        }else{
            this.leerTodos(false);
        } 
    }//GEN-LAST:event_btBuscarActionPerformed

    private void btBuscarTodosActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btBuscarTodosActionPerformed
        this.leerTodos(true);
    }//GEN-LAST:event_btBuscarTodosActionPerformed

    private void btDesactivarEditarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btDesactivarEditarActionPerformed
        this.paraGrabar = false;
        this.btnEditarMode();
    }//GEN-LAST:event_btDesactivarEditarActionPerformed

    private void btGrabarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btGrabarActionPerformed
        int id_tipo_hab = ((ClHabitaciones)cbHabInspeccion.getSelectedItem()).getIdHabitacion();
        if(!paraGrabar){
            if(txtNombre.getText().equals("")
              || txtComentario.getText().equals("")
              || txtFechaInspeccion.getText().equals("")      
              ){
                JOptionPane.showMessageDialog(this, "Ingrese los Datos");
            }else{
                try {
                    DAOInspecciones.sqlInsert(new ClHabitacionInspecciones( id_tipo_hab
                            , Formularios.deStringAFecha(txtFechaInspeccion.getText())
                            , txtComentario.getText()
                            , txtNombre.getText()
                    ));
                    JOptionPane.showMessageDialog(this, "Agregado");
                } catch (SQLException ex) {
                    JOptionPane.showMessageDialog(this, "Error al insertar el dato.");
                }
            Formularios.DesactiveBotonesEliminarEditar(btEditar, btEliminar);
            helper.Formularios.limpiar(this);
            this.leerTodos(true);
        }
        }else{
            try {
                DAOInspecciones.sqlUpdate(new ClHabitacionInspecciones( this.id
                        , id_tipo_hab
                        , Formularios.deStringAFecha(txtFechaInspeccion.getText())
                        , txtComentario.getText()
                        , txtNombre.getText()
                ));
                JOptionPane.showMessageDialog(this, "Modificado");
            } catch (SQLException ex) {
                JOptionPane.showMessageDialog(this, "Error al modificar el dato.");
            }  
            Formularios.DesactiveBotonesEliminarEditar(btEditar, btEliminar);
            helper.Formularios.limpiar(this);
            this.leerTodos(true);
            this.paraGrabar = false;
            this.btnEditarMode();
        }
    }//GEN-LAST:event_btGrabarActionPerformed

    private void grDatosMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_grDatosMouseClicked
        int row_dos = Formularios.getTablaSeleccionada(evt, grDatos, 2);
        if(row_dos >= 0){
            this.leer(Integer.parseInt(grDatos.getValueAt(row_dos, 0).toString()));
            Formularios.ActiveBotonesEliminarEditar(btEditar, btEliminar);
            this.paraGrabar = true;
            this.btnEditarMode();
        } else {
            Formularios.ActiveBotonesEliminarEditar(btEditar, btEliminar);
        }
    }//GEN-LAST:event_grDatosMouseClicked

    private void txtComentarioKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtComentarioKeyTyped
        if (!(txtComentario.getText().length() < 50)) {
            Formularios.limpiarTxt(txtComentario);
            JOptionPane.showMessageDialog(this, "Máximo de caracteres alcanzado");
        }
    }//GEN-LAST:event_txtComentarioKeyTyped

    private void txtNombreKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtNombreKeyTyped
        if (!(txtNombre.getText().length() < 30)) {
            Formularios.limpiarTxt(txtNombre);
            JOptionPane.showMessageDialog(this, "Máximo de caracteres alcanzado");
        }
    }//GEN-LAST:event_txtNombreKeyTyped

    private void txtBuscarKeyTyped(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_txtBuscarKeyTyped
        if (!(txtBuscar.getText().length() < 15)) {
            Formularios.limpiarTxt(txtBuscar);
            JOptionPane.showMessageDialog(this, "Máximo de caracteres alcanzado");
        }
    }//GEN-LAST:event_txtBuscarKeyTyped

    private void cbHotelItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cbHotelItemStateChanged
        this.cargarHabs();
    }//GEN-LAST:event_cbHotelItemStateChanged

    // Method Custom    
    private void cargarHab(){
        for (Object dato : DAOHabitaciones.sqlLeerTodos()) {
            cbHabInspeccion.addItem(dato);
        }
    }
    
    private void leer(int id){
        this.id = id;
        ClHabitacionInspecciones dato = DAOInspecciones.sqlLeer(id);
        txtFechaInspeccion.setValue(dato.getStringFecha().toString());
        txtComentario.setText(dato.getComentario());
        txtNombre.setText(dato.getNombreInspector());
        
        ClHabitaciones item;
        for (int i = 0; i < cbHabInspeccion.getItemCount(); i++)
        {
            item = (ClHabitaciones)cbHabInspeccion.getItemAt(i);
            if (item.getIdHabitacion()== dato.getIdHabitacion())
            {
                cbHabInspeccion.setSelectedIndex(i);
                break;
            }
        }
    }
    
    private void leerTodos(boolean todos){
        ArrayList dato;
        if(todos)
            dato = DAOInspecciones.sqlLeerTodos();
        else 
            dato = DAOInspecciones.sqlBuscarByNombre(txtBuscar.getText());
            //dato = DAOInspecciones.sqlLeerTodos();
        
        dt =  (DefaultTableModel) grDatos.getModel();        
        for (int i = dt.getRowCount() -1; i >= 0; i--){  
            dt.removeRow(i);
        }        
        for(int x=0; x < dato.size(); x++){
            ClHabitacionInspecciones xx = (ClHabitacionInspecciones)dato.get(x);
            Object[] fila = new Object[7];
            fila[0] = xx.getIdHabitacionInspeccion();
            fila[1] = xx.getNombreHotel();
            fila[2] = ((ClHabitaciones)DAOHabitaciones.sqlLeer(xx.getIdHabitacion()));
            fila[3] = xx.getStringFecha();
            fila[4] = xx.getComentario();
            fila[5] = xx.getNombreInspector();
            dt.addRow(fila);
        }
    }
    
    private void btnEditarMode(){
        if(!this.paraGrabar){
            btDesactivarEditar.setVisible(false);
            helper.Formularios.limpiar(this);
        } else {
            btDesactivarEditar.setVisible(true);
        }
    }
    
    private void cargarHotel(){
        for (Object dato : DAOHoteles.sqlLeerTodos()) {
            cbHotel.addItem(dato);
        }
    }
    
    private void cargarHabs(){
        if(cbHotel.getSelectedItem() != null) {
            int id_hotel = ((ClHoteles)cbHotel.getSelectedItem()).getIdHotel();
            cbHabInspeccion.removeAllItems();
            for (Object dato : DAOHabitaciones.sqlBuscarByHotel(id_hotel)) {
                cbHabInspeccion.addItem(dato);
            }
        }
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btBuscar;
    private javax.swing.JButton btBuscarTodos;
    private javax.swing.JButton btDesactivarEditar;
    private javax.swing.JButton btEditar;
    private javax.swing.JButton btEliminar;
    private javax.swing.JButton btGrabar;
    private javax.swing.JComboBox cbHabInspeccion;
    private javax.swing.JComboBox cbHotel;
    private javax.swing.JTable grDatos;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JSeparator jSeparator1;
    private javax.swing.JLabel lbComentarioInspeccion;
    private javax.swing.JLabel lbFechaInsp;
    private javax.swing.JLabel lbIdHabInspeccion;
    private javax.swing.JLabel lbNombreInspector;
    private javax.swing.JLabel lblHotel;
    private javax.swing.JTextField txtBuscar;
    private javax.swing.JTextField txtComentario;
    private javax.swing.JFormattedTextField txtFechaInspeccion;
    private javax.swing.JTextField txtNombre;
    // End of variables declaration//GEN-END:variables
}
