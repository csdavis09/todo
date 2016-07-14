if Rails.env.development?
  Employee.create name: "Employee 1", email: "employee-1@example.com",
                  password: "employee-1@example.com",
                  password_confirmation: "employee-1@example.com"
end
