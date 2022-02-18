package com.carloscaicedo.savetravels.controllers;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import com.carloscaicedo.savetravels.models.Expense;
import com.carloscaicedo.savetravels.services.ExpenseService;

@RestController
public class APIController {
	
	@Autowired
    private ExpenseService expenseService;

	@RequestMapping("/api/expenses")
	public List<Expense> showAll() {
		return expenseService.allExpenses();
	}
	
	@PostMapping(value="/api/expenses")
	public Expense create(
			@RequestParam(value="expenseName") String expenseName,
			@RequestParam(value="vendor") String vendor,
			@RequestParam(value="description") String description,
			@RequestParam(value="amount") Double amount) {
		Expense expense = new Expense(expenseName, vendor, description, amount);
		return expenseService.createExpense(expense);
	}
			
}
