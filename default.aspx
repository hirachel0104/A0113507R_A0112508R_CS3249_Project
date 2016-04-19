
<!DOCTYPE html>

<html>
<head><meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Ensure IE uses the latest version -->

    <title>
	Student Events > List Events
</title>
    
    
    
    <style>
        
        
        .black {
            color: black;
        }
    </style>




    <!-- Define UTF8 as character set -->
    <meta charset="utf-8" />

    <!-- Set viewport to device width, default zoom 100%-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />

    <!-- Boot strap css -->
    <link href="/v1/Content/CSS/bootstrap.css" rel="stylesheet" />

    <!-- custom icon css -->
    <link href="/v1/Content/CSS/fontello.css" rel="stylesheet" /><link href="/v1/Content/CSS/font-awesome.min.css" rel="stylesheet" />

    <!-- CSS specific to the site -->
    <link href="/v1/Content/CSS/site.css" rel="stylesheet" />

    <!-- SCRIPTS MUST BE IN THE ORDER BELOW, DO NOT ATTEMPT TO MODIFY ANYTHING -->
    <script src="/v1/Content/Scripts/modernizr-2.6.2.js"></script>
    <script src="/v1/Content/Scripts/jquery-1.10.2.min.js"></script>
    <script src="/v1/Content/Scripts/jquery-ui.min.js"></script>
    <script src="/v1/Content/Scripts/bootstrap.min.js"></script>
    <script src="/v1/Content/Scripts/respond.min.js"></script>
    <script src="/v1/Content/Scripts/jquery.xdomainrequest.min.js"></script>

    <!-- JS specific to the site -->
    <script src="/v1/Content/Scripts/site.js"></script>
</head>
<body>
    <form method="post" action="./default.aspx" id="aspnetForm">
<div>
<input type="hidden" name="__EVENTTARGET" id="__EVENTTARGET" value="" />
<input type="hidden" name="__EVENTARGUMENT" id="__EVENTARGUMENT" value="" />
<input type="hidden" name="__VIEWSTATE" id="__VIEWSTATE" value="/wEPZwUPOGQzNjZkZjVhOGJmMTk5Fn16mjldxgm23aHrhDx1P0r3xmHcE7k8u2ErYbvIRYw=" />
</div>

<script type="text/javascript">
//<![CDATA[
var theForm = document.forms['aspnetForm'];
if (!theForm) {
    theForm = document.aspnetForm;
}
function __doPostBack(eventTarget, eventArgument) {
    if (!theForm.onsubmit || (theForm.onsubmit() != false)) {
        theForm.__EVENTTARGET.value = eventTarget;
        theForm.__EVENTARGUMENT.value = eventArgument;
        theForm.submit();
    }
}
//]]>
</script>


<script src="/WebResource.axd?d=s6z8XS498a8-eLp2lrGCDua0cbHeSpc0K0YqzSTdEcJRQB2ivj9wchUQIz0AjBrkb0b_wyBTqi_uMLZGxteRf8zMURAbGM8ToVz2vjS2AZw1&amp;t=635793315671809273" type="text/javascript"></script>

<div>

	<input type="hidden" name="__VIEWSTATEGENERATOR" id="__VIEWSTATEGENERATOR" value="121F9204" />
	<input type="hidden" name="__SCROLLPOSITIONX" id="__SCROLLPOSITIONX" value="0" />
	<input type="hidden" name="__SCROLLPOSITIONY" id="__SCROLLPOSITIONY" value="0" />
</div>
        <div class="col-md-12">
            
    <style>
    #notification_li
 {
 position:relative
 }
    /*
#notificationContainer 
 {
 background-color: #fff;
 border: 1px solid rgba(100, 100, 100, .4);
 -webkit-box-shadow: 0 3px 8px rgba(0, 0, 0, .25);
 overflow: visible;
 position: absolute;
 top: 100%;
 margin-left: -228px;
 width: 330px;
    min-width: 200px;
  z-index: 1000;
 display: none; /* Enable this after jquery implementation */
 /*}
/*Popup Arrow*/
/*#notificationContainer:before {
 content: '';
 display: block;
 position: absolute;
 width: 0;
 height: 0;
 color: transparent;
 border: 10px solid black;
 border-color: transparent transparent white;
 margin-top: -20px;
 margin-left: 228px;
 }*/
#notificationTitle
 {
 font-weight: bold;
 padding: 8px;
 font-size: 13px;
 background-color: #ffffff;
 position: absolute;
 z-index: 1000;
 width: 314px;
 border-bottom: 1px solid #dddddd;
 color:#ff7788;
 }
#notificationsBody
 {
 padding: 33px 0px 0px 0px !important;
 min-height:300px;
width:100%;
 }
#notificationFooter
 {
 background-color: #e9eaed;
 text-align: center;
 font-weight: bold;
 padding: 8px;
 font-size: 12px;
 border-top: 1px solid #dddddd;
 }

#notification_count 
 {
 padding: 3px 7px 3px 7px;
 background: #cc0000;
 color: #ffffff;
 font-weight: bold;
 margin-left: 30px;
border-radius: 9px;
-moz-border-radius: 9px; 
-webkit-border-radius: 9px;
 position: absolute;
 margin-top: 0px;
 font-size: 11px;
 }
        </style>
    <script src="/includes/js/workspace.js"></script>
    <script type="text/javascript" >
        $(document).ready(function () {
            //var clickStartTime = dateFormat(now, "mm/dd/yyyy HH:MM:ss");
            $("#notificationLink").click(function () {
                $("#notificationContainer").fadeToggle(300);
                $("#notification_count").fadeOut("slow");
                $.ajax({
                    cache: false,
                    type: "POST",
                    url: "/v1/eventfeeds.aspx/UpdateLastViewed",
                    data: "{}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (msg) {
                        //alert(msg);
                    }

                });
                return false;
            });

            //Document Click hiding the popup 
            $(document).click(function () {
                $("#notificationContainer").hide();
            });

            //Popup on click
            $("#notificationContainer").click(function () {
                return false;
            });

        });
</script>


    
    <!-- Top Bar -->
    <div class="navbar navbar-inverse">
        <div class="container-fluid">
            <div class="navbar-header">

                <!-- Navbar to Button in mobile view -->
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <!-- Navbar to Button in mobile view [End] -->

                <ul class="nav navbar-nav navbar-left">
                    <li class="dropdown pull-left">
                        <a href="#" data-toggle="dropdown" class="dropdown-toggle"><img src="/v1/Content/images/ivle-logo-small.png" border="0" />&nbsp;<span class="caret"></span></a>
                        <ul class="dropdown-menu" role="menu">
                            <li><a href="/default.aspx">Home</a></li>
                            <li><a href="/v1/workspace.aspx">The new IVLE</a></li>
                            <li><a href="/workspace.aspx">IVLE Classic</a></li>
                        </ul>
                    </li>
                    
                </ul>
            </div>

            <!-- Top Menu Bar -->
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">
                    <li><a id="ctl00_ctl00_ctl00_ContentPlaceHolder1_lblAcadTxt">2015/2016 Semester 2, Week 13</a></li>
                </ul>

                <ul class="nav navbar-nav navbar-right">                                   
                   
                    <li class="dropdown">
                        <a id="ctl00_ctl00_ctl00_ContentPlaceHolder1_lblProfile" style="cursor:pointer" class="dropdown-toggle" data-toggle="dropdown">HUANG LI</a>
                        <ul class="dropdown-menu">
                            <li><a href="/v1/Profile/student_preference.aspx" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_aProfile"><span class="glyphicon glyphicon-user"></span>&nbsp;Profile</a></li>
                            <li><a href="/v1/Profile/notifications.aspx" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_a1"><span class="fa fa-rss"></span>&nbsp;Subscription</a></li>
                            <li><a href="/logout.ashx"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Log Out</a></li>
                        </ul>
                    </li>

                    <li><a href="/default.aspx"><span class="glyphicon glyphicon-home"></span></a></li>

                    <li id="notification_li">
                        <span id="notification_count">

<script src="/includes/js/json2.min.js" type="text/javascript"></script>
<script src="/includes/js/jquery.signalR-0.5.3.min.js" type="text/javascript"></script>


<script type="text/javascript">

    jQuery.support.cors = true;
    var sv = '5'
    var svCount = parseInt(sv.toString());
    var count = 1;

          // Proxy created on the fly.
        var connection = $.connection('https://rtp.ivle.nus.edu.sg/echo');
        connection.logging = true;

        connection.received(function (data) {                
            svCount++;           
            $('#echocid').html(svCount);            

        });
        connection.start({ jsonp: true }, function () {                       
           
            $('#echocid').html(svCount);
            var myClientId = connection.id;            

        })


        $(window).unload(function () {
            if (connection != null)
                connection.stop();
        });


        $.ajaxSetup({
            cache: false
        });

   
</script>

<script type="text/javascript">       
    

</script>
<div class="tab-content">
    <div class="tab-pane active">
        <span id="echocid"></span>
        
    </div>   
</div></span>
                        <a href="#" id="notificationLink" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-bell"></span></a>
                        <div id="notificationContainer" class="dropdown-menu" style="width:330px;">
                            <div id="notificationTitle">Notifications</div>
                            <div id="notificationsBody" class="notifications"> 

<style type="text/css">
    .messageBox {
       
        /*background-color: #ffffff;
        color: gray;
        width: 100%;
        border-bottom: 1px solid lightgray;
        border-left: 0px solid black;
        padding: 2px;
        position: relative;
        overflow: auto;
        word-wrap: break-word;
        font-size:12px;
        margin: 10px;
        border-radius:4px;*/
        width: 100%;
        padding:5px;
        margin:10px;
        background:#eef3f6;
        border-radius:4px;
         position: relative;
        overflow: auto;
        word-wrap: break-word;
        font-size:12px;
        
    }

        .messageBox:hover {
            /* change background color on mouseover */
            background-color: #eee;
        }

   
</style>
<script src="/includes/js/json2.min.js" type="text/javascript"></script>
<script src="/includes/js/jquery.signalR-0.5.3.min.js" type="text/javascript"></script>
<link rel="stylesheet" href="/v1/content/css/jquery.mCustomScrollbar.css">
<script src="/v1/content/scripts/jquery.mCustomScrollbar.concat.min.js"></script>


<script>
    

    jQuery.support.cors = true;

    var count = 1;

    $(document).ready(function () {
        $('#ctl00_ctl00_ctl00_ContentPlaceHolder1_Notifications_lblHtmlContent').show().html();
    });

    jQuery(function ($) {
        $('#deck').mCustomScrollbar({ 
            scrollButtons:{enable:true},
            theme:"dark-thick",            
            setWidth: "100%",
            setHeight: 250,
            callbacks:{
                onTotalScroll: function () { InfiniteScroll() },
                onTotalScrollOffset:100,
                alwaysTriggerOffsets:false
            }
                    
        }).css({ background: '#fff', paddingRight: '1px' }).data('ajaxready', true).scroll(function (e) {
            if ($('#deck').data('ajaxready') == false) return;

       
        });
        

        function htmlEncode(value) {
            
        }
            
        connection.received(function (data) {
            var msg;
            var str = String(data);            
            if (str.indexOf("Announcement") >= 0)
                msg = str.replace("/Announcement/popup_event.aspx", "/v1/Announcement/popup_event.aspx");
            else if (str.indexOf("Forum") >= 0) {
                str = str.replace("winopen(", "location.href=").replace(",0,0);", "");
                msg = str.replace("/Forum/forum.aspx", "/v1/forum/board_read.aspx");
            }
            else if (str.indexOf("Workbin") >= 0) {
                str = str.replace("winopen(", "location.href=").replace(",0,0);", "");
                msg = str.replace("/workbin/workbin.aspx", "/v1/File/Student/default.aspx").replace("nodeSelectedIndex", "FolderID");
            }
            $('#deck .mCSB_container').prepend('<div class=\"messageBox\">' + msg + '<br />')
        });
       
       
        $.ajaxSetup({
            cache: false
        });

        });

</script>

