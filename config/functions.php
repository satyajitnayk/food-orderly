<?php

function check_method()
{
    if ($_SERVER['REQUEST_METHOD'] == 'POST') {
        return 'POST';
    } else {
        return 'GET';
    }
}

//Initialize server data variable
/**
 * This function is for parameter checking
 * check_params_error
 * 
 *@param mixed $f_Data
 *@param mixed $f_PARAM
 *@return void 
 */
function check_params_error($f_DATA, $f_PARAM)
{
    //invalid params
    $f_PM = '';
    //valid params
    $f_PV = '';
    $f_PM_count = $f_PV_count = 0;
    $params = $f_PARAM['name'];
    for ($i = 0; $i < count($params); $i++) {
        if (isset($f_DATA[$params[$i]])) {
            $f_PV .= $params[$i] . ',';
            $f_PV_count++;
        } else {
            $f_PM .= $params[$i] . ',';
            $f_PM_count++;
        }
    }

    if (count($f_PARAM['name']) == $f_PV_count) {
        return 0;
    } else {
        return array("Params Missing or Invalid" => $f_PM, "Params Valid" => $f_PV);
    }
}


//Encode API response
/**
 * This function is for formating the response message
 * returnData
 * 
 *@param mixed $responseMsg
 *@param mixed $responseCode
 *@param mixed $data
 *@return void
 */
function returnData($responseMsg = "Some Error Occured", $responseCode = 401, $data = '')
{
    return array("ResponseCode" => $responseCode, "ResponseMsg" => $responseMsg, "response" => $data);
}

//init API
/**
 * This function is for validating all required parameters in init_api
 * 
 * @param mixed $f_METHOD
 * @param mixed $f_DATA
 * @param mixed $f_PARAMS
 * @param mixed $f_ERROR
 * @return void
 */
function init_api($f_METHOD, $f_DATA, $f_PARAMS, $f_ERROR = '')
{
    //check if API call satisfies required method and contains valid parameters
    if (check_method() != $f_METHOD) {
        //print accepted method
        $returnArr = returnData($f_METHOD . ' Method Accepted Only');
    } else {
        //check parameter erros if any
        if ($f_ERROR = check_params_error($f_DATA, $f_PARAMS)) {
            $returnArr = returnData($f_ERROR);
        } //else execute main method
        else {
            // $returnArr = execute_main();
        }
    }
    return $returnArr;
}
