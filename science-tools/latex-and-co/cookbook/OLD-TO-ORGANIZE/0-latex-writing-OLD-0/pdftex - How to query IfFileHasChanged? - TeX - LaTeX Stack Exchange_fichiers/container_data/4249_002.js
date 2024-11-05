    var edgeSupport_859798 = "f";
    var isIEBrowser_859798=false;
    var browserVersion_859798;

    function initiateNewRequest_859798(edgeSupport, html5Support) {
            var newUrl = "https://ads.everesttech.net/ads/mts/15699/4249?DFA_Click_Tracker=https%3A%2F%2Fadclick.g.doubleclick.net%2Fpcs%2Fclick%3Fxai%3DAKAOjssLVmIHGtXOH0wqnyf4j6zdAXuJI1cyOMbO3qv-zO6F6OpHN83Pm4NYBp-uVn0dlp2PyDv0pcJ-4NP1N_dJjf8iO__YYMF5F-acP2E3Tu4498k5q7UM1MkDwpnZZiAnUyygK5AWo9W419ykzexI7n_luFq30AXZQWW4s-WBcX7epE0KQnuKVn1mAHnmVZL3x0s6Cflmgtm3_M4-mLqIPcJ8a3C75t4KUWax2AWOJjKLNrYbD-38kbGb5l4JBZItwraFu2AXXah0tJL3lZ3gBBcO3rEWCeHX9IYsMsxZBOEzVCmzSkSsdDTr2y7SOhI%26sai%3DAMfl-YSjsqpdIgT0Atz-sdznDQ-MDzrLdLjGUSaif2kGiwoYpfZ6bxuJ-z5V9ubowMPM5ZsvoiwKIPaNkwnJNh2kD3pGKhDUsEZVq7XOnqJCCT7nZUiLC2N4qlULn7_D5GA%26sig%3DCg0ArKJSzImlmU4OevFwEAE%26urlfix%3D1%26adurl%3Dhttps%3A%2F%2Fadclick.g.doubleclick.net%2Faclk%3Fsa%3DL%26ai%3DCv90o-EErX5_sPOLLlgTd-Ii4BKCA3Ktc-q22heoGwI23ARABIABg-_n8gogKggEXY2EtcHViLTY2MDUxMjMxMjM1MTg1MjDIAQngAgCoAwGqBIECT9AtJ_N31zlfBCy3z0ohYmMyOJBbX0s5KOfp9y0mTEHx7WInUu4F8t-uKFYKYkDdTzKu8XWWHSTAggxPYyCHAbjTB9YuWmbZ6hkHj97-pvpxYZIBSB9L_hIwdt5GW_89U-I1RlRZ4CzrfoJD0WayLpuUHc39hgwl0jjgyAx-2ZNpI23AfMKrzuJ83ar4gtjOM-9T6uFTfambEdP6uGcYOgJXtYClXKacSVc3J_litfSo_JopbJqnmW_3runWJZUPHNUgVeme7KlMDypVO-mUpCHMVPoIdgQf0BOMenvw-fYDpYpxyBb5Ah5ghsR3TUnLVnZYfLw2xKlIwRSv7ZMhs5vgBAGABqSDvMSP-LyWlQGgBiGoB6a-G6gH8NkbqAfy2RuoB-zVG6gHltgbqAfC2hvYBwDyBwIgAdIIBwiA4YBQEAH6CwIIAYAMAQ%26num%3D1%26sig%3DAOD64_2IUjDX_LjlnKOfB5_-XWu0sSb99A%26client%3Dca-pub-6605123123518520%26adurl%3Dhttps%3A%2F%2Fpr.ybp.yahoo.com%2Fcj%2Fcd%2FKkvqsSxepYdgvLoQOMbFzShePqMWrXvsAofhrj6Rum-rUtCb-SL_exO4c1wrfOiYUzNUoqqlcHPaimEu2h24fd86ewnhXA5W2OPVGDm1H06dy4JXCM8zone1w4cFhxHP7k4oCdYmqsuMjsLwcyDieJqElJ8ZtjoPvk346gvNRxQ6RiHMeox8mVSWJAUkiHtMm918bzLgLh8WnSp4GG-poNU75PSk1v2f%2Frurl%2Fhttps%3A%2F%2Fadclick.g.doubleclick.net%2Fpcs%2Fclick%253Fxai%253DAKAOjsuC2JdPSMs05jVfn-K1NLA_o1r8FtKHsH2iDtUP8PRM32hIx0qUo7hLrwunzmtmTsd-VDxwf5ADVlV4r0W47GApGOVBKS6LM0DvqWJUH9jG91dSo-f_cJ58CAu04xA7OJTswA%2526sig%253DCg0ArKJSzCQSex4AqDydEAE%2526urlfix%253D1%2526adurl%253D&DFA_BuyId=24321297&DFA_PlacementId=275686993&DFA_AdId=470064612&DFA_CreativeId=117907136&DFA_SiteId=3654125&TC_1=2100045&TC_2=24321297&TC_3=275686993&TC_4=117907136&TC_5=dcmadvertiserid|8391437$dcmcampaignid|24321297$dcmadid|470064612$dcmrenderingid|118065450$dcmsiteid|3654125$dcmplacementid|275686993$customer|Microsoft$dv360auctionid|ct=FR&st=&city=4984&dma=0&zp=&bw=4&DCM_PlacementID=275686993" + "&edge=" + edgeSupport + "&html5="+ html5Support +"&nr=" + Math.random();
            if(document.readyState === "complete")
            {
                var sc = document.createElement("script");
                sc.setAttribute("type","text/javascript");
                sc.setAttribute("src",newUrl);
                if (document.currentScript) {
                    var pn = document.currentScript.parentNode;
                    var sbn = document.currentScript.nextSibling;
                    if (sbn) {
                        pn.insertBefore(sc,sbn);
                    } else {
                        pn.appendChild(sc);
                    }
                } else {
                    document.body.appendChild(sc);
                }
            } else {
                document.write('<' + 'script type="text/javascript" src="' + newUrl +'"></' + 'script>');
            }
        }

     function getInternetExplorerVersion_859798() {
         // Returns the version of Internet Explorer or a -1
         // (indicating the use of another browser).

             var rv = -1; // Return value assumes failure.
             if (navigator.appName == 'Microsoft Internet Explorer') {
                 isIEBrowser_859798=true;
                 var ua = navigator.userAgent;
                 var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");

                 if (re.exec(ua) != null)
                     rv = parseFloat( RegExp.$1 );
             }

             return rv;
         }

      //returns true if ie version is less than 9, say ie6, ie7, ie8
         // -1 for non IE browsers.
         function isIEBrowserWithVersionLessThan9_859798 () {

             browserVersion_859798 = getInternetExplorerVersion_859798();  //-1 for non IE browsers
             if((browserVersion_859798 != -1) && (browserVersion_859798 < 9)) {
                 return true;

             }
             return false;
         }

    //code to detect Edge Features, courtesy  (http://dl.dropboxusercontent.com/u/13483458/test-edge.html)
    var testEle_859798=document.createElement("div_859798");
    function isSupported_859798(a){

        var d=testEle_859798.style,e;
        for(i=0;i<a.length;i++)
            if(e=a[i],d[e]!==void 0)
                return!0;
        return!1
    }

    function supportsRGBA_859798(){

        testEle_859798.cssText="background-color:rgba(150,255,150,.5)";
        if((""+testEle_859798.style.backgroundColor).indexOf("rgba")==0)
            return!0;
        return!1
    }

    var hasTransform_859798=isSupported_859798([
        "transformProperty",
        "WebkitTransform",
        "MozTransform",
        "OTransform",
        "msTransform"
    ]),

    hasSVG_859798=!!document.createElementNS&&!!document.createElementNS("http://www.w3.org/2000/svg","svg").createSVGRect,
    hasRGBA_859798=supportsRGBA_859798(),
    hasJSON_859798=window.JSON&&window.JSON.parse&&window.JSON.stringify,
    readyToPlay=!1;

    function isIEBrowserVersion9_859798() {
        return (isIEBrowser_859798 && (browserVersion_859798 == 9)) ? true : false;
    }

    function isEdgeSupported_859798() {
        if(isIEBrowserVersion9_859798()) {
            return "y";           //hardcoding IE9 edge support.
        }
        if(hasTransform_859798) {
            if(requiresSVG_859798&&!hasSVG_859798)
                return "f";
            return "y";
        }
        return "f";
    }

    function isCanvasSupported_859798(){
      var elem = document.createElement('canvas');
      return !!(elem.getContext && elem.getContext('2d'));
    }

    function isHTML5FeaturesSupported_859798() {
         return (isCanvasSupported_859798()) ? "y" : "f";
    }

    var requiresSVG_859798=false;
    //edge detection code end

    //Edge is not supported in IE 6,7,8. Hence hardcoding edge as not supported for the same.
   // edgeSupport_859798 = (isIEBrowserWithVersionLessThan9_859798()) ? "f" : isHTMLFeaturesSupported_859798(featureArray_859798);
    edgeSupport_859798 = (isIEBrowserWithVersionLessThan9_859798()) ? "f" : isEdgeSupported_859798();
    html5Support_859798 = isHTML5FeaturesSupported_859798();

    initiateNewRequest_859798(edgeSupport_859798, html5Support_859798);