<script type="text/javascript">
    function winopen(url, w, h, AcceptMyParam) {

        if (AcceptMyParam === undefined) {
            w = 990;
            h = 600;
        }

        var left = (screen.width) ? (screen.width - w) / 2 : 0;
        var top = (screen.height) ? (screen.height - h) / 2 : 0;

        window.open(url, "_blank", "width=" + w + ",height=" + h + ",left=" + left + ",top=" + top + ",resizable=yes,scrollbars=yes");

        return;
    }

    function InfiniteScroll() {
        $('#divPostsLoader').html('<img src="../images/loader.gif">');
        $('#deck').data('ajaxready', false);
        //send a query to server side to present new content
        $.ajax({
            cache: false,
            type: "POST",
            url: "/v1/eventfeeds.aspx/GetNextPastEvents",
            data: "{'currentCount':'" + count + "'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (data) {
                if (data.d != "") {
                    $('#divmoreContent').append(data.d);
                    $('#divPostsLoader').hide();
                    count++;
                }
                else {
                    $('#divPostsLoader').html('<img src="../images/loader.gif">');
                    InfiniteScroll = function () { $('#divnomoreContent').html('No more results to load'); };

                }
                $('#deck').data('ajaxready', true);
            }
        });

    }
    function empty() {

    };

    


</script>
<div class="tab-content">
    <div class="tab-pane active" id="notification">
        <span id="echocid"></span>
        <div id="deck">
            <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_Notifications_lblHtmlContent" style="display: none;"><table border='0' cellpadding='0' cellspacing='0' width='100%' class="messageBox"><tr><td width='100%'</td></tr><tr><td width='100%' class='font-black' style='padding-left:5px;padding-bottom:5px;'><b>SSA2211/GES1011</b> posted a new announcement<br><br><span class='glyphicon glyphicon-bullhorn' style='color:red'></span> <a href="javascript:void(0);" onclick="winopen('/v1/Announcement/popup_event.aspx?eventID=ddac50a8-d1b3-48f2-a8f2-84cc8a8a3fc4',0,0);">Collection of CA2 scripts/Exam Venue and time</a><br>15-Apr-2016 05:00 PM</td></tr><tr><td width='100%' class='font-black' style='padding-left:5px;padding-bottom:5px;'></td></tr></table><table border='0' cellpadding='0' cellspacing='0' width='100%' class="messageBox"><tr><td width='100%'</td></tr><tr><td width='100%' class='font-black' style='padding-left:5px;padding-bottom:5px;'><b>CS3223</b> posted a new announcement<br><br><span class='glyphicon glyphicon-bullhorn' style='color:red'></span> <a href="javascript:void(0);" onclick="winopen('/v1/Announcement/popup_event.aspx?eventID=d33795eb-c235-4718-9dc1-217a66372905',0,0);">Final Exam (May 3, 5-7pm, SR1)</a><br>15-Apr-2016 01:56 PM</td></tr><tr><td width='100%' class='font-black' style='padding-left:5px;padding-bottom:5px;'></td></tr></table><table border='0' cellpadding='0' cellspacing='0' width='100%' class="messageBox"><tr><td width='100%'</td></tr><tr><td width='100%' class='font-black' style='padding-left:5px;padding-bottom:5px;'><b>ST2334</b> posted a new announcement<br><br><span class='glyphicon glyphicon-bullhorn' style='color:red'></span> <a href="javascript:void(0);" onclick="winopen('/v1/Announcement/popup_event.aspx?eventID=036b6ae2-70e5-4cac-917f-28ca62ac308d',0,0);">End-of-Semester Survey</a><br>15-Apr-2016 12:35 PM</td></tr><tr><td width='100%' class='font-black' style='padding-left:5px;padding-bottom:5px;'></td></tr></table><table border='0' cellpadding='0' cellspacing='0' width='100%' class="messageBox"><tr><td width='100%'</td></tr><tr><td width='100%' class='font-black' style='padding-left:5px;padding-bottom:5px;'><b>SSA2211/GES1011</b> has a new file uploaded <BR/><BR/><span class='glyphicon glyphicon-file' style='color:green'></span> <a href=javascript:void(0); onClick=location.href='/workbin/file_download.aspx?workbinid=bd108b4b-96ab-47e7-a530-4a2056487952&dwFolderId=d33006cc-b24e-4d8d-8eba-4654a50f4af7&dwFileId=9407a6b8-1cda-4d19-aaa8-ca72d292cab3' title='Download File'>SSA2211 Revision Lecture_Part 1_AY2015-16.pptx</a> by Dr Donna BRUNERO in <br><a href="javascript:void(0);" onclick="location.href='/v1/File/Student/default.aspx?WorkbinID=bd108b4b-96ab-47e7-a530-4a2056487952&FolderID=d33006cc-b24e-4d8d-8eba-4654a50f4af7'">Lecture Notes</a><br/>14-Apr-2016 03:55 PM</td></tr><tr><td width='100%' class='font-black' style='padding-left:5px;padding-bottom:5px;'></td></tr></table><table border='0' cellpadding='0' cellspacing='0' width='100%' class="messageBox"><tr><td width='100%'</td></tr><tr><td width='100%' class='font-black' style='padding-left:5px;padding-bottom:5px;'><b>SSA2211/GES1011</b> posted a new announcement<br><br><span class='glyphicon glyphicon-bullhorn' style='color:red'></span> <a href="javascript:void(0);" onclick="winopen('/v1/Announcement/popup_event.aspx?eventID=4d7e8fa2-f6cc-477c-9252-aaa24bd96322',0,0);">Return of CA2 Scripts/Revsion Lecture</a><br>14-Apr-2016 01:37 PM</td></tr><tr><td width='100%' class='font-black' style='padding-left:5px;padding-bottom:5px;'></td></tr></table><table border='0' cellpadding='0' cellspacing='0' width='100%' class="messageBox"><tr><td width='100%'</td></tr><tr><td width='100%' class='font-black' style='padding-left:5px;padding-bottom:5px;'><b>CG2271</b> has a new file uploaded <BR/><BR/><span class='glyphicon glyphicon-file' style='color:green'></span> <a href=javascript:void(0); onClick=location.href='/workbin/file_download.aspx?workbinid=2b25083f-b552-4c85-afe4-0e2956a8ae7a&dwFolderId=6304b9d7-d7df-4c4d-9f94-83856df169c0&dwFileId=7d608671-cde4-4b75-a5da-647466d83411' title='Download File'>midterm.pptx</a> by Tulika Mitra in <br><a href="javascript:void(0);" onclick="location.href='/v1/File/Student/default.aspx?WorkbinID=2b25083f-b552-4c85-afe4-0e2956a8ae7a&FolderID=6304b9d7-d7df-4c4d-9f94-83856df169c0'">Lecture Notes</a><br/>13-Apr-2016 04:29 PM</td></tr><tr><td width='100%' class='font-black' style='padding-left:5px;padding-bottom:5px;'></td></tr></table><table border='0' cellpadding='0' cellspacing='0' width='100%' class="messageBox"><tr><td width='100%'</td></tr><tr><td width='100%' class='font-black' style='padding-left:5px;padding-bottom:5px;'><b>ST2334</b> posted a new announcement<br><br><span class='glyphicon glyphicon-bullhorn' style='color:red'></span> <a href="javascript:void(0);" onclick="winopen('/v1/Announcement/popup_event.aspx?eventID=fbc7b636-11a9-4484-a18d-0db9bffe0a07',0,0);"> End-of-Semester Feedback</a><br>12-Apr-2016 03:31 PM</td></tr><tr><td width='100%' class='font-black' style='padding-left:5px;padding-bottom:5px;'></td></tr></table><table border='0' cellpadding='0' cellspacing='0' width='100%' class="messageBox"><tr><td width='100%'</td></tr><tr><td width='100%' class='font-black' style='padding-left:5px;padding-bottom:5px;'><b>CS3249</b> posted a new announcement<br><br><span class='glyphicon glyphicon-bullhorn' style='color:red'></span> <a href="javascript:void(0);" onclick="winopen('/v1/Announcement/popup_event.aspx?eventID=11ce13d2-385c-443d-9ced-93c0af91d421',0,0);">Github TA account</a><br>11-Apr-2016 06:01 PM</td></tr><tr><td width='100%' class='font-black' style='padding-left:5px;padding-bottom:5px;'></td></tr></table><table border='0' cellpadding='0' cellspacing='0' width='100%' class="messageBox"><tr><td width='100%'</td></tr><tr><td width='100%' class='font-black' style='padding-left:5px;padding-bottom:5px;'><b class='popupBannerHeaderTop-txt'>CS3223</b> has a new topic posted<br><br><span class='fa fa-comments' style='color:blue'></span> <a href="javascript:void(0);" onclick="location.href='/v1/forum/board_read.aspx?forumid=7add7f92-cdc4-455a-9e7b-07125decdaed&headingid=73fb00f0-fb05-4e35-a257-bd542216a04a&postid=4477dc97-ffd8-48cc-8424-6c83cd1481f1&npostid=8911ee9a-d547-49fb-8475-78ba0c1a31f2'">Re: About Submission</a><br>by Chan Chee Yong<br>11-Apr-2016 04:54 PM<br></td></tr><tr><td width='100%' class='font-black' style='padding-left:5px;padding-bottom:5px;'></td></tr></table><table border='0' cellpadding='0' cellspacing='0' width='100%' class="messageBox"><tr><td width='100%'</td></tr><tr><td width='100%' class='font-black' style='padding-left:5px;padding-bottom:5px;'><b>CG2271</b> has a new file uploaded <BR/><BR/><span class='glyphicon glyphicon-file' style='color:green'></span> <a href=javascript:void(0); onClick=location.href='/workbin/file_download.aspx?workbinid=2b25083f-b552-4c85-afe4-0e2956a8ae7a&dwFolderId=ebd39d6f-0ebc-48ce-93eb-260703a516dc&dwFileId=8a2970f0-93eb-4356-a94e-ebd80a6acf40' title='Download File'>tutorial8-soln.pdf</a> by Tulika Mitra in <br><a href="javascript:void(0);" onclick="location.href='/v1/File/Student/default.aspx?WorkbinID=2b25083f-b552-4c85-afe4-0e2956a8ae7a&FolderID=ebd39d6f-0ebc-48ce-93eb-260703a516dc'">Tutorials</a><br/>11-Apr-2016 03:21 PM</td></tr><tr><td width='100%' class='font-black' style='padding-left:5px;padding-bottom:5px;'></td></tr></table></span>
            <div id="divmoreContent"></div>
            <div id="divPostsLoader"></div>
            <div id="divnomoreContent" style="word-wrap: break-word"></div>
        </div>
    </div>
    <br />
</div>
</div>
                            <div id="notificationFooter"></div>
                        </div>
                    </li>
                    
                    <li><a href="/v1/lms/search_course.aspx"><span class="glyphicon glyphicon-search"></span></a></li>           

                    
                             
                    

                    <li><a href="https://outlook.com/u.nus.edu" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_aExchangeEmail" target="_blank"><span class="fa fa-envelope"></span></a></li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-comment"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="/v1/Support/feedback.aspx"><span class="fa fa-comment"></span>&nbsp;Contact Us</a></li>
                            <li id="ctl00_ctl00_ctl00_ContentPlaceHolder1_lnkStudentFO"><a href="/v1/forum/forum.aspx?ForumID=2f7cdb4d-d700-4dca-96f0-4b605190ca56"><span class="fa fa-comments"></span>&nbsp;Feedback Forum</a></li>
                            
                            
                            <li id="ctl00_ctl00_ctl00_ContentPlaceHolder1_lnkStudentRelease"><a href="https://wiki.nus.edu.sg/display/IVLEStudenKB/Current+Release" target="_blank"><span class="fa fa-angellist"></span>&nbsp;&nbsp;Release Notes</a></li>
                            <li><a href="https://wiki.nus.edu.sg/display/IVLEStaffKB/Home" target="_blank"><span class="fa fa-medkit"></span>&nbsp;IVLE Knowledge Base (Faculty)</a></li>
                            <li><a href="https://wiki.nus.edu.sg/display/IVLEStudenKB/Home" target="_blank"><span class="fa fa-medkit"></span>&nbsp;IVLE Knowledge Base (Student)</a></li>
                            
                        </ul>
                    </li>
                    
                    
                </ul>
            </div>
            <!-- Top Menu Bar [End] -->
        </div>
    </div>
    <!-- Top Bar [End] -->
       
    

    <div class="row">
        <div class="col-md-12">
            
            <!-- BreadCrumb -->
            <table style="width:100%;" class="breadcrumb">
