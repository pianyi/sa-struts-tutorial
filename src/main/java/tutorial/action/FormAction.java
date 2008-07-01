package tutorial.action;

import javax.annotation.Resource;

import org.seasar.struts.annotation.ActionForm;
import org.seasar.struts.annotation.Execute;

import tutorial.dto.FormDto;

public class FormAction {

	@ActionForm
	@Resource
	protected FormDto formDto;

	@Execute(validator = false)
	public String index() {
		return "index.jsp";
	}

	@Execute(input = "index.jsp")
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

	@Execute(validator = false, removeActionForm = true)
	public String clear() {
		return "index.jsp";
	}
}