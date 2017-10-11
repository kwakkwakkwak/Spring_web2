var util = {};

util.requestSync = function (url,param,method,callback) {
    $.ajax({
        url : url,
        method :method,
        dataType : "JSON",
        data : param,
        error : function() {alert('error')},
        success : callback
    });

}

// var contextRoot = "/WebSpringStudy";
util.initSelectBox = function (id, groupCode, value, select, service) {
    if(groupCode == null ) return;
    var reqData = {upcd : groupCode};

    var serv = "/common/getCodeList.html";

    if(service) serv = service;

    util.requestSync(serv, reqData, 'POST',
        function (data) {
      var obj = $('#' + id).get(0);
      // noinspection JSAnnotator
            obj.options.length = 0;
      if(select == "Y") obj.add(new Option("-select-",""));

      for(var i = 0 ; i < data.codeList.length ; i++){
          var item = data.codeList[i];
          if(item.CODE == value) {
              obj.add(new Option(item.VALUE, item.CODE, true, true));
          } else {
              obj.add(new Option(item.VALUE, item.CODE));
          }
      }
    });
};