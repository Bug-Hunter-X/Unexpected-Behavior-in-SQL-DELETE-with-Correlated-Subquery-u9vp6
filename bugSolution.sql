A more reliable way to achieve the same result is using a `JOIN` within the `DELETE` statement itself:

```sql
DELETE e
FROM employees e
INNER JOIN departments d ON d.id = e.department_id
WHERE d.location = 'New York';
```

This approach is generally preferred as it's more explicit and avoids potential issues related to correlated subqueries within DELETE statements. This directly joins the `employees` and `departments` tables, allowing for more direct and efficient deletion based on the join condition. Different databases may react differently to the first query, while this revised one tends to work more consistently across various systems.