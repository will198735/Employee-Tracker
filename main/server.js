const cTable = require('console.table');
const mysql = require('mysql2');
const inquirer = require('inquirer');

// Connect to database
const db = mysql.createConnection(
    {
        host: 'localhost',
        // MySQL username,
        user: 'root',
        // MySQL password
        password: '141414Pakita',
        database: 'company_db'
    },
    console.log(`Connected to the company_db database.`)
);
const init = () => {
  inquirer
      .prompt([
          {
              type: "list",
              message: "Please select from the following options:",
              name: "initialize",
              choices: [
                  "View all departments",
                  "View all roles",
                  "View all employees",
                  "Add a department",
                  "Add a role",
                  "Add an employee",
                  "Update an employee role",
                  "I'm finished"
              ]
          }
      ]).then(answer => {
        
          switch (answer.initialize) {
              case "View all departments": viewDept();
                  break;
              case "View all roles": viewRoles();
                  break;
              case "View all employees": viewEmployees();
                  break;
              case "Add a department": addDept();
                  break;
              case "Add a role": addRole();
                  break;
              case "Add an employee": addEmployee();
                  break;
              case "Update an employee role": updateEmployee();
                  break;
              case "I'm finished":
                  console.log("Thank you very much!");
                  process.exit();
          }
      }).catch(err => console.error(err));
}
init();

const viewDept = () => {
    // console.log("Working")
    db.query(`SELECT * FROM department`, (err, results) => {
        err ? console.error(err) : console.table(results);
        init();
    })
};

const viewRoles = () => {
    db.query(`SELECT * FROM roles`, (err, results) => {
        err ? console.error(err) : console.table(results);
        init();
    })
};

const viewEmployees = () => {
    db.query(`SELECT * FROM employees`, (err, results) => {
        err ? console.error(err) : console.table(results);
        init();
    })
}