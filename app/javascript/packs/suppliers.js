import common from 'common/common.js';

window.onload = function() {
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
        this.innerHTML = "<i class='fas fa-caret-down'></i>"
        this.style.color ="#BDBDBD"
        this.style.boxShadow="0px 0px 0px 0px";
        ele.style.display = "none"; 
        tr.style.border = " 0px";
        ele.style.border = " 0px";
        tr.style.borderRadius = "0px";
        var c = tr.childNodes;
        for (var i = 0; i < c.length; i++) {
          if (c[i].nodeName.toLowerCase() == 'td') {
            c[i].style.borderBottom = " 1px solid #ddd";
          }
        } 
    }
    else {
        this.innerHTML = "<i class='fas fa-caret-up'></i>"
        this.style.color ="#6A63D9"
        this.style.boxShadow="0px 2px 2px 1px rgba(0,0,0,0.2)";
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
    ele.style.borderTop = " 0px solid #ddd";
    ele.style.borderLeft = " 2px solid #ddd"; 
    ele.style.borderRight = " 2px solid #ddd";
    ele.style.borderBottom = " 2px solid #ddd";
    ele.style.borderRadius="20px";

}
function setTrCss(tr){

    tr.style.borderTop = " 2px solid #ddd";
    tr.style.borderLeft = " 2px solid #ddd"; 
    tr.style.borderRight = " 2px solid #ddd";
    tr.style.borderBottom = " 0px solid #ddd";
    tr.style.borderRadius="20px";
    var c = tr.childNodes;
    for (var i = 0; i < c.length; i++) {
      if (c[i].nodeName.toLowerCase() == 'td') {
        c[i].style.borderBottom = " 0px solid #ddd";
      }
    }
}