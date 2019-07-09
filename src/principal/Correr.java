
package principal;

import static java.awt.image.ImageObserver.ERROR;
import javax.swing.JOptionPane;
import javax.swing.UIManager;

/**
 *
 * @author WALTERC
 */
public class Correr {

    public static void main(String[] args) {
        java.awt.EventQueue.invokeLater(new Runnable() {
            @Override
            public void run() {
                try {
                    UIManager.setLookAndFeel("com.sun.java.swing.plaf.nimbus.NimbusLookAndFeel");
                } catch (Exception ex) {
                    JOptionPane.showMessageDialog(null, "Error en en Look and Feel", "Error", ERROR);
                }
                new SplashScreen().setVisible(true);
            }
        });
    }
}
