import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;

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

	public LevelTwoPracticeQuiz() {
		frame = new JFrame();
		label = new JLabel();
		panel = new JPanel();
		button = new JButton();
		buttontwo = new JButton();
		textField = new JTextField();
		frame.setVisible(true);
		label.setText("riddle");
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
	}

@Override
public void actionPerformed(ActionEvent e) {
	// TODO Auto-generated method stub
	if(e.getSource().equals(button)) {
		if(textField.getText().equals("answer")) {
			System.out.println("Correct");
		}
		else {
			System.out.println("Incorrect");
		}
	}
	else {
		System.out.println("hint");
	}
}
}
