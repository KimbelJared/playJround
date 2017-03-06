/**
 * Created by 1255376 on 3/2/2017.
 */
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.*;
import java.awt.*;
import javax.swing.BorderFactory;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;
import javax.swing.border.Border;
import java.text.*;
import java.util.*;

public class UserInterface implements ActionListener
{

    private JButton employees = null, customers = null;

    private JLabel menuLabel;

    public ActionListener employeeButton;
    public ActionListener backButton;
    public ActionListener customerButton;

    public static void main(String[] args)
    {
        new UserInterface();
    }

    public UserInterface()
    {
////// Action Listeners

        employeeButton = new ActionListener()
        {
            public void actionPerformed(ActionEvent e)
            {

            }
        };

        customerButton = new ActionListener()
        {
            public void actionPerformed(ActionEvent e)
            {

            }
        };

        backButton = new ActionListener()
        {
            public void actionPerformed(ActionEvent e)
            {

            }
        };


//////  Gui stuff \/

        //Make frame
        JFrame theFrame = new JFrame();
        theFrame.setTitle("Jefferson Family Entertainment Center");
        theFrame.setLocation(200, 300);
        theFrame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);


        //Make panel
        JPanel mainPanel = (JPanel)theFrame.getContentPane();

        //Layout
        mainPanel.setLayout(new BoxLayout(mainPanel, BoxLayout.Y_AXIS));

        //Border
        Border border = BorderFactory.createEmptyBorder(10,10,10,10);
        mainPanel.setBorder(border);

//////  Back Button Panel


//////  Main Menu \/

        //Make panels
        JPanel menuPanel = new JPanel();
        JPanel buttonPanel = new JPanel();
        JPanel labelPanel = new JPanel();

        //Labels
        menuLabel = new JLabel("TEST 1 2 3 ");

        //Buttons
        employees = new JButton("Employees");
        customers = new JButton("Customers");

        //Action Listeners
        employees.addActionListener(employeeButton);
        customers.addActionListener(customerButton);

        //Add to panels
        labelPanel.add(menuLabel);
        buttonPanel.add(employees);
        buttonPanel.add(customers);

        //Add to menu
        menuPanel.add(buttonPanel);

//////

        //Add to mainPanel
        mainPanel.add(labelPanel);
        mainPanel.add(menuPanel);


        //Make Visible
        theFrame.setVisible(true);
        theFrame.pack();

    }


    public void actionPerformed(ActionEvent e) {

    }
}