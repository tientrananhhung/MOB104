package com.poly.test;

import org.testng.annotations.Test;
import org.testng.annotations.BeforeClass;

import java.util.concurrent.TimeUnit;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.chrome.ChromeDriver;
import org.testng.Assert;
import org.testng.annotations.AfterClass;

public class TestDemo {
 
	private WebDriver driver;

	@BeforeClass
	public void beforeClass() {

		// Khởi chạy server hỗ trợ firefox
		System.setProperty("webdriver.chrome.driver",
				"c:/Chrome/chromedriver.exe");

		// Khởi tạo trình duyệt Firefox
		driver = new ChromeDriver();

	}

	@Test
	public void TestCase1() {
		

		// Mở website
		driver.get("http://localhost:8080/assignment/");

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Mở rộng cửa sổ trình duyệt lớn nhất
		driver.manage().window().maximize();

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Wait 10s cho page được load thành công
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		//tìm button đăng nhập
		WebElement btnLogin = driver.findElement(By.id("login"));
		
		//click button
		btnLogin.click();
		

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	@Test
	public void TestCase2() {
		// Trường hợp username và password đúng

		// Mở website
		driver.get("http://localhost:8080/assignment/dangnhap");

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Wait 10s cho page được load thành công
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Tìm đến id userName: ô input username
		WebElement userNameIpt = driver.findElement(By.id("soDienThoai"));

		// Điền chữ vào ô input username
		userNameIpt.sendKeys("kuminhdey@gmail.com");

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Tìm đến id passWord: ô input passWord
		WebElement passWordIpt = driver.findElement(By.id("matKhau"));

		// Điền chữ vào ô input passWord
		passWordIpt.sendKeys("12344321");

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Tìm đến button Login và nhấn login
		WebElement testDN = driver.findElement(By.id("login"));

		testDN.click();

		try {
			Thread.sleep(2300);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// In ra thông báo theo mong muốn
	if( driver.getCurrentUrl().equals("http://localhost:8080/assignment/donhangkh")){
		System.out.println("Login Sucess!");
	} else {
		Assert.fail();
	}
		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Test
	public void TestCase4() {
		// Trường hợp username và password sai

		// Mở website
		driver.get("http://localhost:8080/assignment/logoutkh");
		
		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		driver.get("http://localhost:8080/assignment/dangnhap");

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Wait 10s cho page được load thành công
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Tìm đến id userName: ô input username
		WebElement userNameIpt = driver.findElement(By.id("soDienThoai"));

		// Điền chữ vào ô input username
		userNameIpt.sendKeys("kuminhdey@gmail.com");

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Tìm đến id passWord: ô input passWord
		WebElement passWordIpt = driver.findElement(By.id("matKhau"));

		// Điền chữ vào ô input passWord
		passWordIpt.sendKeys("123443212");

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Tìm đến button Login và nhấn login
		WebElement testDN = driver.findElement(By.id("login"));

		testDN.click();

		try {
			Thread.sleep(2300);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// In ra thông báo theo mong muốn
	if( driver.getCurrentUrl().equals("http://localhost:8080/assignment/dangnhap")){
		System.out.println("Login Fail!");
	} else {
		Assert.fail();
	}
		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void TestCase5() {
		// Trường hợp username sai và password đúng

		// Mở website
		driver.get("http://localhost:8080/assignment/dangnhap");

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Wait 10s cho page được load thành công
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Tìm đến id userName: ô input username
		WebElement userNameIpt = driver.findElement(By.id("soDienThoai"));

		// Điền chữ vào ô input username
		userNameIpt.sendKeys("kuminhdey1@gmail.com");

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Tìm đến id passWord: ô input passWord
		WebElement passWordIpt = driver.findElement(By.id("matKhau"));

		// Điền chữ vào ô input passWord
		passWordIpt.sendKeys("12344321");

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Tìm đến button Login và nhấn login
		WebElement testDN = driver.findElement(By.id("login"));

		testDN.click();

		try {
			Thread.sleep(2300);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// In ra thông báo theo mong muốn
	if( driver.getCurrentUrl().equals("http://localhost:8080/assignment/dangnhap")){
		System.out.println("Login Fail!");
	} else {
		Assert.fail();
	}
		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void TestCase6() {
		// Trường hợp username sai và password sai

		// Mở website
		driver.get("http://localhost:8080/assignment/dangnhap");

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Wait 10s cho page được load thành công
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Tìm đến id userName: ô input username
		WebElement userNameIpt = driver.findElement(By.id("soDienThoai"));

		// Điền chữ vào ô input username
		userNameIpt.sendKeys("kuminhdey1@gmail.com");

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Tìm đến id passWord: ô input passWord
		WebElement passWordIpt = driver.findElement(By.id("matKhau"));

		// Điền chữ vào ô input passWord
		passWordIpt.sendKeys("123443211");

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Tìm đến button Login và nhấn login
		WebElement testDN = driver.findElement(By.id("login"));

		testDN.click();

		try {
			Thread.sleep(2300);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// In ra thông báo theo mong muốn
	if( driver.getCurrentUrl().equals("http://localhost:8080/assignment/dangnhap")){
		System.out.println("Login Fail!");
	} else {
		Assert.fail();
	}
		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void TestCase7() {
		// Trường hợp username trống và password trống

		// Mở website
		driver.get("http://localhost:8080/assignment/dangnhap");

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Wait 10s cho page được load thành công
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Tìm đến id userName: ô input username
		WebElement userNameIpt = driver.findElement(By.id("soDienThoai"));

		// Điền chữ vào ô input username
		userNameIpt.sendKeys("");

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Tìm đến id passWord: ô input passWord
		WebElement passWordIpt = driver.findElement(By.id("matKhau"));

		// Điền chữ vào ô input passWord
		passWordIpt.sendKeys("");

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Tìm đến button Login và nhấn login
		WebElement testDN = driver.findElement(By.id("login"));
		testDN.click();

		try {
			Thread.sleep(2300);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// In ra thông báo theo mong muốn
	if( driver.getCurrentUrl().equals("http://localhost:8080/assignment/dangnhap")){
		System.out.println("Login Fail!");
	} else {
		Assert.fail();
	}
		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Test
	public void TestCase8() {
		// Trường hợp chỉ nhập username

		// Mở website
		driver.get("http://localhost:8080/assignment/dangnhap");

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Wait 10s cho page được load thành công
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Tìm đến id userName: ô input username
		WebElement userNameIpt = driver.findElement(By.id("soDienThoai"));

		// Điền chữ vào ô input username
		userNameIpt.sendKeys("kuminhdey@gmail.com");

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Tìm đến id passWord: ô input passWord
		WebElement passWordIpt = driver.findElement(By.id("matKhau"));

		// Điền chữ vào ô input passWord
		passWordIpt.sendKeys("");

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Tìm đến button Login và nhấn login
		WebElement testDN = driver.findElement(By.id("login"));
		testDN.click();

		try {
			Thread.sleep(2300);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// In ra thông báo theo mong muốn
	if( driver.getCurrentUrl().equals("http://localhost:8080/assignment/dangnhap")){
		System.out.println("Login Fail!");
	} else {
		Assert.fail();
	}
		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void TestCase9() {
		// Trường hợp chỉ nhập pass

		// Mở website
		driver.get("http://localhost:8080/assignment/dangnhap");

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Wait 10s cho page được load thành công
		driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Tìm đến id userName: ô input username
		WebElement userNameIpt = driver.findElement(By.id("soDienThoai"));

		// Điền chữ vào ô input username
		userNameIpt.sendKeys("");

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Tìm đến id passWord: ô input passWord
		WebElement passWordIpt = driver.findElement(By.id("matKhau"));

		// Điền chữ vào ô input passWord
		passWordIpt.sendKeys("12344321");

		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// Tìm đến button Login và nhấn login
		WebElement testDN = driver.findElement(By.id("login"));
		testDN.click();

		try {
			Thread.sleep(2300);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		// In ra thông báo theo mong muốn
	if( driver.getCurrentUrl().equals("http://localhost:8080/assignment/dangnhap")){
		System.out.println("Login Fail!");
	} else {
		Assert.fail();
	}
		try {
			Thread.sleep(500);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	@AfterClass
	public void afterClass() {

		// Đóng trình duyệt
		driver.quit();

	}
}
