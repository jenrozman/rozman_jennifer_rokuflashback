(() => {
  let getButtons = document.querySelectorAll('.getButton');
      postButton = document.querySelector('.postButton'); //var always get declared at the top
      deleteButton = document.querySelector('.deleteButton');

  function fetchData() {
    let url = "api/" + this.id;

    fetch(url)
    .then((resp) => resp.json())
    .then((data) => {
      console.log(data);
    })
    .catch(function(error) {
      console.log(error);
    });
  }

  function deleteData() {
		let url = "api/" + this.id;

		fetch(url, { method: 'delete' }) // do our ajax call
	      .then((resp) => resp.json()) // convert the response to JSON (built-in method)
	      .then((data) => {
	      		console.log(data);
	      	}) // then do the process result function
	      .catch(function(error) {
	        console.log(error); // catch any errors and show them in the console
	    });
	}
  function insertData() { //Figure this out ourselves
		let url = "api/" + this.id;

		fetch(url, { //this is security stuff. says accept this, add json
      method : 'post',
      headers : {
        'Accept' : 'application/json, text-plain */*',
        'Content-type' : 'application/json'
      },
      body :  JSON.stringify({ //turning it into a json file
        model : "F56",
        modelName : "Mini Cooper F56",
        pricing : "22, 190",
        modelDetails : "lots and lots of text",
        imagePath : "F56.jpg"
      })
    }) // do our ajax call
	      .then((resp) => resp.json()) // convert the response to JSON (built-in method)
	      .then((data) => {
	      		console.log(data);
	      	}) // then do the process result function
	      .catch(function(error) {
	        console.log(error); // catch any errors and show them in the console
	    });
	}

//event handling always goes down here
  getButtons.forEach(button => button.addEventListener('click', fetchData));
  postButton.addEventListener('click', insertData);
  deleteButton.addEventListener('click', deleteData);
})();
