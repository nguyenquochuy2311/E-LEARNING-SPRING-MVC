/**
 * PaymentServices class - encapsulates PayPal payment integration functions.
 * @author Nam Ha Minh
 * @copyright https://codeJava.net
 */
package com.coeding.spring.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.coeding.spring.repository.PaymentDAO;
import com.coeding.spring.service.PaymentService;
import com.coeding.spring.vo.PaymentVO;
import com.coeding.spring.vo.Student;
import com.coeding.spring.vo.StudentOrders;
import com.paypal.api.payments.Amount;
import com.paypal.api.payments.Details;
import com.paypal.api.payments.Item;
import com.paypal.api.payments.ItemList;
import com.paypal.api.payments.Links;
import com.paypal.api.payments.Payer;
import com.paypal.api.payments.PayerInfo;
import com.paypal.api.payments.Payment;
import com.paypal.api.payments.PaymentExecution;
import com.paypal.api.payments.RedirectUrls;
import com.paypal.api.payments.Transaction;
import com.paypal.base.rest.APIContext;
import com.paypal.base.rest.PayPalRESTException;

/**
 * @author Quoc Huy
 * Id card test: 4802 1267 7234 0985
 * */

@Service("paymentService")
public class PaymentServiceImpl implements PaymentService {
	private static final String CLIENT_ID = "AcYcrxO5xqvQzkNVlOGHDKryNuaC6E4EBA4cubGWzkjrGlI636MF6EK1dx_RkvsWmZkD9hS5u4d5tHZ8";
	private static final String CLIENT_SECRET = "EPcpDnkfJA7QHhTHSNhHLCXWinbEvB8QJtsgIQa255G4bUFe77oFnTEYdRQAkkkSRdNqDFAAGJZQ1MYR";
	private static final String MODE = "sandbox";
	
	public String authorizePayment(StudentOrders studentOrders)			
			throws PayPalRESTException {		

		Payer payer = getPayerInformation();
		RedirectUrls redirectUrls = getRedirectURLs();
		List<Transaction> listTransaction = getTransactionInformation(studentOrders);
		
		Payment requestPayment = new Payment();
		requestPayment.setTransactions(listTransaction);
		requestPayment.setRedirectUrls(redirectUrls);
		requestPayment.setPayer(payer);
		requestPayment.setIntent("authorize");

		APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, MODE);

		Payment approvedPayment = requestPayment.create(apiContext);

		System.out.println("=== CREATED PAYMENT: ====");
		System.out.println(approvedPayment);

		return getApprovalLink(approvedPayment);

	}
	
	private Payer getPayerInformation() {
		Payer payer = new Payer();
		payer.setPaymentMethod("paypal");
		
		PayerInfo payerInfo = new PayerInfo();
		payerInfo.setFirstName("Huy")
				 .setLastName("Nguyen")
				 .setEmail("huynguyen@company.com");
		
		payer.setPayerInfo(payerInfo);
		
		return payer;
	}
	
	private RedirectUrls getRedirectURLs() {
		RedirectUrls redirectUrls = new RedirectUrls();
		redirectUrls.setCancelUrl("http://localhost:8080/e-learning/cancel");
		redirectUrls.setReturnUrl("http://localhost:8080/e-learning/review_payment");
		
		return redirectUrls;
	}
	
	private List<Transaction> getTransactionInformation(StudentOrders studentOrders) {
		Details details = new Details();
		if(studentOrders.getCourseId()!=null) {
			details.setSubtotal(studentOrders.getCourseId().getPriceP());
		}else {
			details.setSubtotal(studentOrders.getBookId().getPriceP());
		}
		details.setTax(studentOrders.getTax());

		Amount amount = new Amount();
		amount.setCurrency("USD");
		amount.setTotal(studentOrders.getAmount());
		amount.setDetails(details);

		Transaction transaction = new Transaction();
		transaction.setAmount(amount);
		transaction.setInvoiceNumber(studentOrders.getInvoiceNo());
		if(studentOrders.getCourseId()!=null) {
			transaction.setDescription(studentOrders.getCourseId().getTitle()+" of "+studentOrders.getCourseId().getCategory().getTitle());
		}else {
			transaction.setDescription(studentOrders.getBookId().getTitle());
		}
		
		ItemList itemList = new ItemList();
		List<Item> items = new ArrayList<>();
		
		Item item = new Item();
		item.setCurrency("USD");
		if(studentOrders.getCourseId()!=null) {
			item.setName(studentOrders.getCourseId().getTitle());
			item.setPrice(studentOrders.getCourseId().getPriceP());
		}else {
			item.setName(studentOrders.getBookId().getTitle());
			item.setPrice(studentOrders.getBookId().getPriceP());
		}
		item.setTax(studentOrders.getTax());
		item.setQuantity("1");
	
		items.add(item);
		itemList.setItems(items);
		transaction.setItemList(itemList);

		List<Transaction> listTransaction = new ArrayList<>();
		listTransaction.add(transaction);	
		
		return listTransaction;
	}
	
	private String getApprovalLink(Payment approvedPayment) {
		List<Links> links = approvedPayment.getLinks();
		String approvalLink = null;
		
		for (Links link : links) {
			if (link.getRel().equalsIgnoreCase("approval_url")) {
				approvalLink = link.getHref();
				break;
			}
		}		
		
		return approvalLink;
	}

	public Payment executePayment(String paymentId, String payerId) throws PayPalRESTException {
		PaymentExecution paymentExecution = new PaymentExecution();
		paymentExecution.setPayerId(payerId);

		Payment payment = new Payment().setId(paymentId);

		APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, MODE);

		return payment.execute(apiContext, paymentExecution);
	}
	
	public Payment getPaymentDetails(String paymentId) throws PayPalRESTException {
		APIContext apiContext = new APIContext(CLIENT_ID, CLIENT_SECRET, MODE);
		return Payment.get(apiContext, paymentId);
	}

	@Autowired
	private PaymentDAO paymentDao;
	
	@Override
	public void insert(PaymentVO vo) {
		// TODO Auto-generated method stub
		paymentDao.insert(vo);
	}

	@Override
	public void update(PaymentVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void delete(PaymentVO vo) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public PaymentVO get(PaymentVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PaymentVO> list(PaymentVO vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PaymentVO> listPaymentB(Student vo) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<PaymentVO> listPaymentC(Student vo) {
		// TODO Auto-generated method stub
		return null;
	}

}
