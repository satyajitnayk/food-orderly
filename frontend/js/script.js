//function to handle if favorite btn clicked => store json data into locaalstorage
//by converting into stringify 
function addToFavorite(resturantData) {
    console.log(JSON.parse(resturantData));
    //get privously added favorite cards using fav key
    // favResturantData = localStorage.getItem('fav');
    //apppend new card
    // favResturantData += resturantData;
    // JSON.stringify(resturantData);
    //store back to localstorage
    // localStorage.setItem('fav',favResturantData);
}

$(function() {

    //by default fetch first 20 resturants and display
    generateAllResturant(1);


    //function to handle filterBy(tag)
    function filterBy(tag) {
        let response = fetch("../apis/getdatabytag.php?apikey=14598822&tag="+tag);
        response.then(res => res.json()).then(data => {
            
            //empty previous view
            $('.res-box').html('');

            printHTML = generateView(data);
     
            $('.res-box').html(printHTML);
        });    
    }

    //function to handle sort by label
    function sortBy(label) {
        let response = fetch("../apis/getsorted_data.php?apikey=14598822&label="+label);
        response.then(res => res.json()).then(data => {
            
            //empty previous view
            $('.res-box').html('');

            printHTML = generateView(data);
     
            $('.res-box').html(printHTML);
        });    
    }

    function getTagHTML(resturant) {
        tagHTML = '<div class="row">';
        tags = resturant.tags;
        
        tags.forEach(tag => {
            tagHTML +=
                '<div class="col small-box">'
                    +'<span>'
                        +tag
                    +'</span>'
                +'</div>'
                
        }) ;

        tagHTML += '</div>';

        return tagHTML;
    }

    //take searchtext
    function searchResturant(searchtext) {
        //if searchtext contain anything then fetch result
        if(searchtext.length > 0) {
            let response = fetch("../apis/searchbyname.php?apikey=14598822&searchtext="+searchtext);
            response.then(res => res.json()).then(data => {
                
                //empty previous view
                $('.res-box').html('');
    
                printHTML = generateView(data);
         
                $('.res-box').html(printHTML);
            });
        } 
        //when no text in search bar fetch all data
        else {
            generateAllResturant();
        }
    }

    function getCard(resturant) {
        stringData = JSON.stringify(resturant);
        // addToFavorite(stringData);
        // console.log(stringData);
        printTag = getTagHTML(resturant); 

        print = 
            '<div class="col res-pad" id="'+resturant.id+'">'
                +'<div class="card" style="width: 18rem;">'
                    +'<img class="card-img-top" src='+resturant.img+' alt="Card image cap">'
                    +'<div class="card-body">'
                    +'<h5 class="card-title">'+resturant.name+'</h5>'
                    +'<h5 class="card-title">'+resturant.location+'</h5>'
                    +'<p class="card-text">Rating: '+resturant.rating+'</p>'
                    +'<p class="card-text">ETA: '+resturant.ETA+' mins</p>'
                    +printTag
                    +'<button class="btn btn-warning" onclick="addToFavorite('+"'"+stringData+"'"+')">add to fav</button>'
                    +'</div>'
                +'</div>'
            +'</div>';

        return print;
    }

    function generateView(data) { 
        data = data.data;
        printHTML = '';

        data.forEach(resturant => {
            // console.log(resturant);
            printHTML += getCard(resturant);
        });

        return printHTML;
    }

    function generateAllResturant(pagenumber) {

        let no_ofresponse_per_page = 20;
        let offset = (pagenumber-1)*no_ofresponse_per_page;

        let response = fetch("../apis/getdata.php?apikey=14598822&offset="+offset);
        response.then(res => res.json()).then(data => {
    
            printHTML = generateView(data);
     
            $('.res-box').html(printHTML);
        });    
    }

   

    //onpressing search call searchResturant function
    $('.search').on('click',()=> {
        //get searchtext from search box
        searchtext = $(".search-text").val();
        searchResturant(searchtext);
    });

    //onchanging sort by drop down call sortBy()
    $('.sort-select').change(function() {
        var label = $(this).val();
        // console.log(label);
        sortBy(label);
    });

    
    //onchanging sort by drop down call filterBy(tag)
    $('.filter-select').change(function() {
        var tag = $(this).val();
        // console.log(label);
        filterBy(tag);
    });

    //code for pagination to work
    $('li').on('click',function(e) {
        e.preventDefault();
        id = parseInt($(this).find('a').attr('id'));
        console.log(id);
        generateAllResturant(id);
    });


});