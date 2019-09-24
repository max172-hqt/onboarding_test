from pom.base.base_page import BasePage
from selenium.webdriver.common.by import By


class SubjectTestPage(BasePage):

    base_url = "/subjects"
    start_excel_btn_locator = By.XPATH, "//h3[text()='Excel']/parent::div//a"

    def __init__(self, driver_wrapper):
        super().__init__(driver_wrapper, self.base_url)

    def start_excel_core(self):
        start_btn = self.driver_wrapper.wait_element_to_be_clickable(
            self.start_excel_btn_locator
        )
        start_btn.click()