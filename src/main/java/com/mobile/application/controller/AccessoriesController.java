package com.mobile.application.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import com.mobile.application.constants.ProductConstants;
import com.mobile.application.service.AccessoriesService;

/**
 * @author Nanda sagar
 *
 */
@Controller
public class AccessoriesController {

	@Autowired
	private AccessoriesService accessoriesService;

	@RequestMapping("/access")
	public String access() {
		return "/access";
	}

	@RequestMapping("/addaccess")
	public String addaccess() {
		return "/addaccess";
	}

	/**This method returns selected Products on UI Screen
	 * @return
	 */
	@PostMapping("/view-power")
	public ModelAndView power() {
		final String brand = ProductConstants.POWERBANK;
		return accessoriesService.products(brand);
	}
	/**This method returns selected Products on UI Screen
	 * @return
	 */
	@PostMapping("/view-headset")
	public ModelAndView headset() {

		final String brand = ProductConstants.HEADSET;
		return accessoriesService.products(brand);
	}
	/**This method returns selected Products on UI Screen
	 * @return
	 */
	@PostMapping("/view-charger")
	public ModelAndView charger() {
		final String brand = ProductConstants.CHARGER;
		return accessoriesService.products(brand);
	}
	/**This method returns selected Products on UI Screen
	 * @return
	 */
	@PostMapping("/view-cover")
	public ModelAndView cover() {
		final String brand = ProductConstants.MOBILECOVERS;
		return accessoriesService.products(brand);
	}
	/**This method returns selected Products on UI Screen
	 * @return
	 */
	@PostMapping("/view-screen")
	public ModelAndView screen() {
		final String brand = ProductConstants.MOBILESCREEN;
		return accessoriesService.products(brand);
	}
	/**This method returns selected Products on UI Screen
	 * @return
	 */
	@PostMapping("/view-usb")
	public ModelAndView usb() {
		final String brand = ProductConstants.USBDRIVERS;
		return accessoriesService.products(brand);
	}
	/**This method returns selected Products on UI Screen
	 * @return
	 */
	@PostMapping("/apple")
	public ModelAndView apple() {
		final String brand = ProductConstants.APPLEMOBILES;
		return accessoriesService.products(brand);
	}
	/**This method returns selected Products on UI Screen
	 * @return
	 */
	@PostMapping("/vivo")
	public ModelAndView vivo() {
		final String brand = ProductConstants.VIVOMOBILES;
		return accessoriesService.products(brand);
	}
	/**This method returns selected Products on UI Screen
	 * @return
	 */
	@PostMapping("/realme")

	public ModelAndView realme() {
		final String brand = ProductConstants.REALMEMOBILES;
		return accessoriesService.products(brand);
	}
	/**This method returns selected Products on UI Screen
	 * @return
	 */
	@PostMapping("/oneplus")
	public ModelAndView oneplus() {
		final String brand = ProductConstants.ONEPLUSMOBILES;
		return accessoriesService.products(brand);
	}
	/**This method returns selected Products on UI Screen
	 * @return
	 */
	@PostMapping("/samsung")
	public ModelAndView samsung() {
		final String brand = ProductConstants.SAMSUNGMOBILES;
		return accessoriesService.products(brand);
	}
	/**This method returns selected Products on UI Screen
	 * @return
	 */
	@PostMapping("/mi")
	public ModelAndView mi() {
		final String brand = ProductConstants.REDMIMOBILES;
		return accessoriesService.products(brand);
	}

}
