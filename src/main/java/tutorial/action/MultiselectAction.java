package tutorial.action;

import org.seasar.struts.annotation.Execute;

public class MultiselectAction {

	public String[] select = new String[0];

	@Execute(validator = false)
	public String index() {
		select = new String[] { "2", "3" };
		return "multiselect.jsp";
	}

	@Execute(validator = false)
	public String submit() {
		return "multiselect.jsp";
	}
}