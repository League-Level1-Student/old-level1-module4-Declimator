import java.awt.Dimension;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.awt.event.KeyListener;

import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class LevelTwoPracticeQuiz implements ActionListener {
	JFrame frame;
	JLabel label;
	JPanel panel;
	JButton button;
	JButton buttontwo;
	JTextField textField;
	public static void main(String[] args) {
		LevelTwoPracticeQuiz t = new LevelTwoPracticeQuiz();
	}
	public LevelTwoPracticeQuiz() {

		frame = new JFrame();
		label = new JLabel();
		panel = new JPanel();
		button = new JButton();
		buttontwo = new JButton();
		textField = new JTextField(10);
		textField.setEditable(true);
		frame.setVisible(true);
		label.setText("What runs but has no legs?");
		button.setText("Submit");
		buttontwo.setText("Hint");
		button.addActionListener(this);
		buttontwo.addActionListener(this);
		frame.add(panel);
		panel.add(label);
		panel.add(button);
		panel.add(buttontwo);
		panel.add(textField);
		frame.pack();
		frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
	}

@Override
public void actionPerformed(ActionEvent e) {
	// TODO Auto-generated method stub
	if(e.getSource().equals(button)) {
		if(textField.getText().equals("a river")) {
			System.out.println("Correct");
		}
		else {
			System.out.println("Incorrect");
		}
	}
	else {
		System.out.println("It's not a living thing");
	}
}

}
