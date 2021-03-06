<?php

include_once("../config/dbconnect.php");

header('Content-Type: application/json');

if (isset($_GET['apikey']) && isset($_GET['offset'])) {
    //check if api_key is valid or not
    $api_key = $_GET['apikey'];
    $offset = $_GET['offset'];
    $apiKey = $conn->query("SELECT * FROM `master_api_key` WHERE api_key = $api_key");
    //if api key is valid
    if ($apiKey->num_rows > 0) {
        //fecth data from master_resturant table (using pagination)
        $resturantResponse = $conn->query("SELECT * FROM master_resturant LIMIT $offset, 20");

        $dataArray = [];

        //if data exists
        if ($resturantResponse->num_rows > 0) {
            //iterate over $resturantResponse and insert into data array
            while ($data = $resturantResponse->fetch_assoc()) {

                //fetch tags for each resturants
                //rid=resturant_id
                $rid = $data['rid'];
                $tagsResponse = $conn->query("SELECT * FROM master_tags WHERE rid = $rid");
                $tags = [];

                if ($tagsResponse->num_rows > 0) {
                    //iterate over tags and fill the array and push into data 
                    while ($tag = $tagsResponse->fetch_assoc()) {
                        $tag = $tag['tag'];
                        array_push($tags, $tag);
                    }
                }
                //push tags array into $data
                $data['tags'] = $tags;

                array_push($dataArray, $data);
            }
            echo json_encode(array("succes " => "true", "data" => $dataArray));
        }
    } else {
        echo json_encode(array("error mesage" => "apikey Invalid"));
    }
} else {
    echo json_encode(array("error mesage" => "apikey missing"));
}
