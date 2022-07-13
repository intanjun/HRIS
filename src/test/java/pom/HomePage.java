package pom;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class HomePage {

	private WebDriver driver;
	
	@FindBy(xpath = "//div[@class='info']")
	public WebElement lblName;
	@FindBy(xpath = "//span[normalize-space()='Data']")
	public WebElement linkData;
	@FindBy(xpath = "//a[normalize-space()='Pengajuan Cuti']")
	public WebElement linkPengajuanNav;
	@FindBy(xpath = "//h4[normalize-space()='Pengajuan Cuti']")
	public WebElement linkPengajuanTask;
	
	public HomePage(WebDriver driver) {
		// TODO Auto-generated constructor stub
		this.driver = driver;
	}
}
