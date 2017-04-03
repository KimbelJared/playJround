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
    public JPanel backPanel, buttonPanel, textNamePanel;

    public JLabel title;

    private JButton employees, customers, back;

    public ActionListener employeeButton;
    public ActionListener customerButton;
    public ActionListener backButton;

    public static void main(String[] args)
    {
        new UserInterface();
    }

    public UserInterface()
    {
//////  Call functions

        actionListeners();

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

        //Back panel
        backPanel = new JPanel();

        //Button
        back = new JButton("Back");

        //Action Listeners
        back.addActionListener(backButton);

        //Buttons to panel
        backPanel.add(back);

        //Panel to mainFrame
        theFrame.add(backPanel);
        backPanel.setVisible(false);

//////  Main Menu \/

        //Panels
        buttonPanel = new JPanel();
        textNamePanel = new JPanel();

        //Buttons
        employees = new JButton("Employees");
        customers = new JButton("Customers");

        //Action Listeners
        employees.addActionListener(employeeButton);
        customers.addActionListener(customerButton);

        //Buttons to panel
        buttonPanel.add(employees);
        buttonPanel.add(customers);

        //Title text
        title = new JLabel("Jefferson Family Entertainment Center");

        //Title to panel
        textNamePanel.add(title);

        //Panels to Frame
        theFrame.add(textNamePanel);
        theFrame.add(buttonPanel);

//////

        //Make Visible
        theFrame.setVisible(true);
        theFrame.pack();

    }

    public void actionListeners()
    {
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
    }

    public void actionPerformed(ActionEvent e) {

    }
}