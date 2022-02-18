package com.carloscaicedo.savetravels.services;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.carloscaicedo.savetravels.models.Expense;
import com.carloscaicedo.savetravels.repositories.ExpenseRepository;

@Service
public class ExpenseService {
	
	// adding the expense repository as a dependency
	@Autowired
	private ExpenseRepository expeRepo;
	
	
	// CRUD ACTIONS
	
	// 1 Find expenses
	public List<Expense> allExpenses() {
		return expeRepo.findAll();
	}
	
	public Expense findExpense(Long id) {
		Optional<Expense> optionalExpense = expeRepo.findById(id);
		if(optionalExpense.isPresent()) {
			return optionalExpense.get();
		} else {
			return null;
		}
	}
	
	// 2 - 3 Create & update expenses
	public Expense createExpense(Expense expense) {
		return expeRepo.save(expense);
	}
	
	
	public Expense updateExpense(Expense expense) {
		return expeRepo.save(expense);
	}
	
	// 4 Delete
	public void deleteExpense(Long id) {
		expeRepo.deleteById(id);
	}
		
}
