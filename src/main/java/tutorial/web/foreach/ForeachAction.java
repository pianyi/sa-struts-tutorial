package tutorial.web.foreach;

import java.util.ArrayList;
import java.util.List;

import org.seasar.struts.annotation.Execute;
import org.seasar.struts.annotation.Result;
import org.seasar.struts.annotation.Results;

import tutorial.entity.Employee;

@Results( { @Result(name = "foreach", path = "/foreach/foreach.jsp"),
	@Result(name = "result", path = "/foreach/result.jsp") })
public class ForeachAction {

	public List<Employee> empItems = new ArrayList<Employee>();

	public String id;

	@Execute(validator = false)
	public String execute() {
		for (int i = 0; i < 10; i++) {
			Employee e = new Employee();
			e.id = i;
			e.name = "name" + i;
			empItems.add(e);
		}
		return "foreach";
	}

	@Execute(validator = false)
	public String submit() {
		return "result";
	}
}