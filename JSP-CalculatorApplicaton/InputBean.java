package Calculator;

import java.io.Serializable;

public class InputBean implements Serializable
{
	private double value1, value2;
	
	public InputBean() {
		
	}

	public double getValue1() {
		return value1;
	}

	public void setValue1(double value1) {
		this.value1 = value1;
	}

	public double getValue2() {
		return value2;
	}

	public void setValue2(double value2) {
		this.value2 = value2;
	}
	
	
}
