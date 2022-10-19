from webdriver_manager.chrome import ChromeDriverManager


def get_driver():
    driver = ChromeDriverManager().install()
    return driver
