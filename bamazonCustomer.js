var mysql = require('mysql');
var inquirer = require ('inquirer');

var connection = mysql.createConnection({
    host: "127.0.0.1",
    port: 3306,
    user: "root",
    password: "root",
    database: "bamazon_storeDB"
});

connection.connect(function(err){
    if (err) 
        throw err;
        console.log("Connection as id " + connection.threadId);
        afterConnection();
    });

function afterConnection(){
    connection.query("SELECT * FROM products", function(err, res){
        if(err)
            throw(err)
            console.log(res);
    })
}


inquirer.prompt([
    {
        type: "list",
        name: "What ID #",
        message: "What is the ID number of the item you are looking for?"
        

    }
    
]).then(function(answers){
    console.log(answers)
})