<tr>
<td>
<ul class="nav navbar-nav">
<li>
<ul class="breadcrumb">
<li>
<a href="/v1/workspace.aspx">Workspace</a>
</li>
<li>
<a href="/v1/customevents/default.aspx">Student Events</a>
</li>
<li>
List Events
</li>

</ul>
</li>
</ul>
</td>
</tr>
</table>
<span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_BC"></span>
        </div>
    </div>

    <div class="row">
        

        <div id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_divContent" class="col-md-12">
                
    <script>
        $(document).ready(function () {
            (function () {
                var id = '';
            if (id.length != null && id.length > 0) {
                $('#StudentEventstab a[href="#' + id + '"]').tab('show')
            }
            else {
                var activeTab = $(".studenteventstab").first().val();
                //alert($(".filesTab").first().val());
                $('#StudentEventstab a[href="' + activeTab + '"]').tab('show')
            }
        })();

        //$("a[data-toggle=tab]").on("shown.bs.tab", function (e) {

        //});

        $('a[data-toggle="tab"]').on('shown.bs.tab', function (e) {
            $(".studenteventstab").first().val($(e.target).attr("href"));
            //alert($(".studenteventstab").first().val());
            var activeTab = $(".studenteventstab").first().val();
            var type = activeTab.split('#', 2);
            if (type[1] != '') 
                window.location.href = "/v1/CustomEvents/default.aspx?type=" + type[1]
                //$('#StudentEventstab a[href="' + activeTab + '"]').tab('show')
        }) 
    });
</script>

      <input name="ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$studenteventstab" type="text" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_studenteventstab" hidden="hidden" class="hidden studenteventstab" />
                         <ul class="nav nav-tabs" id="StudentEventstab">
                <li id="tabViewsCurrent" class="active"><a href="#currevents" data-toggle="tab">Current Events</a></li>
                <li id="tabViewsAll"><a href="#allevents" data-toggle="tab" >All Events</a></li>
                 <li id="tabViewMyEvents"><a href="#myevents" data-toggle="tab" >My Event Requests</a></li>
               
            </ul>
      <div class="tab-content">
                  <div class="tab-pane active" id="currevents">
                      <div class="panel panel-default">
                <div class="panel-body">
                    <div id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_panCreateEvent">
	
                        <span class="help-block">
       <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_lcTitle" class="text-info"> To have your own club, society or hall events posted, please click ‘Create Event’</span>
   
   <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_LabelCtrl3" class="text-info">to send event details to the NUSSU.<br /> Events can only be posted once and will take ONE week to be published for a maximum of 14 days. For amendments and queries regarding events posted, kindly email to <a href="mailto:nussucblcevents@nus.edu.sg" target="_blank"">nussucblcevents@nus.edu.sg</a>.</span></span><p></p>
     
      
</div>
      <p></p>
     
      <div class="row"><div class="col-md-12"><span class="col-md-3"><button type="button" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_Create" class="btn btn-success" data-container="body" data-toggle="popover" data-html="true" data-placement="bottom" data-content="Create a new event request."><span class="glyphicon glyphicon-plus"></span>&nbsp;Create Event</button>&nbsp;&nbsp;</span><span class="col-md-1"><a href="javascript:__doPostBack('ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList','gv_print')" data-toggle="popover" data-container="body" data-html="true" data-content="Print" data-placement="bottom" style="margin-top: 3px;"><span class='glyphicon glyphicon-print' style='color:rgb(51,51,51)' /></a></span><span class="col-md-5">
<div class="input-group"><input name="gvEventsList_Search" type="text" id="gvEventsList_Search" class="form-control" onkeypress="return fnGV_Search(event);" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Advanced search is possible using the following keywords:&lt;br />&lt;br />
            &lt;table>
                &lt;tr>
                    &lt;td align=&#39;right&#39; valign=&#39;top&#39;>+: &lt;/td>&lt;td>include this term in the search e.g +[searchterm]&lt;/td>
                &lt;/tr>
                &lt;tr>
                    &lt;td align=&#39;right&#39; valign=&#39;top&#39;>-: &lt;/td>&lt;td>exclude this term from the search e.g -[searchterm]&lt;/td>
                &lt;/tr>
                &lt;tr>
                    &lt;td align=&#39;right&#39; valign=&#39;top&#39;>&amp;quot;&amp;quot;: &lt;/td>&lt;td>Items between the quotation marks are considered as one value e.g. &amp;quot;[search term]&amp;quot;&lt;/td>
                &lt;/tr>
                &lt;tr>
                    &lt;td align=&#39;right&#39; valign=&#39;top&#39;>OR: &lt;/td>&lt;td>[serchterm/searchobj] OR [searchterm/searchobj]&lt;/td>
                &lt;/tr>
            &lt;/table>&lt;br />
            Example: aaa bbb &amp;quot;ccc ddd&amp;quot; +eee -fff OR ggg" placeholder="Search" /><span class="input-group-btn"><a class="btn btn-default" data-toggle="popover" data-container="body" data-html="true" data-content="The following columns will be searched<br />- Event Title<br />- Event Organizer" href="javascript:__doPostBack('ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList','search')" data-placement="bottom"><span class='glyphicon glyphicon-search' style='color:rgb(51,51,51)'></span></a><a class="btn btn-default" data-toggle="popover" data-container="body" data-html="true" data-content="Undo Search" href="javascript:document.getElementById('gvEventsList_Search').value='';__doPostBack('ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList','undosearch')" data-placement="bottom"><span class='fa fa-undo' style='color:rgb(51,51,51)'></span></a></span></div></span><span class="col-md-3 text-right form-inline"><div class="navbar-btn">Total 36 items&nbsp;&nbsp;&nbsp;&nbsp;</div></span></div></div><table><tr><td style='height:5px'></td></tr></table><div>
	<table class="table table-hover table-striped" cellspacing="0" border="0" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList" style="border-collapse:collapse;">
		<tr>
			<th class="text-center" scope="col" style="width:40px;">View</th><th scope="col"><a href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList&#39;,&#39;Sort$EvtTitle&#39;)">Event Title</a></th><th scope="col"><a href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList&#39;,&#39;Sort$Organizer&#39;)">Event Organizer</a></th><th scope="col">Event Date</th>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=a5f6db4b-7f71-41dd-b0d1-207cc2a6a309&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl02_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl02$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>(Paid) Short nutrition study looking for Malays and Caucasians</td><td>Clinical Nutrition Research Centre</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl02_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Ongoing">Ongoing</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=e8d7b797-6e05-48bc-88c1-4c89c1881f59&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl03_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl03$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>Project HAK 2016 Recruitment</td><td>NUS Rotaract Club</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl03_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="December break ">December break </span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=dacc42a3-08ce-4fc7-ae99-44c22d913a31&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl04_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl04$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>[PAID] The Breakfast Study ($50) - Looking for female participants</td><td>Clinical Nutrition Research Centre (Project under Assoc. Prof. Ciaran Forde)</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl04_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Starting in May 2016. Please email for more information and timings.">Starting in May 2016. Please email for more inform...</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=1b00bc28-4896-424f-afe2-240b9f3ab895&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl05_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl05$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>Recruitment for NUS team at AMUNC 2016</td><td>NUS Political Science Society</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl05_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="11-16 July 2016">11-16 July 2016</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=52b86a05-5b55-43f5-b3cf-bacbd06d6de7&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl06_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl06$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>Project C.A.N. XIII Volunteer Recruitment</td><td>NUS Students' Community Service Club</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl06_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Weekends of July">Weekends of July</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=f29605c5-a3a1-4e34-9e79-6a8c113c3679&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl07_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl07$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>RACE' 16</td><td>NUS ODAC</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl07_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="9 - 10 July">9 - 10 July</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=d091f302-814e-4b34-b3e0-4bda2b900dc2&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl08_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl08$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>Paid Experiment on Visual Perception</td><td>Brain and Consciousness Lab, Duke-NUS</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl08_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Wed, Thu, Fri from 21/04/2016 to 29/04/2016
