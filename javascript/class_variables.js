//functions can have instance variables that work similar to 
//class/static variables and methods in more traditional OOP languages
//have instance and static variables with the same name will mask the
//static variable inside the function

function hello(){
	this.name = 'Bob';
	console.log('hello instance ' + this.name);
	console.log('hello class ' + hello.name2);
}

hello.name2 = 'Joe';