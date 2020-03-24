package pages.locators;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.How;

import java.util.List;

public class AutomationPracticeShoppingCartPageLocators {

    @FindBy(how = How.XPATH, using = "//*[@id='cart_summary']/tbody/tr")
    public List<WebElement> productsSummaryTable;

}
