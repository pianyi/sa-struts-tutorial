package tutorial.action;

import org.seasar.struts.annotation.ActionForm;
import org.seasar.struts.annotation.Execute;

import tutorial.dto.FormDto;

public class FormAction {

	@ActionForm
	public FormDto formDto;

	@Execute(validator = false)
	public String index() {
		return "first.jsp";
	}

	@Execute(input = "first.jsp")
	public String goSecond() {
		return "second.jsp";
	}

	@Execute(validator = false)
	public String backSecond() {
		return "second.jsp";
	}

	@Execute(input = "second.jsp")
	public String goThird() {
		return "third.jsp";
	}
}