<!DOCTYPE html>
<!-- <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%> -->
<html>
   <head>
      <script src="https://code.jquery.com/jquery-2.1.1.min.js" type="text/javascript"></script>
      <link href="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/css/select2.min.css" rel="stylesheet" />
      <script src="https://cdnjs.cloudflare.com/ajax/libs/select2/4.0.1/js/select2.min.js"></script>
      <style>
         * {
         box-sizing: border-box;
         }
         /* Add padding to containers */
         .container {
         padding: 16px;
         }
         /* Full-width input fields */
         #cus_name, #phno, #email, #search,#product_Name, #product_price, #tax, #discount_amount{
         width: 18%;
         padding: 15px;
         margin: 5px 0 22px 0;
         display: inline-block;
         border: none;
         background: #f1f1f1;
         }
         input[type=text] {
         width: 100%;
         padding: 15px;
         margin: 5px 0 22px 0;
         display: inline-block;
         border: none;
         background: #f1f1f1;
         }
         input[type=text]:focus, input[type=password]:focus {
         background-color: #ddd;
         outline: none;
         }
         /* Overwrite default styles of hr */
         hr {
         border: 1px solid #f1f1f1;
         margin-bottom: 25px;
         }
         /* Set a style for the submit button */
         .registerbtn {
         background-color: red;
         color: white;
         padding: 16px 20px;
         margin: 8px 0;
         border: none;
         cursor: pointer;
         width: 10%;
         opacity: 0.9;
         }
         .registerbtn:hover {
         opacity: 1;
         }
         /* Add a blue text color to links */
         a {
         color: dodgerblue;
         }
         h5 {
         color: blue;
         text-align: right;
         font-size: 20px;
         font-family: verdana;
         }
         /* Set a grey background color and center the text of the "sign in" section */
         table {
         width: 100%;
         text-align:center;
         }
         table, th, td {
         border: 1px solid #6666ff;
         table-layout: auto;
         border-collapse: collapse;
         }
         th, td {
         padding: 15px;
         text-align: left;
         }
         #t01 tr:nth-child(even) {
         background-color: #eee;
         }
         #t01 tr:nth-child(odd) {
         background-color: white;
         }
         #t01 th {
         background-color: black;
         color: white;
         }
         //Plus minus button
         /* -- quantity box -- */
         .quantity {
         display: inline-block; }
         .quantity .input-text.qty {
         width: 35px;
         height: 39px;
         padding: 0 5px;
         text-align: center;
         background-color: transparent;
         border: 1px solid #efefef;
         }
         .quantity.buttons_added {
         text-align: left;
         position: relative;
         white-space: nowrap;
         vertical-align: top; }
         .quantity.buttons_added input {
         display: inline-block;
         margin: 0;
         vertical-align: top;
         box-shadow: none;
         }
         .quantity.buttons_added .minus,
         .quantity.buttons_added .plus {
         padding: 7px 10px 8px;
         height: 41px;
         background-color: #ffffff;
         border: 1px solid #efefef;
         cursor:pointer;}
         .quantity.buttons_added .minus {
         border-right: 0; }
         .quantity.buttons_added .plus {
         border-left: 0; }
         .quantity.buttons_added .minus:hover,
         .quantity.buttons_added .plus:hover {
         background: #eeeeee; }
         .quantity input::-webkit-outer-spin-button,
         .quantity input::-webkit-inner-spin-button {
         -webkit-appearance: none;
         -moz-appearance: none;
         margin: 0; }
         .quantity.buttons_added .minus:focus,
         .quantity.buttons_added .plus:focus {
         outline: none; }
         .grand-total{
         text-align:center;
         color:red;
         font-size: 200%;
         }
         .clear-all,.add-newproduct-btn{ 
         background-color:	#FF0000;
         border: none;
         color: white;
         padding: 15px 32px;
         text-align: center;
         text-decoration: none;
         display: inline-block;
         font-size: 16px;
         margin: 4px 2px;
         cursor: pointer;
         }
         .save-btn{
         border: none;
         background-color:	green;
         color: white;
         padding: 15px 32px;
         text-align: center;
         text-decoration: none;
         display: inline-block;
         font-size: 16px;
         margin: 4px 2px;
         cursor: pointer;
         }
         body {background-color: #b3e6ff;}
      </style>
      <!-- <script data-require="jquery@3.1.1" data-semver="3.1.1"
         src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> -->
   </head>
   <body>
      <div class="container">
         <h1>
            <center>G Mobile Shop</center>
         </h1>
         <center>
            <!-- <form> -->
            
               <label for="phno"><b>Phone Number:</b></label> 
               <input 
                  type="text"
                  placeholder="Enter phone number" 
                  name="phno"
                  id="phno"
                  class="customer-phone-no" 
                  required/>
               <br><span 
                  class="customer-success-message"
                  style="color: green"	
                  >
               </span>
               <span 
                  class="customer-error-message"
                  style="color: red"	
                  >
               </span><br>
               <label for="cus_name"><b>Customer Name:</b></label> 
               <input 
                  type="text"
                  placeholder="Enter name" 
                  name="cus_name" 
                  id="cus_name" 
                  class="customer-name"
                  required><br><br>
               <label for="email"><b>Customer Mail ID:</b></label> 
               <input 
                  type="text"
                  placeholder="Enter email" 
                  name="email" 
                  id="email" 
                  class="customer-email"
                  required><br><br>
               <br>
               <button class="check-customer-btn">Check Customer</button>	
               <button class="add-customer-btn">Add New Customer</button>	<br>
               
         </center>
         <br>
         <hr>
         <hr>
         <center>
            <h2>Adding Purchased Products to Generate Receipt</h2>
            <!-- PRODUCTS SEARCH BAR -->
            <label for="search"><b>Search Products:</b></label> 
            <!-- <input type="text"
               name="search" 
               id="search"
               class="products-search"	
               > -->
            <select
               class="products-search"
               placeholder="123-45-678"
               style="width: 400px;"
               >
            </select>
            <button class="add-product-btn">
            Add Product
            </button>
         </center>
         <br><br>
         <table class="main-table">
            <tr>
               <th>Sno</th>
               <th>Product Name</th>
               <th>Price &#x20B9</th>
               <th>Quantity </th>
               <th>GST &#x20B9</th>
               <th>Discount &#x20B9</th>
               <th>Total &#x20B9</th>
               <th>Delete</th>
            </tr>
         </table>
         <br>
         <div class="grand-total">
            Grand Total:0
         </div>
         <br> <br>  
         <center>
            <button class="clear-all" onclick="clearAll()">Clear All</button>
            <button class="save-btn">E-Mail Bill</button>
         </center>
         <!-- </form> -->
         <br> <br>
         <hr>
         <hr>
         <center>
            <h2>Add New Product</h2>
         </center>
         <label for="product_Name"><b>Product Name:</b></label> 
         <input 
            type="text"
            placeholder="Enter Product name" 
            name="product_Name" 
            id="product_Name" 
            class="add-product-name"
            required>
         <label for="product_price"><b>Product price:</b></label> 
         <input 
            type="text"
            placeholder="Enter Product price" 
            name="product_price"
            id="product_price"
            class="add-product-price" 
            required
            />
         <label for="tax"><b>Tax:</b></label> 
         <input 
            type="text"
            placeholder="Enter Tax" 
            name="tax" 
            id="tax" 
            class="add-product-tax"
            required>
         <label for="discount_amount"><b>Discount Amount:</b></label> 
         <input 
            type="text"
            placeholder="Enter Discount Amount" 
            name="discount_amount" 
            id="discount_amount" 
            class="add-discount-amount"
            required>
         <br> 
         <center>
            <button class="add-newproduct-btn">Add Product</button>
         </center>
      </div>
      <!--</form>-->
      <script>
        
         
            var customersList = '';
            var currentCustomer = '';
            var productsList = '';
            var productNames = [];
            var productIds = [];
            // var billList = [];
            
            // Get all the intial data required
               $(document).ready(function() {
            	console.log("READY");
                   fetch('http://localhost:8080/allCustomers')
                       .then(response => response.json())
                       .then(data => {
            			customersList = data;
            		});
            	fetch('http://localhost:8080/allProducts')
            		.then(response => response.json())
            		.then((responseProducts) => {
            			console.log('THE PRODUCTS LIST:', responseProducts);
            			productsList = responseProducts;
            		});
            
            	setTimeout(function() {
                   // call your code here that you want to run after all $(document).ready() calls have run
            		this.getProductNames();
            		$(".products-search").select2({
            			data: productNames
            		});
            
            		renderTable();
            	}, 500);
            
            			
            });
            
            $(".add-product-btn").click(function() {
            	// console.log('THE SELECTED ITEM', productNames.indexOf($(".products-search").val()));
            	// let idIndexOf = productNames.indexOf($(".products-search").val());
            	let idIndex = productIds[productNames.indexOf($(".products-search").val())];
            	let selectedProduct = '';
            	productsList.map((item) => {
            		if(item.product_ID === idIndex) {
            			selectedProduct = item;
            		}
            	});
            
            	let LSBill = JSON.parse(localStorage.getItem('billList'));
            	let itemExists = false;
            
            	if(LSBill === null || LSBill === [] || LSBill.length === 0) {
            		console.log('first');
            		LSBill = [];
            		selectedProduct.quantity = 1;
            		selectedProduct.productName = selectedProduct.product_Name;
            		selectedProduct.total_price = ((selectedProduct.quantity * selectedProduct.product_price) + (selectedProduct.tax * selectedProduct.quantity) - (selectedProduct.discount_amount * selectedProduct.quantity));
            
            
            
            		LSBill.push(selectedProduct);
            		localStorage.setItem('billList', JSON.stringify(LSBill));
            		itemExists = true;
            	} else if(LSBill !== null || LSBill !== [] || LSBill.length !== 0) {
            		console.log('second');
            		LSBill.map((item) => {
            			if(selectedProduct.product_ID === item.product_ID) {
            				itemExists = true;
            				item.quantity += 1;
            				item.total_price = (item.quantity * item.product_price) +(item.quantity * item.tax) -(item.quantity * item.discount_amount);
            
            
            			}
            		});
            		localStorage.setItem('billList', JSON.stringify(LSBill));
            	}
            
            	console.log('ITEM EXISTS::', itemExists);
            
            	if(!itemExists) {
            		console.log('third');
            		selectedProduct.quantity = 1;
            		selectedProduct.productName = selectedProduct.product_Name;
            		selectedProduct.total_price = ((selectedProduct.quantity * selectedProduct.product_price) + (selectedProduct.tax * selectedProduct.quantity) - (selectedProduct.discount_amount * selectedProduct.quantity));
            
            
            
            		LSBill.push(selectedProduct);
            		localStorage.setItem('billList', JSON.stringify(LSBill));
            	}
            
            	itemExists = false;
            	renderTable();
            });
            
            $(".save-btn").click(function() {
            	$(".save-btn").attr("disabled", true);
            	console.log('CURRENT CUSTOMER:', currentCustomer);
            	let latestBill = JSON.parse(localStorage.getItem('billList'));
            	if(currentCustomer === null || currentCustomer === '') {
            		alert('Please enter the customer details to generate Bill');
            		$(".save-btn").attr("disabled", false);
            	} else if(latestBill === null || latestBill === [] || latestBill.length === 0) {
            		alert("Please Add Item(s) to generate bill");
            		$(".save-btn").attr("disabled", false);
            	} else {
            
            		let createBillObj = {
            				cus_id: currentCustomer[0].cus_ID,
            				products: (latestBill !== null || latestBill !== [] || latestBill.length !== 0) ? latestBill : []
            			};
            
            		console.log('THE CREATRE OBJ::', createBillObj);
            		fetch('/createBill', 
            						{
            								method: 'POST',
            								mode: 'cors',
            								body: JSON.stringify(createBillObj),
            									headers: { 'Content-Type': 'application/json' }
            								})
            								.then(res => res.json())
            								.then(
            									(response) => {
            										alert('THE BILL HAS BEEN GENEREATED');
            										currentCustomer = '';
            										localStorage.setItem('billList', JSON.stringify([]));
            										location.reload();
            									},
            									(error) => {
            										alert('ERROR GENERATING BILL! PLEASE TRY AGAIN.');
            									}
            								)
            	}
            });
            
            function renderTable() {
            	let latestBillList = JSON.parse(localStorage.getItem('billList'));
            	console.log("workinggggggggsfsfs",latestBillList);
            	if(latestBillList===null){
            		latestBillList=[];
            		console.log("checkingggfxfrstxez",latestBillList);
            		
            	}
            	var tableData = 
            		'<tr>' +
            			'<th>Sno</th>'+
            			'<th>Product Name</th>'+
            			'<th>Price &#x20B9</th> '+
            			'<th>Quantity</th>'+
            			'<th>GST &#x20B9 </th>'+
            			'<th>Discount &#x20B9</th>'+
            			'<th>Total &#x20B9</th>'+
            			'<th>Delete</th>'+
            		'</tr>';
            		
            	var tv = 'aaa';
            	index = 1;
            	if(latestBillList !== [] ) { 
            	latestBillList.map((item) => {
            		console.log('LOOP LOGGER:', item);	
            		tableData = tableData + 
            		'<tr>' +
            			'<td>'+ index +'</td>' +
            			'<td>' + item.product_Name + '</td>' +
            			'<td>&#x20B9 ' + item.product_price + '</td>' +
            			'<td><button onclick="decrementQty('+item.product_ID+')">-</button>'+ item.quantity +'<button onclick="incrementQty(' + item.product_ID + ')">+</button></td>' +
            			'<td>&#x20B9 ' + item.tax + '</td>' +
            			'<td>&#x20B9 ' + item.discount_amount + '</td>' +
            			'<td>&#x20B9 ' + item.total_price + '</td>' +
            			'<td><button onclick="deleteBillItem('+ item.product_ID +')">DELETE</button></td>' + 
            		'</tr>';
            		index += 1;	
            	});
            	}
            	$(".main-table").html(tableData);
            	console.log('the table data: ', tableData);
            
            	// RENDERING THE TOAL PRICE
            	let billForTotal = JSON.parse(localStorage.getItem('billList'));
            	let grandTotal = 0;
            	billForTotal.map((item) => {
            		grandTotal += item.total_price;
            	});
            	$(".grand-total").html(
            		"Grand Total: &#x20B9 " + grandTotal
            	)
            }
            
            
            function decrementQty(id) {
            	let latestBillList = JSON.parse(localStorage.getItem('billList'));
            	let itemIndex = -1;
            	latestBillList.map((item, index) => {
            		if(item.product_ID === id) {
            			if(item.quantity === 1) {
            				itemIndex = index;
            			} else if(item.quantity > 1) {
            				item.quantity -= 1;
            				//item.total_price = (item.quantity * item.product_price) + item.tax - item.discount_amount;
            
            
            				item.total_price = (item.quantity * item.product_price) +(item.quantity * item.tax) -(item.quantity * item.discount_amount);
            
            
            
            			} 
            		}
            	});
            	console.log('THE ITEM INDEX::', itemIndex);
            	if(itemIndex !== -1 && itemIndex > -1) {
            		latestBillList.splice(itemIndex, 1);
            	}
            	localStorage.setItem('billList', JSON.stringify(latestBillList));
            	renderTable();
            }
            
            function incrementQty(id) {
            	let latestBillList = JSON.parse(localStorage.getItem('billList'));
            	latestBillList.map((item) => {
            		if(item.product_ID === id) {
            				item.quantity += 1;
            				//item.total_price = (item.quantity * item.product_price) + item.tax - item.discount_amount;
            
            					item.total_price = (item.quantity * item.product_price) +(item.quantity * item.tax) -(item.quantity * item.discount_amount);
            
            		}
            	});
            	localStorage.setItem('billList', JSON.stringify(latestBillList));
            	renderTable();
            }
            
            function deleteBillItem(id) {
            	let latestBillList = JSON.parse(localStorage.getItem('billList'));
            	let itemIndex = -1;
            	latestBillList.map((item, index = 0) => {
            		if(item.product_ID === id) {
            			itemIndex = index;
            		}
            	});
            	if(itemIndex !== -1 && itemIndex > -1) {
            		latestBillList.splice(itemIndex, 1);
            	}
            	localStorage.setItem('billList', JSON.stringify(latestBillList));
            	renderTable();
            }
            
            function clearAll() {
            	localStorage.setItem('billList', JSON.stringify([]));
            	renderTable();
            }
            
            function getProductNames() {
            	let productList = productsList;
            	productList.map((value) => {
            		productNames.push(value.product_Name.toString());
            		productIds.push(value.product_ID);
            	})
            	console.log('NAMEL::', productNames);
            	console.log('NAMEL: ss:', productIds);
            }
            
            // Method to check if the customer exists using the phone number
            function checkCustomerExistance() {
            	console.log('CUSTOMER EXISTANCE HIT');
            	$('.customer-success-message').text('');
            	$('.customer-error-message').text('');
            	var phoneNum = $(".customer-phone-no").val();
            	if(phoneNum === '' || ! /^\d{10}$/.test($('.customer-phone-no').val())) {
            		$('.customer-error-message').text('Please enter a valid phone number to check!');
            		$('.customer-success-message').text('');
            	} else {
            		var existingCustomer = customersList.filter(function (item) {
            			return item.cus_number == phoneNum;
            		})
            		console.log('THE EXISTING CUSTOMER:', existingCustomer);
            		if(existingCustomer.length == 0 || existingCustomer == []) {
            			$('.customer-success-message').text('');
            			$('.customer-error-message').text('The Customer does not Exist!');
            		} else {
            			currentCustomer = existingCustomer;
            			console.log('THE EWNNEW: ', currentCustomer );
            			$('.add-customer-btn').attr('disabled', true);
            			$('.customer-success-message').text('The Customer Exists!');
            			$('.customer-name').val(existingCustomer[0].cus_name);
            			$('.customer-email').val(existingCustomer[0].cus_email);
            		}
            	}	
            }
            
            // Check Customer button method
            $(".check-customer-btn").click(() => this.checkCustomerExistance());
            
            // Add customer button method - Add a new Customer 
            $(".add-customer-btn").click(function() {
            	$('.customer-success-message').text('');
            	$('.customer-error-message').text('');
            	if($('.customer-name').val() === '' || $('.customer-phone-no').val() === '' || $('.customer-email').val() === '') {
            		$('.customer-success-message').text('');
            		$('.customer-error-message').text('Please Fill all the details!');
            	} else {
            		if(! /^\d{10}$/.test($('.customer-phone-no').val())) {
            			$('.customer-success-message').text('');
            			$('.customer-error-message').text('Please enter a Valid Phone Number!');
            		} else if(! /^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[A-Za-z]+$/.test($('.customer-email').val())) {
            			$('.customer-success-message').text('');
            			$('.customer-error-message').html('Please enter a Valid Email Address!');
            			alert('Please enter a Valid Email Address!');
            		} else {
            			fetch('/createCustomer', 
            				{
            					method: 'POST',
            					mode: 'cors',
            					body: JSON.stringify({
            						cus_name: $('.customer-name').val(),
            						cus_number: $('.customer-phone-no').val(),
            						cus_email: $('.customer-email').val()
            					}),
            					headers: { 'Content-Type': 'application/json' }
            				})
            				.then(res => res.json())
            				.then(
            					(response) => {
            						console.log('CUSTOMER CREATION:', response);
            						$('.add-customer-btn').attr('disabled', true);
            						$('.customer-success-message').text('Customer Creation Successful');
            						$('.customer-error-message').text('');
            						fetch('http://localhost:8080/allCustomers')
                       					.then(response => response.json())
                       					.then((data)=> {
            								customersList = data;
            								alert('New Customer Created!');
            								checkCustomerExistance();
            								console.log('THE NEW CURRENT :', currentCustomer);
            							});
            					},
            					(error) => {
            						console.log('ERROR CREATING CUSTOMER:', error);
            						$('.customer-success-message').text('');
            						$('.customer-error-message').text('Error creating Customer! Please try again.');
            					}
            				);
            		}
            	}
            	$('.customer-success-message').text('CUSTOMRE CREAR');
            	$('.customer-error-message').text('');
            	checkCustomerExistance();
            })
            
            
            
            
            
            // Add New Product
            $(".add-newproduct-btn").click(function() {
            	console.log('ADD PRODUCT HIT');
            	$('.product-success-message').text('');
            	$('.product-error-message').text('');
            	if($('.add-product-name').val() === '' || $('.add-product-price').val() === '' || $('.add-product-tax').val() === '' || $('.add-discount-amount').val() === '' ) {
            		$('.add-product-success-message').text('');
            		$('.add-product-error-message').text('Please Fill all the details!');
            		alert('please enter valid product details')
            	}else {
            			fetch('/createProduct', 
            				{
            					method: 'POST',
            					mode: 'cors',
            					body: JSON.stringify({
            						product_Name: $('.add-product-name').val(),
            						product_price: $('.add-product-price').val(),
            						tax: $('.add-product-tax').val(),
            						discount_amount: $('.add-discount-amount').val()
            					}),
            					headers: { 'Content-Type': 'application/json' }
            				})
            				.then(res => res.json())
            				.then(
            					(response) => {
            						console.log('PRODUCT CREATION:', response);
            						$('.add-newproduct-btn').attr('disabled', true);
            						$('.product-success-message').text('Product Added Successful');
            						$('.product-error-message').text('');
            						fetch('http://localhost:8080/allProducts')
                       					.then(response => response.json())
                       					.then((data)=> {
            								productsList = data;
            								alert('New Product Added');
            								$('.add-product-name').val('');
            								$('.add-product-price').val('');
            								$('.add-product-tax').val('');
            								$('.add-discount-amount').val('');
            								
            								
            							});
            					},
            					(error) => {
            						console.log('ERROR CREATING PRODUCT:', error);
            						$('.product-success-message').text('');
            						$('.product-error-message').text('Error creating New Product! Please try again.');
            					}
            				);
            		}
            	
            })
            
            
            
            
            
            
            
            
            
            function SomeDeleteRowFunction() {
            	// event.target will be the input element.
            	var td = event.target.parentNode;
            	var tr = td.parentNode; // the row to be removed
            	tr.parentNode.removeChild(tr);
            }
            function wcqib_refresh_quantity_increments() {
            	jQuery(
            			"div.quantity:not(.buttons_added), td.quantity:not(.buttons_added)")
            			.each(
            					function(a, b) {
            						var c = jQuery(b);
            						c.addClass("buttons_added"),
            								c
            										.children()
            										.first()
            										.before(
            												'<input type="button" value="-" class="minus" />'),
            								c
            										.children()
            										.last()
            										.after(
            												'<input type="button" value="+" class="plus" />')
            					})
            }
            String.prototype.getDecimals
            || (String.prototype.getDecimals = function() {
            	var a = this, b = ("" + a)
            			.match(/(?:\.(\d+))?(?:[eE]([+-]?\d+))?$/);
            	return b ? Math.max(0, (b[1] ? b[1].length : 0)
            			- (b[2] ? +b[2] : 0)) : 0
            }),
            		jQuery(document).ready(function() {
            			wcqib_refresh_quantity_increments()
            		}),
            		jQuery(document).on("updated_wc_div", function() {
            			wcqib_refresh_quantity_increments()
            		}),
            		jQuery(document)
            				.on(
            						"click",
            						".plus, .minus",
            						function() {
            							var a = jQuery(this).closest(".quantity")
            									.find(".qty"), b = parseFloat(a
            									.val()), c = parseFloat(a
            									.attr("max")), d = parseFloat(a
            									.attr("min")), e = a.attr("step");
            							b && "" !== b && "NaN" !== b
            							|| (b = 0),
            							"" !== c && "NaN" !== c || (c = ""),
            							"" !== d && "NaN" !== d || (d = 0),
            							"any" !== e && "" !== e
            							&& void 0 !== e
            							&& "NaN" !== parseFloat(e)
            							|| (e = 1),
            									jQuery(this).is(".plus") ? c
            											&& b >= c ? a.val(c)
            											: a
            													.val((b + parseFloat(e))
            															.toFixed(e
            																	.getDecimals()))
            											: d && b <= d ? a.val(d)
            											: b > 0
            											&& a
            													.val((b - parseFloat(e))
            															.toFixed(e
            																	.getDecimals())),
            									a.trigger("change")
            						});
      </script>
   </body>
</html>