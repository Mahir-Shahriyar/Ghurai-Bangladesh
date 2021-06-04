from selenium import webdriver
from webdriver_manager.chrome import ChromeDriverManager
from selenium.webdriver.common.keys import Keys
import time

def admin_Portal():
	driver = webdriver.Chrome(ChromeDriverManager().install())
	driver.get('http://localhost/Ghurai-Bangladesh/admin/admin_login.html')
	u = driver.current_url

	txt_user = driver.find_element_by_name('email')

	txt_password = driver.find_element_by_name('pass')

	txt_user.send_keys('admin@ghuraibangladesh.com')

	print('email input done')

	txt_password.send_keys('mahir11')

	print('password input done')

	print('Now wait 3 second')
	time.sleep(3)


	btn = driver.find_element_by_xpath('/html/body/div/section/form/button')

	btn.click()

	print('login Successfully')


	btnhomepage = driver.find_element_by_link_text('PORTAL')
	time.sleep(3)
	btnhomepage.click()
	time.sleep(5)

	btncustomer = driver.find_element_by_xpath('/html/body/div/section/button[1]')
	btncustomer.click()
	time.sleep(5)
	print("customer option choose")
	btnloadcust = driver.find_element_by_xpath('/html/body/button')
	btnloadcust.click()
	print("customer information fetch")
	time.sleep(3)
	txt_back_home = driver.find_element_by_xpath('/html/body/a')
	txt_back_home.click()
	print("Back to Admin HomePage")
	time.sleep(3)

	#complain json page

	btncustomer = driver.find_element_by_xpath('/html/body/div/section/button[3]')
	btncustomer.click()
	time.sleep(5)
	print("complain option choose")
	btnloadcust = driver.find_element_by_xpath('/html/body/button')
	btnloadcust.click()
	print("complain information fetch")
	time.sleep(3)
	txt_back_home = driver.find_element_by_xpath('/html/body/a')
	txt_back_home.click()
	print("Back to Admin HomePage")



	driver.close()



	
admin_Portal()