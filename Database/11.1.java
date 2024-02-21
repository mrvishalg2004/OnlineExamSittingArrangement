import java.applet.Applet;
import java.awt.Color;
import java.awt.event.MouseEvent;
import java.awt.event.MouseListener;

public class MouseDemo1 extends Applet implements MouseListener {

    public void init()

    {

        addMouseListener(this);

    }

    public void mouseClicked(MouseEvent me)

    {

        setBackground(Color.red);
        showStatus("Mouse Clicked");

    }

    L

  public void mouse

    Entered(MouseEvent me)

{

setBackground(Color.green);
 showStatus("Mouse Entered");

}

    public void mousePressed(MouseEvent me) {

        setBackground(Color.gray);
        showStatus("Mouse Pressed");

    }

  public void mouse

    Released (MouseEvent me)

setBackground(Color.blue);
 showStatus("Mouse Released");

{ } ploma World

    public void mouseExit(MouseEvent me) {

        setBackground(Color.black);
        showStatus("Mouse Exit");

    }

} /* <applet code="MouseDemo1" width=400 height=400></applet> */