see SignUpGenius for time slots">Wed, Thu, Fri from 21/04/2016 to 29/04/2016
see S...</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=fad7886b-83b5-4836-b294-0942b5262a35&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl09_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl09$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>" part time" Chinese- English TRANSLATORS needed</td><td>Saw Swee Hock School of Public Health </td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl09_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content=""></span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=93c01262-74a3-4c8c-b48a-3fa716968662&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl10_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl10$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>Paid Single and Multiple Session Experiments</td><td>YNCA-SINAPSE</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl10_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content=""></span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=c4aab0e8-6145-472b-a94b-bd5b1475ff8e&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl11_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl11$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>Oral Communication Camp</td><td>CELC</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl11_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="18 - 20 May 2016">18 - 20 May 2016</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=2582eb31-3d90-4e8e-a7e2-a35dbf4cd111&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl12_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl12$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>PAID Virtual Reality Flight Simulation study</td><td>Cognitive Engineering Lab, SINAPSE</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl12_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content=""></span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=86859029-26f0-4b8b-a726-d7fdbd45a373&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl13_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl13$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>Bazaar,21 Apr 2016, Thurs, 11am - 4pm  @ NUS Staff Club</td><td>nus staff Club</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl13_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="21 Apr 2016, Thursday,
11 am - 4pm">21 Apr 2016, Thursday,
11 am - 4pm</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=8b4da954-7ee7-44a1-ae38-9624920bc8c9&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl14_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl14$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>($5 for 30 min) Paid Psychology Study (Males Only)</td><td>Department of Psychology, Henny Tan and Dr. Iliana Magiati</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl14_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Ongoing">Ongoing</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=6edc13f1-a7a7-4c5f-b710-009bbd3fefa9&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl15_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl15$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>Paid Sleep Experiment – Volunteers wanted</td><td>Duke-NUS Medical School - Cognitive Neuroscience Lab</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl15_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Details and Schedules will be released via email upon completion of the questionnaire on our website:
http://www.cogneuro-lab.org/SleepSurvey.aspx
">Details and Schedules will be released via email u...</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=3164575f-d890-4477-8421-a212a8ceb182&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl16_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl16$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>PAID Research Study - "Vitamin D deficiency in Asian Inflammatory Bowel Disease (IBD) Patients": Healthy Volunteers needed</td><td>Department of Pharmacy </td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl16_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="The blood drawing will be done on Wednesday afternoons at Singapore General Hospital. ">The blood drawing will be done on Wednesday aftern...</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=4a890292-399c-4539-a522-c12dc525fa01&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl17_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl17$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>[PAID] Personality and Preferences</td><td>Prof. Paul A. O’Keefe (Yale-NUS College)</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl17_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Students can sign up for a time slot that fits their schedule.">Students can sign up for a time slot that fits the...</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=92041395-4ea8-43a1-8e16-6b0285ce8502&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl18_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl18$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>PAID Neuroscience Research Studies!!</td><td>Cognitive Engineering Lab, SINAPSE</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl18_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content=""></span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=a9f3413b-b35d-475a-b26a-978eb2383c6e&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl19_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl19$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>PAID nutrition study</td><td>CNRC</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl19_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="ONGOING">ONGOING</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=c5748871-4621-4c6f-8c24-31ede891c312&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl20_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl20$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>PAID Psychology Experiment ($5 for 30 minutes)</td><td>Dr Ashley Fulmer</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl20_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Please sign up at the form link above. You will be notified via email and SMS of your timeslot if you have successfully signed up.">Please sign up at the form link above. You will be...</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=782fb25b-1395-452a-82f5-1a66e17618a8&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl21_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl21$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>Paid Visual Perception Experiment (1 Hour $15) </td><td>Dr. Po-Jang (Brown) Hsieh & Zixin Yong </td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl21_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="April 13,19,20,25,26 ">April 13,19,20,25,26 </span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=3e9dcd72-ba28-4aa7-a360-a0fed7aa327b&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl22_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl22$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>WIN US$25 Amazon voucher in short 25min survey</td><td>Eddie Tong</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl22_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content=""></span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=bb68f760-8d73-4ae0-bea2-e10d98178d29&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl23_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl23$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>Volunteers needed for the BRIGHT study:  BRown fat activity measurement with Infrared imaginG tHermography and Thermogenesis</td><td>CNRC</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl23_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Late April to early June">Late April to early June</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=d3fa8a3f-d9c9-401a-9da4-8a78bf1f5efa&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl24_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl24$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>Research Assistants (Locum) Positions</td><td>Duke-NUS Medical School - Cognitive Neuroscience Lab</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl24_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content=""></span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=1e571981-6b6c-42d0-af06-aa65900a16d0&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl25_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl25$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>Body Composition Study</td><td>Clinical Nutrition Research Centre (Prof Jeyakumar Henry's lab)</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl25_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Ongoing">Ongoing</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=f1e0846b-9416-4abd-a65d-8b44a3421aa3&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl26_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl26$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>Volunteer Recruitment for Project RICE+</td><td>Red Cross Youth NUS Chapter Project RICE+</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl26_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="28-29 May, 4-5 June, 16 &amp; 23 July">28-29 May, 4-5 June, 16 & 23 July</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=b54f4661-c9f2-4236-b56d-fa1bd366a6a6&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl27_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl27$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>Paid Psychology Study ($5 for 30mins)</td><td>Department of Psychology, Leung Chi Ching and Dr Eddie Tong</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl27_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Slots are now open for Week 12. More slots may be added subsequently. Please check at the following link: http://www.signupgenius.com/go/30e0b4aa4ab2ba5f85-individual">Slots are now open for Week 12. More slots may be ...</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=4b54f0c7-eedd-453a-8d07-6d87209f9e02&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl28_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl28$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>T-Shirt Sales! </td><td>Project Matuwa</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl28_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="tinyurl.com/matuwashirt16">tinyurl.com/matuwashirt16</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=a374b0c1-7707-4493-988f-03bbe8860bc7&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl29_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl29$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td> Paid Psychology Study ($5 for 30mins) </td><td> Department of Psychology, Yeo Pei Shi and Dr Jia Lile </td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl29_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="If you are keen to join us, please drop your name, email, and contact number AND select your preferred timeslot here: http://tinyurl.com/preftask">If you are keen to join us, please drop your name,...</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=ad78596e-3384-4fc3-a58f-0c3d0405b649&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl30_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl30$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>AstroBash XXXVIII</td><td>NUS Astronomical Society</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl30_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="10th May 2016 to 13th May 2016">10th May 2016 to 13th May 2016</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=e26fb999-d246-4ad4-82dc-840d9dafe52a&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl31_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl31$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>NUS Student Leadership Camp</td><td>OSA</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl31_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="6 - 8 May 2016. Depart NUS at 3pm on 6 May; Return by 6pm on 8 May.">6 - 8 May 2016. Depart NUS at 3pm on 6 May; Return...</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=5c2de78a-5ec2-4183-aa1f-204bd4580168&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl32_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl32$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>May Community Service Programmes</td><td>Uni-Y </td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl32_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="7 May 2016 8.30am-2pm and/or 14 May 2016 1pm-4.30pm">7 May 2016 8.30am-2pm and/or 14 May 2016 1pm-4.30p...</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=d07fa5a5-a1a4-475e-97aa-3a8af3a6e095&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl33_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl33$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>Come volunteer with Kaleidoscope Project Ignite!</td><td>NUS Student Union Volunteer Action Committee (NVAC)</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl33_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="4-6 June">4-6 June</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=26781a28-f716-489d-8bd6-6ee2462ecbde&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl34_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl34$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>Paid Psychology Study ($5 for 30mins) </td><td> Department of Psychology, Yeo Pei Shi and Dr Jia Lile </td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl34_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="If you are keen to join us, please drop your name, email, and contact number AND select your preferred timeslot here: http://tinyurl.com/cogandpuzzles   ">If you are keen to join us, please drop your name,...</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=c31cd709-0e35-4efd-a0f7-0b8342e82a9c&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl35_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl35$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>Paid Decision Making Study</td><td>Department of Psychology, Yoanna and Dr O'Dhaniel Mullette-Gillman</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl35_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="The researcher will send a confirmation email and information about the available time slots.">The researcher will send a confirmation email and ...</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=83066c93-6032-4144-8638-eb15af1dd652&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl36_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl36$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>Paid fMRI Mental Work Experiment ($35)</td><td>Neuroergonomics and Cognition Lab, Duke-NUS Medical School</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl36_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Daily Afternoons (1/2pm)">Daily Afternoons (1/2pm)</span>
        </td>
		</tr><tr>
			<td class="text-center">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=73e2e496-7c64-4eb4-835a-977316604d82&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl37_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList$ctl37$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td>Volunteers needed for Project I.R.I.S. Family Carnival!</td><td>Science CBLC - Project I.R.I.S.</td><td>
               <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_ctl37_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Date of event: 7 August 2016 (Sunday)
Time: 10am – 5pm">Date of event: 7 August 2016 (Sunday)
Time: 10am ...</span>
        </td>
		</tr>
	</table>
</div><br>

                </div></div></div>

           <div class="tab-pane" id="allevents">
                      <div class="panel panel-default">
                <div class="panel-body">
                    <div class="panel panel-primary">
  <!-- Default panel contents -->
  <div class="panel-heading">Filters  </div>
  <div class="panel-body">
  <div class="row">         
           <div class="col-md-1"><span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_lbl_Month">Month : </span></div>
           <div class="col-md-2"><select name="ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$ddlMonth" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_ddlMonth" class="form-control">
	<option value="1">Jan</option>
	<option value="2">Feb</option>
	<option value="3">Mar</option>
	<option selected="selected" value="4">Apr</option>
	<option value="5">May</option>
	<option value="6">Jun</option>
	<option value="7">Jul</option>
	<option value="8">Aug</option>
	<option value="9">Sep</option>
	<option value="10">Oct</option>
	<option value="11">Nov</option>
	<option value="12">Dec</option>

</select></div>
           <div class="col-md-1"><span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_lbl_Year">Year : </span></div>
           <div class="col-md-2"><select name="ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$ddlYear" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_ddlYear" class="form-control">
	<option selected="selected" value="2016">2016</option>
	<option value="2015">2015</option>
	<option value="2014">2014</option>

</select></div>
           <div class="col-md-1"><a id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_btnViewbyDate" class="btn btn-primary" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$btnViewbyDate&#39;,&#39;&#39;)"><i aria-hidden="true" class="glyphicon glyphicon-eye-open"></i> View</a></div></div></div>
       

     <ul class="list-group">
    <li class="list-group-item">
        <div class="panel-group" id="accordion">
  <div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a class="accordion-toggle" data-toggle="collapse" data-parent="#accordion" href="#collapseOne">
        Committee/ Category 
        </a>
      </h4>
    </div>
    <div id="collapseOne" class="panel-collapse collapse in">
      <div class="panel-body">
<div class="row">
<div id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_td_Committee" class="col-md-1"><span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_lbl_Committee" class="iName-txt">Committee : </span></div>
    <div class="col-md-2"><select name="ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$ddlCommittee" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_ddlCommittee" class="form-control">
	<option value="1">NUSSU</option>
	<option value="2">Faculty Clubs</option>
	<option value="3">Halls of Residences

</option>
	<option value="4">Clubs and Societies

</option>
	<option value="5">NUS</option>
	<option value="6">Interest Groups</option>
	<option value="99">Others</option>
	<option selected="selected" value="0">All</option>

</select></div>
    <div id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_td_Category" class="col-md-1"><span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_lbl_Category" class="iName-txt">Category : </span></div>
    <div class="col-md-2"><select name="ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$ddlCategory" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_ddlCategory" class="form-control">
	<option value="1">Bashes</option>
	<option value="2">Bazaars</option>
	<option value="3">Competitions/Tournament

</option>
	<option value="4">Sports and Recreation

</option>
	<option value="5">Performances</option>
	<option value="6">Announcements</option>
	<option value="7">Excursions</option>
	<option value="8">Exhibitions</option>
	<option value="9">Courses/Workshops</option>
	<option value="10">Recruitment </option>
	<option value="11">Administration</option>
	<option value="12">Charity</option>
	<option value="99">Others</option>
	<option selected="selected" value="0">All</option>

</select>&nbsp;</div>
<div class="col-md-1"><a id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_btn_View" class="btn btn-primary" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$btn_View&#39;,&#39;&#39;)"><i aria-hidden="true" class="glyphicon glyphicon-eye-open"></i> View</a></div>
</div>
  </div>
    
  </div></div>
<div class="panel panel-default">
    <div class="panel-heading">
      <h4 class="panel-title">
        <a class="accordion-toggle collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo">
       Tags
        </a>
      </h4>
    </div>
    <div id="collapseTwo" class="panel-collapse collapse">
      <div class="panel-body">
 <table border="0" class="table">

<tr id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_tr_TagCloud" valign="top">
	<td>
<a href='/v1/CustomEvents/default.aspx?type=allevents&tag=adventure' style='font-family:Verdana;font-size:small'>adventure</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=art' style='font-family:Verdana;font-size:x-small'>art</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=Arts' style='font-family:Verdana;font-size:medium'>Arts</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=Bazaar' style='font-family:Verdana;font-size:small'>Bazaar</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=behavioral' style='font-family:Verdana;font-size:medium'>behavioral</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=behavioral+study' style='font-family:Verdana;font-size:small'>behavioral study</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=behavioural+study' style='font-family:Verdana;font-size:small'>behavioural study</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=business' style='font-family:Verdana;font-size:small'>business</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=Camp' style='font-family:Verdana;font-size:medium'>Camp</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=career' style='font-family:Verdana;font-size:small'>career</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=cash' style='font-family:Verdana;font-size:medium'>cash</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=cca' style='font-family:Verdana;font-size:small'>cca</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=Charity' style='font-family:Verdana;font-size:small'>Charity</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=Chinese' style='font-family:Verdana;font-size:small'>Chinese</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=CIP' style='font-family:Verdana;font-size:small'>CIP</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=Club' style='font-family:Verdana;font-size:medium'>Club</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=cognitive' style='font-family:Verdana;font-size:small'>cognitive</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=cognitive+neuroscience' style='font-family:Verdana;font-size:medium'>cognitive neuroscience</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=Committee' style='font-family:Verdana;font-size:small'>Committee</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=community' style='font-family:Verdana;font-size:small'>community</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=Competition' style='font-family:Verdana;font-size:medium'>Competition</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=concert' style='font-family:Verdana;font-size:small'>concert</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=course' style='font-family:Verdana;font-size:small'>course</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=culture' style='font-family:Verdana;font-size:small'>culture</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=dance' style='font-family:Verdana;font-size:medium'>dance</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=december' style='font-family:Verdana;font-size:x-small'>december</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=decision' style='font-family:Verdana;font-size:small'>decision</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=Duke-NUS' style='font-family:Verdana;font-size:small'>Duke-NUS</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=Economics' style='font-family:Verdana;font-size:small'>Economics</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=EEG' style='font-family:Verdana;font-size:small'>EEG</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=engineering' style='font-family:Verdana;font-size:small'>engineering</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=Entrepreneurship' style='font-family:Verdana;font-size:small'>Entrepreneurship</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=event' style='font-family:Verdana;font-size:small'>event</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=exchange' style='font-family:Verdana;font-size:small'>exchange</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=experiment' style='font-family:Verdana;font-size:xx-large'>experiment</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=FASS' style='font-family:Verdana;font-size:small'>FASS</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=Festival' style='font-family:Verdana;font-size:small'>Festival</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=film' style='font-family:Verdana;font-size:small'>film</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=fMRI' style='font-family:Verdana;font-size:medium'>fMRI</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=food' style='font-family:Verdana;font-size:small'>food</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=Free' style='font-family:Verdana;font-size:small'>Free</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=fun' style='font-family:Verdana;font-size:medium'>fun</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=fundraising' style='font-family:Verdana;font-size:small'>fundraising</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=games' style='font-family:Verdana;font-size:small'>games</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=Imaging' style='font-family:Verdana;font-size:small'>Imaging</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=international' style='font-family:Verdana;font-size:small'>international</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=internship' style='font-family:Verdana;font-size:small'>internship</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=job' style='font-family:Verdana;font-size:small'>job</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=magnetic+resonance' style='font-family:Verdana;font-size:small'>magnetic resonance</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=money' style='font-family:Verdana;font-size:small'>money</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=mountaineering' style='font-family:Verdana;font-size:small'>mountaineering</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=music' style='font-family:Verdana;font-size:medium'>music</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=networking' style='font-family:Verdana;font-size:small'>networking</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=nus' style='font-family:Verdana;font-size:large'>nus</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=nussu' style='font-family:Verdana;font-size:small'>nussu</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=Nutrition' style='font-family:Verdana;font-size:small'>Nutrition</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=NVAC' style='font-family:Verdana;font-size:small'>NVAC</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=OCIP' style='font-family:Verdana;font-size:large'>OCIP</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=odac' style='font-family:Verdana;font-size:x-small'>odac</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=orientation' style='font-family:Verdana;font-size:small'>orientation</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=overseas' style='font-family:Verdana;font-size:small'>overseas</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=Paid' style='font-family:Verdana;font-size:xx-large'>Paid</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=paid+Experiment' style='font-family:Verdana;font-size:medium'>paid Experiment</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=paid+study' style='font-family:Verdana;font-size:small'>paid study</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=participant' style='font-family:Verdana;font-size:small'>participant</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=performance' style='font-family:Verdana;font-size:small'>performance</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=photography' style='font-family:Verdana;font-size:small'>photography</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=Project' style='font-family:Verdana;font-size:small'>Project</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=psychology' style='font-family:Verdana;font-size:xx-large'>psychology</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=Recruitment' style='font-family:Verdana;font-size:xx-large'>Recruitment</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=reimbursement' style='font-family:Verdana;font-size:medium'>reimbursement</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=research' style='font-family:Verdana;font-size:large'>research</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=rotaract' style='font-family:Verdana;font-size:small'>rotaract</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=RW' style='font-family:Verdana;font-size:small'>RW</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=SAVE' style='font-family:Verdana;font-size:x-small'>SAVE</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=SD' style='font-family:Verdana;font-size:small'>SD</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=Service' style='font-family:Verdana;font-size:small'>Service</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=Singapore' style='font-family:Verdana;font-size:small'>Singapore</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=sleep' style='font-family:Verdana;font-size:small'>sleep</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=Sleep+Deprivation' style='font-family:Verdana;font-size:small'>Sleep Deprivation</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=sleep+studies' style='font-family:Verdana;font-size:small'>sleep studies</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=society' style='font-family:Verdana;font-size:small'>society</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=Sports' style='font-family:Verdana;font-size:medium'>Sports</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=study' style='font-family:Verdana;font-size:xx-large'>study</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=Summer' style='font-family:Verdana;font-size:small'>Summer</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=survey' style='font-family:Verdana;font-size:small'>survey</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=talk' style='font-family:Verdana;font-size:small'>talk</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=talks' style='font-family:Verdana;font-size:x-small'>talks</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=tea' style='font-family:Verdana;font-size:small'>tea</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=theatre' style='font-family:Verdana;font-size:small'>theatre</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=travel' style='font-family:Verdana;font-size:small'>travel</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=utown' style='font-family:Verdana;font-size:x-small'>utown</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=volunteer' style='font-family:Verdana;font-size:x-large'>volunteer</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=Volunteering' style='font-family:Verdana;font-size:small'>Volunteering</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=volunteers' style='font-family:Verdana;font-size:small'>volunteers</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=welcome' style='font-family:Verdana;font-size:small'>welcome</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=welcome+tea' style='font-family:Verdana;font-size:small'>welcome tea</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=welfare' style='font-family:Verdana;font-size:small'>welfare</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=workshop' style='font-family:Verdana;font-size:medium'>workshop</a> <a href='/v1/CustomEvents/default.aspx?type=allevents&tag=YEP' style='font-family:Verdana;font-size:medium'>YEP</a> &nbsp;	
</td>
</tr>

</table>      </div>
    </div>
  </div>
  </div>
    </li>  
      </ul>
 
</div> 
                    <div class="row"><div class="col-md-12"><span class="col-md-3"></span><span class="col-md-1"><a href="javascript:__doPostBack('ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV','gv_print')" data-toggle="popover" data-container="body" data-html="true" data-content="Print" data-placement="bottom" style="margin-top: 3px;"><span class='glyphicon glyphicon-print' style='color:rgb(51,51,51)' /></a></span><span class="col-md-5">
<div class="input-group"><input name="GV_Search" type="text" id="GV_Search" class="form-control" onkeypress="return fnGV_Search(event);" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Advanced search is possible using the following keywords:&lt;br />&lt;br />
            &lt;table>
                &lt;tr>
                    &lt;td align=&#39;right&#39; valign=&#39;top&#39;>+: &lt;/td>&lt;td>include this term in the search e.g +[searchterm]&lt;/td>
                &lt;/tr>
                &lt;tr>
                    &lt;td align=&#39;right&#39; valign=&#39;top&#39;>-: &lt;/td>&lt;td>exclude this term from the search e.g -[searchterm]&lt;/td>
                &lt;/tr>
                &lt;tr>
                    &lt;td align=&#39;right&#39; valign=&#39;top&#39;>&amp;quot;&amp;quot;: &lt;/td>&lt;td>Items between the quotation marks are considered as one value e.g. &amp;quot;[search term]&amp;quot;&lt;/td>
                &lt;/tr>
                &lt;tr>
                    &lt;td align=&#39;right&#39; valign=&#39;top&#39;>OR: &lt;/td>&lt;td>[serchterm/searchobj] OR [searchterm/searchobj]&lt;/td>
                &lt;/tr>
            &lt;/table>&lt;br />
            Example: aaa bbb &amp;quot;ccc ddd&amp;quot; +eee -fff OR ggg" placeholder="Search" /><span class="input-group-btn"><a class="btn btn-default" data-toggle="popover" data-container="body" data-html="true" data-content="The following columns will be searched<br />- Event Title<br />- Event Organizer" href="javascript:__doPostBack('ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV','search')" data-placement="bottom"><span class='glyphicon glyphicon-search' style='color:rgb(51,51,51)'></span></a><a class="btn btn-default" data-toggle="popover" data-container="body" data-html="true" data-content="Undo Search" href="javascript:document.getElementById('GV_Search').value='';__doPostBack('ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV','undosearch')" data-placement="bottom"><span class='fa fa-undo' style='color:rgb(51,51,51)'></span></a></span></div></span><span class="col-md-3 text-right form-inline">1 - 100 / Total 11502 items, Goto Page <select name="GV_Page2" id="GV_Page2" class="form-control" onchange="__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV&#39;,&#39;pg2&#39;)">
	<option selected="selected" value="0">1</option>
	<option value="1">2</option>
	<option value="2">3</option>
	<option value="3">4</option>
	<option value="4">5</option>
	<option value="5">6</option>
	<option value="6">7</option>
	<option value="7">8</option>
	<option value="8">9</option>
	<option value="9">10</option>
	<option value="10">11</option>
	<option value="11">12</option>
	<option value="12">13</option>
	<option value="13">14</option>
	<option value="14">15</option>
	<option value="15">16</option>
	<option value="16">17</option>
	<option value="17">18</option>
	<option value="18">19</option>
	<option value="19">20</option>
	<option value="20">21</option>
	<option value="21">22</option>
	<option value="22">23</option>
	<option value="23">24</option>
	<option value="24">25</option>
	<option value="25">26</option>
	<option value="26">27</option>
	<option value="27">28</option>
	<option value="28">29</option>
	<option value="29">30</option>
	<option value="30">31</option>
	<option value="31">32</option>
	<option value="32">33</option>
	<option value="33">34</option>
	<option value="34">35</option>
	<option value="35">36</option>
	<option value="36">37</option>
	<option value="37">38</option>
	<option value="38">39</option>
	<option value="39">40</option>
	<option value="40">41</option>
	<option value="41">42</option>
	<option value="42">43</option>
	<option value="43">44</option>
	<option value="44">45</option>
	<option value="45">46</option>
	<option value="46">47</option>
	<option value="47">48</option>
	<option value="48">49</option>
	<option value="49">50</option>
	<option value="50">51</option>
	<option value="51">52</option>
	<option value="52">53</option>
	<option value="53">54</option>
	<option value="54">55</option>
	<option value="55">56</option>
	<option value="56">57</option>
	<option value="57">58</option>
	<option value="58">59</option>
	<option value="59">60</option>
	<option value="60">61</option>
	<option value="61">62</option>
	<option value="62">63</option>
	<option value="63">64</option>
	<option value="64">65</option>
	<option value="65">66</option>
	<option value="66">67</option>
	<option value="67">68</option>
	<option value="68">69</option>
	<option value="69">70</option>
	<option value="70">71</option>
	<option value="71">72</option>
	<option value="72">73</option>
	<option value="73">74</option>
	<option value="74">75</option>
	<option value="75">76</option>
	<option value="76">77</option>
	<option value="77">78</option>
	<option value="78">79</option>
	<option value="79">80</option>
	<option value="80">81</option>
	<option value="81">82</option>
	<option value="82">83</option>
	<option value="83">84</option>
	<option value="84">85</option>
	<option value="85">86</option>
	<option value="86">87</option>
	<option value="87">88</option>
	<option value="88">89</option>
	<option value="89">90</option>
	<option value="90">91</option>
	<option value="91">92</option>
	<option value="92">93</option>
	<option value="93">94</option>
	<option value="94">95</option>
	<option value="95">96</option>
	<option value="96">97</option>
	<option value="97">98</option>
	<option value="98">99</option>
	<option value="99">100</option>
	<option value="100">101</option>
	<option value="101">102</option>
	<option value="102">103</option>
	<option value="103">104</option>
	<option value="104">105</option>
	<option value="105">106</option>
	<option value="106">107</option>
	<option value="107">108</option>
	<option value="108">109</option>
	<option value="109">110</option>
	<option value="110">111</option>
	<option value="111">112</option>
	<option value="112">113</option>
	<option value="113">114</option>
	<option value="114">115</option>
	<option value="115">116</option>

</select>&nbsp;&nbsp;&nbsp;&nbsp;</span></div></div><table><tr><td style='height:5px'></td></tr></table><div>
	<table class="table table-hover table-striped" cellspacing="0" border="0" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV" style="border-collapse:collapse;">
		<tr>
			<th class="text-center" scope="col" style="width:40px;">View</th><th align="left" scope="col"><a href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV&#39;,&#39;Sort$EvtTitle&#39;)">Event Title</a></th><th align="left" scope="col"><a href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV&#39;,&#39;Sort$Organizer&#39;)">Event Organizer</a></th><th align="left" scope="col" style="width:250px;">Event Date</th>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=f29605c5-a3a1-4e34-9e79-6a8c113c3679&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl02_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl02$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">RACE' 16</td><td align="left">NUS ODAC</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl02_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="9 - 10 July">9 - 10 July</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=d091f302-814e-4b34-b3e0-4bda2b900dc2&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl03_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl03$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Paid Experiment on Visual Perception</td><td align="left">Brain and Consciousness Lab, Duke-NUS</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl03_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Wed, Thu, Fri from 21/04/2016 to 29/04/2016
see SignUpGenius for time slots">Wed, Thu, Fri from 21/04/2016 to 29/04/2016
see S...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=fad7886b-83b5-4836-b294-0942b5262a35&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl04_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl04$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">" part time" Chinese- English TRANSLATORS needed</td><td align="left">Saw Swee Hock School of Public Health </td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl04_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content=""></span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=93c01262-74a3-4c8c-b48a-3fa716968662&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl05_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl05$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Paid Single and Multiple Session Experiments</td><td align="left">YNCA-SINAPSE</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl05_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content=""></span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=c4aab0e8-6145-472b-a94b-bd5b1475ff8e&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl06_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl06$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Oral Communication Camp</td><td align="left">CELC</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl06_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="18 - 20 May 2016">18 - 20 May 2016</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=2582eb31-3d90-4e8e-a7e2-a35dbf4cd111&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl07_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl07$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">PAID Virtual Reality Flight Simulation study</td><td align="left">Cognitive Engineering Lab, SINAPSE</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl07_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content=""></span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=86859029-26f0-4b8b-a726-d7fdbd45a373&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl08_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl08$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Bazaar,21 Apr 2016, Thurs, 11am - 4pm  @ NUS Staff Club</td><td align="left">nus staff Club</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl08_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="21 Apr 2016, Thursday,
11 am - 4pm">21 Apr 2016, Thursday,
11 am - 4pm</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=8b4da954-7ee7-44a1-ae38-9624920bc8c9&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl09_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl09$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">($5 for 30 min) Paid Psychology Study (Males Only)</td><td align="left">Department of Psychology, Henny Tan and Dr. Iliana Magiati</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl09_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Ongoing">Ongoing</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=6edc13f1-a7a7-4c5f-b710-009bbd3fefa9&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl10_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl10$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Paid Sleep Experiment – Volunteers wanted</td><td align="left">Duke-NUS Medical School - Cognitive Neuroscience Lab</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl10_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Details and Schedules will be released via email upon completion of the questionnaire on our website:
http://www.cogneuro-lab.org/SleepSurvey.aspx
">Details and Schedules will be released via email u...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=348222ae-bb16-497d-a41e-3d95ef5690f2&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl11_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl11$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Take-Off TechLaunch</td><td align="left">IEL/EDL</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl11_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="6-7:30PM">6-7:30PM</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=3164575f-d890-4477-8421-a212a8ceb182&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl12_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl12$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">PAID Research Study - "Vitamin D deficiency in Asian Inflammatory Bowel Disease (IBD) Patients": Healthy Volunteers needed</td><td align="left">Department of Pharmacy </td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl12_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="The blood drawing will be done on Wednesday afternoons at Singapore General Hospital. ">The blood drawing will be done on Wednesday aftern...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=4a890292-399c-4539-a522-c12dc525fa01&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl13_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl13$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">[PAID] Personality and Preferences</td><td align="left">Prof. Paul A. O’Keefe (Yale-NUS College)</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl13_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Students can sign up for a time slot that fits their schedule.">Students can sign up for a time slot that fits the...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=0a1d1508-223b-4f98-9223-b5c191431d69&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl14_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl14$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Registration for SunNUS is now open!</td><td align="left">SunNUS </td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl14_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Date: 18th June 2016
Time: 8am - 6pm ">Date: 18th June 2016
Time: 8am - 6pm </span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=92041395-4ea8-43a1-8e16-6b0285ce8502&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl15_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl15$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">PAID Neuroscience Research Studies!!</td><td align="left">Cognitive Engineering Lab, SINAPSE</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl15_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content=""></span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=5bf70089-7162-4f58-b0af-e6caaba8e3dd&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl16_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl16$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Share your Experience of Public Transport & Get a EZ-Link Card</td><td align="left">NUS, ISS Research Team</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl16_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Thursday (14 April) afternoon from 6.00pm to 7.30pm">Thursday (14 April) afternoon from 6.00pm to 7.30p...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=e37f51d3-e9f5-4159-9d15-1d4fc053c5cc&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl17_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl17$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">NUS PEACE Therapy Dogs Programme VI</td><td align="left">PEACE - People Ending Animal Cruelty and Exploitation</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl17_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Date: Monday 18 April 2016, Time: 2:30 pm to 4.30pm and
         Tuesday 19 April 2016, Time: 2:30 pm to 4.30pm">Date: Monday 18 April 2016, Time: 2:30 pm to 4.30p...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=a9f3413b-b35d-475a-b26a-978eb2383c6e&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl18_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl18$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">PAID nutrition study</td><td align="left">CNRC</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl18_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="ONGOING">ONGOING</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=ef3c2cc4-909c-4baa-9b96-652ede515b1c&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl19_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl19$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">PAID Decision Making Study </td><td align="left">Heng Yu Tse </td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl19_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Sign up at the link provided above. You will be notified via email/SMS upon successful registration. ">Sign up at the link provided above. You will be no...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=a5a90a15-22b4-4b2a-8b3d-30a8ded22b43&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl20_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl20$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">PAID Psychology Study ($5 for 30mins)</td><td align="left">Marcus Ong, Dr Jia Lile</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl20_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Sign up here: http://tinyurl.com/z423ql3">Sign up here: http://tinyurl.com/z423ql3</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=a2d366fd-a727-4ee2-9d7f-db63c08c30b2&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl21_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl21$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">PAID Psychology Study ($5 for 30mins)</td><td align="left">Marcus Ong, Dr Jia Lile</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl21_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Sign up here: http://tinyurl.com/z423ql3">Sign up here: http://tinyurl.com/z423ql3</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=c5748871-4621-4c6f-8c24-31ede891c312&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl22_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl22$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">PAID Psychology Experiment ($5 for 30 minutes)</td><td align="left">Dr Ashley Fulmer</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl22_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Please sign up at the form link above. You will be notified via email and SMS of your timeslot if you have successfully signed up.">Please sign up at the form link above. You will be...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=782fb25b-1395-452a-82f5-1a66e17618a8&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl23_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl23$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Paid Visual Perception Experiment (1 Hour $15) </td><td align="left">Dr. Po-Jang (Brown) Hsieh & Zixin Yong </td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl23_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="April 13,19,20,25,26 ">April 13,19,20,25,26 </span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=f7f3b549-e898-42e9-b176-db03de2f96c9&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl24_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl24$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">[Exhibition Opening] Ng Eng Teng: 1+1=1</td><td align="left">NUS Museum (NUS Centre For the Arts)</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl24_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="14 April 2016 (Thursday), 7pm - 8.30pm">14 April 2016 (Thursday), 7pm - 8.30pm</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=f581337a-6796-4a68-845d-4df82516cef7&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl25_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl25$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Recruiting participants for "Personality, Motivation, and Behaviour Identification" study!!!</td><td align="left">Tan Yia Chin, Jia Lile</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl25_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Available from sign-up link (periodically updated with new slots)">Available from sign-up link (periodically updated ...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=3e9dcd72-ba28-4aa7-a360-a0fed7aa327b&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl26_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl26$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">WIN US$25 Amazon voucher in short 25min survey</td><td align="left">Eddie Tong</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl26_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content=""></span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=bb68f760-8d73-4ae0-bea2-e10d98178d29&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl27_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl27$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Volunteers needed for the BRIGHT study:  BRown fat activity measurement with Infrared imaginG tHermography and Thermogenesis</td><td align="left">CNRC</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl27_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Late April to early June">Late April to early June</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=0b6015ba-6473-438f-aca5-8cad9913a2fe&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl28_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl28$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">PAID Psychology Study ($5 for 30mins)</td><td align="left">Marcus Ong, Dr Jia Lile</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl28_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Sign up here: http://tinyurl.com/z423ql3">Sign up here: http://tinyurl.com/z423ql3</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=1d08eaa2-5e24-4406-a529-8434ac52ec35&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl29_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl29$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Paid Psychology Study ($5-$8): Reflection on Life Challenges</td><td align="left">Ng Sheng Chun, Dr. Yu Rongjun</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl29_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Slots on http://tinyurl.com/zuetyyg">Slots on http://tinyurl.com/zuetyyg</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=d3fa8a3f-d9c9-401a-9da4-8a78bf1f5efa&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl30_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl30$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Research Assistants (Locum) Positions</td><td align="left">Duke-NUS Medical School - Cognitive Neuroscience Lab</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl30_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content=""></span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=ee002050-0bef-40f4-b01c-979901ba7ba1&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl31_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl31$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left"> Paid Psychology Study ($5 for 30 minutes) </td><td align="left">Phyllis Seah, Dr. Nina Powell </td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl31_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Currently 3 slots on the 14th of April (Thurs) but more will be added during the holidays. Please check www.SignUpGenius.com/go/30E0844AEA82BA4FA7-effects  ">Currently 3 slots on the 14th of April (Thurs) but...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=0eb3def0-05b7-4322-8853-d888516ea593&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl32_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl32$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Paid decision making study (20 min, average payoff $10)</td><td align="left">Prof. Zhong Songfa (Economics)</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl32_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="1pm, 14 Apr">1pm, 14 Apr</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=1e571981-6b6c-42d0-af06-aa65900a16d0&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl33_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl33$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Body Composition Study</td><td align="left">Clinical Nutrition Research Centre (Prof Jeyakumar Henry's lab)</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl33_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Ongoing">Ongoing</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=f1e0846b-9416-4abd-a65d-8b44a3421aa3&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl34_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl34$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Volunteer Recruitment for Project RICE+</td><td align="left">Red Cross Youth NUS Chapter Project RICE+</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl34_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="28-29 May, 4-5 June, 16 &amp; 23 July">28-29 May, 4-5 June, 16 & 23 July</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=b54f4661-c9f2-4236-b56d-fa1bd366a6a6&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl35_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl35$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Paid Psychology Study ($5 for 30mins)</td><td align="left">Department of Psychology, Leung Chi Ching and Dr Eddie Tong</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl35_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Slots are now open for Week 12. More slots may be added subsequently. Please check at the following link: http://www.signupgenius.com/go/30e0b4aa4ab2ba5f85-individual">Slots are now open for Week 12. More slots may be ...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=4b54f0c7-eedd-453a-8d07-6d87209f9e02&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl36_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl36$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">T-Shirt Sales! </td><td align="left">Project Matuwa</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl36_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="tinyurl.com/matuwashirt16">tinyurl.com/matuwashirt16</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=a374b0c1-7707-4493-988f-03bbe8860bc7&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl37_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl37$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left"> Paid Psychology Study ($5 for 30mins) </td><td align="left"> Department of Psychology, Yeo Pei Shi and Dr Jia Lile </td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl37_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="If you are keen to join us, please drop your name, email, and contact number AND select your preferred timeslot here: http://tinyurl.com/preftask">If you are keen to join us, please drop your name,...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=ad78596e-3384-4fc3-a58f-0c3d0405b649&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl38_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl38$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">AstroBash XXXVIII</td><td align="left">NUS Astronomical Society</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl38_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="10th May 2016 to 13th May 2016">10th May 2016 to 13th May 2016</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=e26fb999-d246-4ad4-82dc-840d9dafe52a&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl39_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl39$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">NUS Student Leadership Camp</td><td align="left">OSA</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl39_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="6 - 8 May 2016. Depart NUS at 3pm on 6 May; Return by 6pm on 8 May.">6 - 8 May 2016. Depart NUS at 3pm on 6 May; Return...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=5c2de78a-5ec2-4183-aa1f-204bd4580168&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl40_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl40$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">May Community Service Programmes</td><td align="left">Uni-Y </td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl40_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="7 May 2016 8.30am-2pm and/or 14 May 2016 1pm-4.30pm">7 May 2016 8.30am-2pm and/or 14 May 2016 1pm-4.30p...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=d07fa5a5-a1a4-475e-97aa-3a8af3a6e095&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl41_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl41$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Come volunteer with Kaleidoscope Project Ignite!</td><td align="left">NUS Student Union Volunteer Action Committee (NVAC)</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl41_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="4-6 June">4-6 June</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=26781a28-f716-489d-8bd6-6ee2462ecbde&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl42_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl42$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Paid Psychology Study ($5 for 30mins) </td><td align="left"> Department of Psychology, Yeo Pei Shi and Dr Jia Lile </td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl42_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="If you are keen to join us, please drop your name, email, and contact number AND select your preferred timeslot here: http://tinyurl.com/cogandpuzzles   ">If you are keen to join us, please drop your name,...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=c31cd709-0e35-4efd-a0f7-0b8342e82a9c&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl43_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl43$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Paid Decision Making Study</td><td align="left">Department of Psychology, Yoanna and Dr O'Dhaniel Mullette-Gillman</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl43_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="The researcher will send a confirmation email and information about the available time slots.">The researcher will send a confirmation email and ...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=b541c698-dbee-4ff5-8b06-fdba8a9db5ee&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl44_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl44$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">PAID Psychology Study ($5-$8): English/Foreign Language Speakers Needed</td><td align="left">Ng Sheng Chun, Dr. Yu Rongjun</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl44_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="4th Apr, 5th Apr">4th Apr, 5th Apr</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=dcd1c1c5-15d6-4345-b6ea-04166e2630fa&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl45_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl45$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left"> Paid Study ($5 for 30mins) </td><td align="left"> Department of Psychology, Yeo Pei Shi and Dr Jia Lile </td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl45_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="If you are keen to join us, please drop your name, email, and contact number AND select your preferred timeslot here: http://tinyurl.com/preferencetask ">If you are keen to join us, please drop your name,...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=c6f58732-5094-4edc-8dd0-7dc380cc8711&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl46_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl46$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Paid Visual Experiment </td><td align="left">Dr. Po-Jang (Brown) Hsieh & Shao-Min (Sean) Hung</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl46_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Please sign up here: http://www.signupgenius.com/go/20f0c4ba8af2aa20-human">Please sign up here: http://www.signupgenius.com/g...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=83066c93-6032-4144-8638-eb15af1dd652&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl47_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl47$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Paid fMRI Mental Work Experiment ($35)</td><td align="left">Neuroergonomics and Cognition Lab, Duke-NUS Medical School</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl47_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Daily Afternoons (1/2pm)">Daily Afternoons (1/2pm)</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=b915e50f-34cf-4e72-847a-1e54bd63cb79&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl48_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl48$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">PAID Psychology Study ($5 for 30mins)</td><td align="left">Marcus Ong, Dr Jia Lile</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl48_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Sign up here: http://tinyurl.com/z423ql3">Sign up here: http://tinyurl.com/z423ql3</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=73e2e496-7c64-4eb4-835a-977316604d82&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl49_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl49$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Volunteers needed for Project I.R.I.S. Family Carnival!</td><td align="left">Science CBLC - Project I.R.I.S.</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl49_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Date of event: 7 August 2016 (Sunday)
Time: 10am – 5pm">Date of event: 7 August 2016 (Sunday)
Time: 10am ...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=e9649d21-3648-4659-99f8-93b0f9a0fc6b&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl50_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl50$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Summer Overseas Adventure Trip to Taiwan</td><td align="left">NUS Mountaineering Club</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl50_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="3 July 2016 - 8 July 2016 (6D5N)">3 July 2016 - 8 July 2016 (6D5N)</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=5640c71f-d348-40af-89a9-2d943fc2c370&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl51_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl51$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Overseas Adventure trips for summer vacation 2016</td><td align="left">NUS Mountaineering</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl51_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content=""></span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=2226951f-04e0-4c34-a017-b9c9e6d049d0&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl52_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl52$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">NUS ScrubUP OCIP (December Trip) Interviews 2016</td><td align="left">ScrubUP OCIP </td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl52_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Week 11 to 13 of this Semester (30 March to 15 April)">Week 11 to 13 of this Semester (30 March to 15 Apr...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=ba7353de-d104-48a2-bf3d-8b1028f75ded&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl53_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl53$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">PAID Decision Making Study </td><td align="left">Heng Yu Tse </td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl53_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Please sign up at the link provided above. You will be notified via email/SMS upon successful registration. ">Please sign up at the link provided above. You wil...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=216135fe-b95c-4594-a6fd-dd0f63247f77&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl54_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl54$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Paid Economics Decision Making Experiment</td><td align="left">Prof. Ho Teck-Hua</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl54_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="April 14 to 15">April 14 to 15</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=09c8ead6-199c-4ba6-8f64-12c670a9a26e&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl55_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl55$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Recruiting participants for "Personality, Motivation, and Behaviour Identification" study!!!</td><td align="left">Tan Yia Chin, Jia Lile</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl55_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Available from sign-up link (periodically updated with new slots)">Available from sign-up link (periodically updated ...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=5c886c1b-1395-484c-97bc-8ed4eafc33d2&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl56_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl56$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">$3 Paid Experiment in NUS Business School</td><td align="left">NUS Business School Department of Marketing, Dr. Dan King</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl56_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="6-April (Wednesday): Any half an hour slot from 10am to 6pm
7-April (Thursday): Any half an hour slot from 2pm to 6pm">6-April (Wednesday): Any half an hour slot from 10...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=f1f99964-c548-4710-ad67-2f445f2b3a4d&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl57_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl57$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Paid study (20 minutes)</td><td align="left">Prof. Zhong Songfa (Economics)</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl57_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Wed, 06 Apr">Wed, 06 Apr</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=0b4ca472-36f3-42ec-b402-3b175441ac55&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl58_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl58$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">PAID Psychology Experiment ($5 for 30 minutes)</td><td align="left">Dr Ashley Fulmer</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl58_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Please sign up at the form link above. You will be notified via email and SMS of your timeslot if you have successfully signed up.">Please sign up at the form link above. You will be...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=8fa4f5b4-5a54-4d41-8f0d-9755c3858a02&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl59_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl59$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Online Psychology Study on Stress - $5 CapitaLand Voucher</td><td align="left">Vanessa Tang, Ivana Chan, Prof Tang</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl59_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="On one&#39;s own schedule.">On one's own schedule.</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=f88edfe8-021e-4ac4-8014-6f0c300e2af6&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl60_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl60$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">($5 for 30 min) Paid Psychology Study</td><td align="left">Department of Psychology, Henny Tan and Dr. Iliana Magiati</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl60_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Ongoing">Ongoing</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=9d599a3e-f4cf-4c75-ac06-f7ebd31496f7&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl61_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl61$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">($5 Paid study)Mood and Task Performances Part II</td><td align="left">Department of Psychology, Zheng Suzhen and Prof Jia Lile</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl61_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Sign up your preferred timeslot here! goo.gl/VqqBwQ
">Sign up your preferred timeslot here! goo.gl/VqqBw...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=9c29ba92-9fd7-4ed5-ac90-8ef2212a083a&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl62_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl62$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">PAID Psychology Study: Economic Decision Making Game</td><td align="left">Lim Chun Hui, Harif, Dr Jia Lile</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl62_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Sign up here: tinyurl.com/PsychEDM">Sign up here: tinyurl.com/PsychEDM</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=2208bcf2-fb09-4e5a-9755-0616ba6f87ae&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl63_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl63$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Recruitment for Nutrition Study!</td><td align="left">Clinical Nutrition Research Centre (CNRC)</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl63_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content=""></span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=383af54a-5ae2-4c1c-be1d-a37b5bea9b3f&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl64_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl64$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Project RICE+ Fundraising</td><td align="left">RCY NUS Project RICE+</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl64_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="30 and 31 March 2016">30 and 31 March 2016</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=b583069c-77b3-418d-9fa2-20427931a72a&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl65_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl65$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">PAID psychology study ($5 for less than 30 mins)</td><td align="left">Melissa Teo, Jasmine Tan, Dr Michelle See</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl65_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Ongoing">Ongoing</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=c1097295-0adf-439e-8e42-3154e06f7815&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl66_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl66$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Paid Information Processing Study ($10/hour)</td><td align="left">Brain and Behaviour Lab, A/P Annett Schirmer</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl66_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Ongoing, slot timings mentioned in the body">Ongoing, slot timings mentioned in the body</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=c4ec7c5a-74ec-4745-8b5e-d593836c718d&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl67_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl67$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">PAID Psychology Study: The Effect of Personality on Cognition</td><td align="left">Department of Psychology, NUS (Chong Hui Min, Lim Shiao Kee and Dr. Jia Lile)</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl67_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Please sign up at http://tinyurl.com/rn70psychexperiment (timeslots will be updated regularly). ">Please sign up at http://tinyurl.com/rn70psychexpe...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=22771479-dfc6-48cc-af5e-1ac855608b70&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl68_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl68$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">[PAID] Personality and Preferences</td><td align="left">Prof. Paul A. O’Keefe (Yale-NUS College)</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl68_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Students can sign up for a time slot that fits their schedule.">Students can sign up for a time slot that fits the...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=f1d2a4b0-57ec-4c87-917e-7b7b244aa235&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl69_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl69$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">NUSPS Mt Bromo Photography Trip</td><td align="left">The Photographic Society of NUS</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl69_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="9-12 May 2016">9-12 May 2016</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=1f369e6b-8238-4d72-9fa7-67715534d610&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl70_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl70$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Exam Welfare Pack</td><td align="left">NUSSU WELFARE</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl70_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="28 March - 8 April">28 March - 8 April</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=b184021b-428f-4362-91c3-4f6e2bb3525d&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl71_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl71$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">PAID Psychology Study ($5 for 30mins)</td><td align="left">Marcus Ong, Dr Jia Lile</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl71_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Sign up here: http://tinyurl.com/z423ql3">Sign up here: http://tinyurl.com/z423ql3</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=85181eb0-9248-4905-b0bd-df5ac2ab6048&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl72_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl72$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Paid psychology study $5 for 25-30mins!</td><td align="left">Dr Jia Lile, Lwa Heng Yin </td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl72_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Sign up here: https://docs.google.com/forms/d/1bVtxN1XdYlmc3i3Qz3254_TaNX1xv1UFOKPBvJ_0XrY/viewform
">Sign up here: https://docs.google.com/forms/d/1bVt...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=254377b0-bbc1-4007-87b9-478b4e9aff05&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl73_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl73$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Paid Mental Work Experiment</td><td align="left">Neuroergonomics and Cognition Lab, Duke-NUS Medical School</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl73_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Daily, Afternoons">Daily, Afternoons</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=8d751de5-77c1-41a7-aebb-54ccb8c0f428&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl74_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl74$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Hand-On workshop-Success with Flowering Plants, 27 Apr 2016, Wed, 6:30-9pm</td><td align="left">nus staff Club</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl74_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Date: 27 Apr 2016, Wednesday
Time: 6:30pm = 9pm
">Date: 27 Apr 2016, Wednesday
Time: 6:30pm = 9pm
</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=3c7e003a-40aa-420e-8d7e-933981678920&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl75_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl75$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Apr 2016 classes schedule at NUS Staff Club</td><td align="left">nus staff Club</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl75_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="NUS Staff Club Website:https://community.nus.edu.sg/NUSStaffclub/activties.php
NUS Staff Club Facebook: https://www.facebook.com/nusstaffclub/events">NUS Staff Club Website:https://community.nus.edu.s...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=b33d0f97-cf00-46a7-a022-1d97a7431fb5&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl76_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl76$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Paid Psychology Study ($5 for 20-30mins)</td><td align="left">Department of Psychology (Clara Li and Dr Jia Lile)</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl76_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Choose timeslot here: http://bit.ly/soclabsignup">Choose timeslot here: http://bit.ly/soclabsignup</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=0037a304-e967-4179-8547-e55a42d7c622&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl77_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl77$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">NUS Rovers Summer Trek</td><td align="left">NUS Rovers Adventure Club</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl77_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Summer Holidays">Summer Holidays</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=ec1e2cb3-2dc3-4cc6-9be2-be6ecbaa6530&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl78_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl78$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">PAID VOICE RECORDING SESSION ($15)</td><td align="left">Brain and Behaviour Lab</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl78_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content=""></span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=80b6324a-0c88-49f8-a7c1-e8eaf7990900&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl79_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl79$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Buddhism Meditation Course</td><td align="left">NUS Buddhist Society</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl79_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="April 4, 7pm-9pm">April 4, 7pm-9pm</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=b2b9b105-857d-40a4-8686-e2c5ce3fc8a1&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl80_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl80$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left"> Paid Psychology Study ($5 for 30mins) </td><td align="left"> Department of Psychology, Yeo Pei Shi and Dr Jia Lile </td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl80_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="If you are keen to join us, please drop your name, email, and contact number AND select your preferred timeslot here: http://tinyurl.com/preftask
New slots will be continually updated so please feel free to check back if you are unable to make it for the ones currently listed. ">If you are keen to join us, please drop your name,...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=9fc18569-9da2-427a-a4c3-e9ff767ed2aa&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl81_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl81$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Paid Single and Multiple Session Experiments</td><td align="left">YNCA-SINAPSE</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl81_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content=""></span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=789d9285-273d-421f-a8f9-fb1470474679&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl82_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl82$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">SPARKZ'16 FINALE CARNIVAL </td><td align="left">NUSSU IRC </td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl82_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Thursday, March 31st">Thursday, March 31st</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=dc6210dc-42c1-479b-8624-17ac30761764&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl83_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl83$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">German Language Society Social Session - GamesNight</td><td align="left">NUS German Language Society</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl83_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="31 March 2016 (Thurs), 7-9.30pm">31 March 2016 (Thurs), 7-9.30pm</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=ed15b207-f798-40ff-8d9e-43f72eb8353b&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl84_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl84$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Reflections on Life Challenges</td><td align="left">Ng Sheng Chun, Dr. Yu Rongjun</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl84_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content=" http://tinyurl.com/jlq9cz4 ; 31st Mar and 1st Apr, 1200-1400"> http://tinyurl.com/jlq9cz4 ; 31st Mar and 1st Apr...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=ccf9eecc-1e65-4390-a389-799e80f8d5a3&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl85_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl85$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Paid Psychology Study on Impression Formation ($5/30 mins)</td><td align="left">Department of Psychology, NUS (QUAH Wei Feng, Dr. JIA Lile)</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl85_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Various timeslots http://goo.gl/kSQd6T">Various timeslots http://goo.gl/kSQd6T</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=7a6d0870-0dc7-4e9a-b281-746dec25b889&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl86_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl86$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Paid Psychology Study ($5 for 30mins) </td><td align="left"> Department of Psychology, Yeo Pei Shi and Dr Jia Lile </td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl86_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="If you are keen to join us, please drop your name, email, and contact number AND select your preferred timeslot here: http://tinyurl.com/cogandpuzzles   ">If you are keen to join us, please drop your name,...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=18ce8555-3b1a-4f10-ace2-4106161deb35&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl87_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl87$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Paid Psychology Study ($5 for 30mins)</td><td align="left">Department of Psychology, Leung Chi Ching and Dr Eddie Tong</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl87_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Slots are now open for Week 11. Timings for Week 12 onwards will be added later. Please check at the following link: http://www.signupgenius.com/go/30e0b4aa4ab2ba5f85-individual">Slots are now open for Week 11. Timings for Week 1...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=7f202b7e-e8ac-4ad4-8722-56101a046db7&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl88_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl88$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left"> Paid Psychology Study ($5 for 30mins) </td><td align="left"> Department of Psychology, Yeo Pei Shi and Dr Jia Lile </td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl88_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="If you are keen to join us, please drop your name, email, and contact number AND select your preferred timeslot here: http://tinyurl.com/preferencetask ">If you are keen to join us, please drop your name,...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=abacf730-8024-47d4-b0bb-b6ba7cebd903&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl89_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl89$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">PAID Decision Making Study</td><td align="left">Heng Yu Tse</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl89_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Please sign up at the link provided above. You will be notified via email/SMS upon successful registration.">Please sign up at the link provided above. You wil...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=41d9169e-626d-4417-8756-31c4b42f1836&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl90_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl90$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Paid Psychology Experiment (1 Hour $15) </td><td align="left">Dr. Po-Jang (Brown) Hsieh & Zixin Yong </td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl90_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="30,31March, 6 April">30,31March, 6 April</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=2e7e219e-0b88-4662-92ae-3784a0e2f5d9&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl91_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl91$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">PAID Psychology Experiment ($5 for 30 minutes)</td><td align="left">Dr Ashley Fulmer</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl91_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Please sign up at the form link above. You will be notified via SMS of your timeslot if you have successfully signed up.">Please sign up at the form link above. You will be...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=34ff0563-981d-4469-ac6a-f6c15a0b53fd&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl92_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl92$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Looking for Locum Research Assistants</td><td align="left">Duke-NUS Medical School</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl92_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Dependent on Experiment Schedule">Dependent on Experiment Schedule</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=634b0955-34ae-4f37-927c-c3fa0e382d39&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl93_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl93$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Paid Sleep Experiment – Volunteers wanted</td><td align="left">Duke-NUS Medical School</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl93_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Details and Schedules will be released via email upon completion of the questionnaire on our website:
http://www.cogneuro-lab.org/SleepSurvey.aspx
">Details and Schedules will be released via email u...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=0f47df9a-3328-4ba3-bbdb-b5b3de456999&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl94_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl94$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">PAID Psychology Study: Economic Decision Making Game</td><td align="left">Lim Chun Hui, Harif, Dr Jia Lile</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl94_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Sign up here: tinyurl.com/PsychEDM">Sign up here: tinyurl.com/PsychEDM</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=f4871ffe-b963-4fcd-83bb-1f43ae219ec6&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl95_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl95$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Body Composition Study </td><td align="left">Clinical Nutrition Research Centre (Prof Jeyakumar Henry's lab)</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl95_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Ongoing">Ongoing</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=b1122ae2-6d99-46eb-819d-36ee00ff2174&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl96_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl96$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Financial Literacy Carnival</td><td align="left">NUSSU Students' Fund</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl96_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="28 March 2016">28 March 2016</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=3197b1a2-ff47-48be-96c7-a0f9ae6c37d9&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl97_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl97$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">$5 CapitaLand voucher: Online Psychology Study</td><td align="left">Ivana Chan ,  Vanessa Tang & Prof Catherine Tang</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl97_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Own time own target!">Own time own target!</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=fc6493df-e7dc-44c2-87cd-7c8f601c6114&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl98_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl98$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Mandarin talk on Singapore and the 1911 Revolution (「星洲三杰」：史料研究与展览叙事)</td><td align="left">NUS Libraries</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl98_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="31 March 2016 (Thursday) &amp; 12.00pm-1.30pm ">31 March 2016 (Thursday) & 12.00pm-1.30pm </span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=46b2aaf6-6fbf-4f1f-a351-23a4d8b59090&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl99_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl99$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">$20 Paid EEG Experiment</td><td align="left">NUS Brain and Behavior Lab</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl99_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="22 March to 31 March ">22 March to 31 March </span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=9d2159c2-7f67-4d8a-93a1-4202f79c003b&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl100_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl100$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">Paid Research Participants Needed! $5 for 25-30 mins!</td><td align="left">Dr Jia Lile, Lwa Heng Yin</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl100_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Sign up at https://docs.google.com/forms/d/1bVtxN1XdYlmc3i3Qz3254_TaNX1xv1UFOKPBvJ_0XrY/viewform">Sign up at https://docs.google.com/forms/d/1bVtxN1...</span>
        </td>
		</tr><tr>
			<td class="text-center" style="width:40px;">
                <a onclick="javascript:winopen(&#39;/v1/customevents/student/view.aspx?EvtID=f3e64d33-5e25-4313-a8db-828607eadc46&#39;, 700,400);return false;" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl101_lbView" href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV$ctl101$lbView&#39;,&#39;&#39;)"><span class='glyphicon glyphicon-eye-open black'></span></a>
            </td><td align="left">KCIG SUMMER KOREA TRIP!!</td><td align="left">KCIG</td><td style="width:250px;">
                <span id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_ctl101_lblDate" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="15-22 May">15-22 May</span>
        </td>
		</tr><tr>

		</tr>
	</table>
</div><br>
</div></div>
              
           </div>

           <div class="tab-pane" id="myevents">
                      <div class="panel panel-default">
                <div class="panel-body">
                    <div class="row"><div class="col-md-12"><span class="col-md-3"></span><span class="col-md-1"><a href="javascript:__doPostBack('ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV_EventsRequestList','gv_print')" data-toggle="popover" data-container="body" data-html="true" data-content="Print" data-placement="bottom" style="margin-top: 3px;"><span class='glyphicon glyphicon-print' style='color:rgb(51,51,51)' /></a></span><span class="col-md-5">
<div class="input-group"><input name="GV_EventsRequestList_Search" type="text" id="GV_EventsRequestList_Search" class="form-control" onkeypress="return fnGV_Search(event);" data-toggle="popover" data-container="body" data-html="true" data-placement="bottom" data-content="Advanced search is possible using the following keywords:&lt;br />&lt;br />
            &lt;table>
                &lt;tr>
                    &lt;td align=&#39;right&#39; valign=&#39;top&#39;>+: &lt;/td>&lt;td>include this term in the search e.g +[searchterm]&lt;/td>
                &lt;/tr>
                &lt;tr>
                    &lt;td align=&#39;right&#39; valign=&#39;top&#39;>-: &lt;/td>&lt;td>exclude this term from the search e.g -[searchterm]&lt;/td>
                &lt;/tr>
                &lt;tr>
                    &lt;td align=&#39;right&#39; valign=&#39;top&#39;>&amp;quot;&amp;quot;: &lt;/td>&lt;td>Items between the quotation marks are considered as one value e.g. &amp;quot;[search term]&amp;quot;&lt;/td>
                &lt;/tr>
                &lt;tr>
                    &lt;td align=&#39;right&#39; valign=&#39;top&#39;>OR: &lt;/td>&lt;td>[serchterm/searchobj] OR [searchterm/searchobj]&lt;/td>
                &lt;/tr>
            &lt;/table>&lt;br />
            Example: aaa bbb &amp;quot;ccc ddd&amp;quot; +eee -fff OR ggg" placeholder="Search" /><span class="input-group-btn"><a class="btn btn-default" data-toggle="popover" data-container="body" data-html="true" data-content="The following columns will be searched<br />- Event Title<br />- Organizer" href="javascript:__doPostBack('ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV_EventsRequestList','search')" data-placement="bottom"><span class='glyphicon glyphicon-search' style='color:rgb(51,51,51)'></span></a><a class="btn btn-default" data-toggle="popover" data-container="body" data-html="true" data-content="Undo Search" href="javascript:document.getElementById('GV_EventsRequestList_Search').value='';__doPostBack('ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV_EventsRequestList','undosearch')" data-placement="bottom"><span class='fa fa-undo' style='color:rgb(51,51,51)'></span></a></span></div></span><span class="col-md-3 text-right form-inline"><div class="navbar-btn">Total 0 item&nbsp;&nbsp;&nbsp;&nbsp;</div></span></div></div><table><tr><td style='height:5px'></td></tr></table><div>
	<table class="table table-hover table-striped" cellspacing="0" border="0" id="ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_GV_EventsRequestList" style="border-collapse:collapse;">
		<tr>
			<th class="text-center" scope="col">Edit</th><th scope="col"><a href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV_EventsRequestList&#39;,&#39;Sort$EvtTicketNo&#39;)">Event #</a></th><th scope="col"><a href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV_EventsRequestList&#39;,&#39;Sort$EvtTitle&#39;)">Event Title</a></th><th scope="col"><a href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV_EventsRequestList&#39;,&#39;Sort$Organizer&#39;)">Organizer</a></th><th scope="col"><a href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV_EventsRequestList&#39;,&#39;Sort$EvtStartDate&#39;)">Start Date</a></th><th scope="col"><a href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV_EventsRequestList&#39;,&#39;Sort$EvtEndDate&#39;)">End Date</a></th><th scope="col"><a href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV_EventsRequestList&#39;,&#39;Sort$EvtEndDate&#39;)">Submitted Date</a></th><th scope="col"><a href="javascript:__doPostBack(&#39;ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV_EventsRequestList&#39;,&#39;Sort$EventActivate&#39;)">Status</a></th>
		</tr><tr>
			<td align="center" colspan="8" style="width:100%;"></td>
		</tr>
	</table>
</div><br>
<hr />

                    </div>

           
      </div></div>
                    
<p></p>
      
 

                </div>

    
   


    









          
    
          

            </div>

        

    </div>



        </div>
    

<script type="text/javascript">
//<![CDATA[

theForm.oldSubmit = theForm.submit;
theForm.submit = WebForm_SaveScrollPositionSubmit;

theForm.oldOnSubmit = theForm.onsubmit;
theForm.onsubmit = WebForm_SaveScrollPositionOnSubmit;
document.getElementById("ctl00_ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ContentPlaceHolder1_gvEventsList_Create").onclick=function(){document.location.href='add.aspx'};
function fnGV_Search(e) {	var keynum;	if (!e) var e = window.event;	if (e.keyCode) keynum = e.keyCode;	else if (e.which) keynum = e.which;   if (keynum == 13)   {	  __doPostBack('ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$gvEventsList','search');	  return false;   }return true;}
function fnGV_Search(e) {	var keynum;	if (!e) var e = window.event;	if (e.keyCode) keynum = e.keyCode;	else if (e.which) keynum = e.which;   if (keynum == 13)   {	  __doPostBack('ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV','search');	  return false;   }return true;}
function fnGV_Search(e) {	var keynum;	if (!e) var e = window.event;	if (e.keyCode) keynum = e.keyCode;	else if (e.which) keynum = e.which;   if (keynum == 13)   {	  __doPostBack('ctl00$ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$ContentPlaceHolder1$GV_EventsRequestList','search');	  return false;   }return true;}//]]>
</script>
</form>
</body>
</html>