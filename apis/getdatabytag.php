<?php

include_once("../config/dbconnect.php");

header('Content-Type: application/json');

if (isset($_GET['apikey'])) {
    //check if api_key is valid or not
    $api_key = $_GET['apikey'];
    $apiKey = $conn->query("SELECT * FROM `master_api_key` WHERE api_key = $api_key");
    //if api key is valid
    if ($apiKey->num_rows > 0) {

        //get tag to be searched
        $tag = $_GET['tag'];

        //fecth the rid who have the requested tags
        $ridResponse = $conn->query("SELECT rid from master_tags WHERE tag='$tag';");

        $dataArray = [];

        //if rid with seleted TAG exists
        if ($ridResponse->num_rows > 0) {
            //iterate over $resturantResponse and insert into data array
            while ($riddata = $ridResponse->fetch_assoc()) {

                //fetch tags for each resturants
                //rid=resturant_id
                $rid = $riddata['rid'];
                $dataResponse = $conn->query("SELECT * FROM master_resturant WHERE rid = $rid");

                if ($dataResponse->num_rows > 0) {
                    while ($data = $dataResponse->fetch_assoc()) {
                        $id = $data['rid'];
                        $tagsResponse = $conn->query("SELECT * FROM master_tags WHERE rid = $id");
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
                }
            }
            echo json_encode(array("succes " => "true", "data" => $dataArray));
        }
    } else {
        echo json_encode(array("error mesage" => "apikey Invalid"));
    }
} else {
    echo json_encode(array("error mesage" => "apikey missing"));
}
