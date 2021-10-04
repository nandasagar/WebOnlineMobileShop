package com.mobile.application.serviceImpl;

import java.util.List;
import javax.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.servlet.ModelAndView;
import com.mobile.application.model.Item;
import com.mobile.application.repository.ItemRepository;
import com.mobile.application.service.AccessoriesService;

/**
 * @author Nanda sagar
 *
 */
@Transactional
@Service
public class AccessoriesServiceImpl implements AccessoriesService {

	@Autowired
	private ItemRepository itemRepository;

	/**This method returns selected Products on UI Screen based on Brands
	 * @return
	 */
	@Override
	public ModelAndView products(String brand) {

		ModelAndView modelObject = new ModelAndView("accessview");
		try {
			List<Item> item = (List<Item>) itemRepository.findByItemtype(brand);
			modelObject.addObject("list", item);
		} catch (Exception exception) {
			System.out.println("Exception for Brand" + brand + "is" + exception);
		}
		return modelObject;
	}

}
