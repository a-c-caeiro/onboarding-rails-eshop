import common from 'common/common.js';

window.onload = function() {

	var tr = document.getElementById('tr1');
	console.log(tr)
	//tr.style.backgroundColor="black";
	var list = document.getElementsByClassName("buttonDown");
	for (var i = 0; i < list.length; i++) {
	    list[i].addEventListener('click',  getDetails);
	}
};

function getDetails() {

	var orderid = this.getAttribute('data-id')
	var ele = document.getElementById('detail-'+orderid);
    if (ele.getAttribute('mydata') == "wowMuchEmpty"){
        requestContent(orderid,ele)
    }
    var tr = document.getElementById('tr'+orderid);
    if(ele.style.display == "table-row") {
            ele.style.display = "none"; 
            tr.style.border = " 0px";
            ele.style.border = " 0px";
            var c = tr.childNodes;
            for (var i = 0; i < c.length; i++) {
              if (c[i].nodeName.toLowerCase() == 'td') {
                c[i].style.borderBottom = " 1px solid #ddd";
              }
            } 
    }
    else {
        setTrCss(tr);
        setEleCss(ele);
    }
}

function requestContent(orderid,ele)
{
    const axios = require('axios');
    console
    axios.get('/orders/'+orderid+'/detail.json')
      .then(function (response) {
        // handle success
        ele.setAttribute('mydata',"wowMuchData")
        ele.innerHTML=(response.data)
      })
      .catch(function (error) { console.log(error);})
      .then(function () { /*always executed*/ });
}
function setEleCss(ele)
{
    ele.style.display = "table-row";
    ele.style.borderRadius = "10%";
    ele.style.borderTop = " 0px solid #ddd";
    ele.style.borderLeft = " 1px solid #ddd"; 
    ele.style.borderRight = " 1px solid #ddd";
    ele.style.borderBottom = " 0px solid #ddd";
}
function setTrCss(tr){

    tr.style.borderRadius = "50%";
    tr.style.borderTop = " 1px solid #ddd";
    tr.style.borderLeft = " 1px solid #ddd"; 
    tr.style.borderRight = " 1px solid #ddd";
    tr.style.borderBottom = " 0px solid #ddd";
    var c = tr.childNodes;
    for (var i = 0; i < c.length; i++) {
      if (c[i].nodeName.toLowerCase() == 'td') {
        c[i].style.borderBottom = " 0px solid #ddd";
      }
    }
}