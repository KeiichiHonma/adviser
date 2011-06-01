function getSpeed(url)
{
    path = '';
    if(url != ''){
        path += '&url=' + url;
    }
    var paramList = "?time=" + (new Date().getTime());
    url = analyze_url + paramList + path;
    //url = 'http://china-adviser.apollon.corp.813.co.jp/analyze' + paramList + path;
    //url = 'http://www.kujapan.com/speed/china.php' + paramList + path;
    
    var oJsr = new JSONscriptRequest(url);
    oJsr.buildScriptTag();
    oJsr.addScriptTag();
    //oJsr.removeScriptTag();
}

function speed_callback(data) {
    document.getElementById("speed_result").innerHTML = result_parse(data);
}

// JSONのデータを解析して表示
function result_parse(data)
{
    //document.getElementById("road").style.display = 'none';
    document.getElementById('road').style.visibility="hidden";
    var resultText = '';
    
    for(var i=0; i<data.item.length; i++)
    {
        total_time = data.item[i].total_time;
        if(total_time == ''){
            resultText += '<span>エラー</span>';
            break;
        }else{
            resultText += '<span>' + total_time + '秒</span>';
        }
    }
    return resultText;
}

// init
function speedInit(url){
    if(myForm.Apply()){
        document.getElementById("speed_result").innerHTML = '';
        document.getElementById("road").style.visibility="visible";
        getSpeed(url);
    }

}


