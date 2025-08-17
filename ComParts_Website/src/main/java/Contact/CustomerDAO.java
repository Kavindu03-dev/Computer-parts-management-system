package Contact;

import java.util.List;

public interface CustomerDAO {
	

	CustomerDAO customerDao = new customerDButil();
	

	
	   public List<customer> validate(String userName, String password);
	    boolean insertCustomer(customer customer);
	    boolean updateCustomer(customer customer);
	    boolean deleteCustomer(int id);
	    List<customer> getCustomerDetails(int id);

}
