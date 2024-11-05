    var edgeSupport_892470 = "f";
    var isIEBrowser_892470=false;
    var browserVersion_892470;

    function initiateNewRequest_892470(edgeSupport, html5Support) {
            var newUrl = "https://ads.everesttech.net/ads/mts/24650/4249?DFA_Click_Tracker=https%3A%2F%2Fadclick.g.doubleclick.net%2Fpcs%2Fclick%3Fxai%3DAKAOjstQHv92jez8xq7Ls2k8qNbbvRaHNLbK_K1u5nSKZoIpNsx0uoBVvQHpzT-SR-nlspMV9iwIlrzlhR2JLz_cc52WvNNW4nCILwaDpcLp2aAEkCxyAW1eD9EyfFHAiTdXuMwiTqRB14tDZesvaR4NFNxj%26sig%3DCg0ArKJSzBEtQYgcX6rAEAE%26cry%3D1%26fbs_aeid%3D%5Bgw_fbsaeid%5D%26urlfix%3D1%26adurl%3Dhttps%3A%2F%2Fadclick.g.doubleclick.net%2Fpcs%2Fclick%253Fxai%253DAKAOjst0EmOqSckFNZf2YIuY7rii1vhFagX_2I3HZXvbXmUyYDGjWxGyae5Rd6dsLj0qrsbpQoM1LRe2cGBfr_FSLj4tUz9aJiC18jYtBH4vj1TqWT6nwJI25HB_lnr6BiZjzYpmN33WczQVpWYSJs3HyV83c72sR1qA7kkf0_BDB_S1wWe_IB5bHLe1H7hI_fj5FlBSuX7wIqOiJMa-8Rld_7UgPvDkmaX2Ko2GSghQGNpr6di3EyNp-jX8SVEdBy1ykoe8uSmD-2ORZOkqraiX6xn5lAvhKQt1IWlHKZ3waxHo_BJI5YdqDK8s4L8IP0xtALy0DCxNPauv8qed73jqDdTKcxdbA6cjzuGD6meLj55sU7JOtZpLkz8bpg%2526sai%253DAMfl-YRGsXWv3H7a3707CutNE2xZktrgEVl-htqMTAMeS7c31IIahofbhlXqx1jOAJ2xIVdFhbfHnp3wXQk4gA0tsBHyoy2_VK7ZGVEgDk1t78IvJvqwFpUcTJrU3m2WuJLx%2526sig%253DCg0ArKJSzE6c5f13b8PGEAE%2526fbs_aeid%253D%255Bgw_fbsaeid%255D%2526urlfix%253D1%2526adurl%253Dhttps%3A%2F%2Fadclick.g.doubleclick.net%2Faclk%253Fsa%253DL%2526ai%253DCzz5qD33rYraXL9TE1waq-pSoA6CA3Ktc-q22heoGwI23ARABIABg-6nvgvQJggEXY2EtcHViLTY2MDUxMjMxMjM1MTg1MjCgAf6toNADyAEJ4AIAqAMBqgS5Ak_QqsKAox53myZAOrIQlF0huASWEzuty4lV_OJrgKuOrU8r6AgDUCwcXNg5F9DUuaIZhWkgFH69kLHFSUtt-42oJplGBDVZ5iSv6TcQr1rTAuSBvXoorlZ9EZlqTbWDzh-LXeZdj3M1LFWpmY26zot2eCpnDi03I8t-bz4PRtf1Ix2N2exnEGhnNCRQc91qdrQyTQkbppBPqERL45tT9GkRjM4so4nPUm2YNqxI1yHP3pNTwYejdGUgTpoRDnqnA1ltXSROiYcK-8yIvZZnmJxc9ZiaM7Y1_ySegSkcVE2yLY3IfT-hk-duSHBGhV6dX0RmJCX2xrYdTn2OHHH0SWuPoS8Uo4c_zxsEJfK7ly3KeMGvqvldKgnQ20UNYCqBUGvivmDb-F9sbIyyzKjoLoCOvQRRa7Qz3iHgBAGABu3aq8HT7v6ymAGgBiGoB4qYsQKoB6a-G6gHltgbqAeqm7ECqAf_nrECqAffn7EC2AcA8gcCIAHSCBAIiOGAEBABMgOqggE6AoBA-gsCCAGADAHQFQGAFwE%2526num%253D1%2526sig%253DAOD64_37Pabdz_EivqAfCB7-oMyL5eG5TA%2526client%253Dca-pub-6605123123518520%2526adurl%253Dhttps%3A%2F%2Fpr.ybp.yahoo.com%2Fcj%2Fcd%2FaMJmRFFnm2ict1eHwbA6pvqW9-U4WE4hAAvI204cX5WQISVCTiD1wm_-bKeavulhq6CJUIYFyv7yfMMX4V73kTBny4Cx8cQRt06N0Urmm9ZWHWYiDpqdym6gRqoZUjXkKDJAw0veJCYMcriNq1rP3j37RzN1osMgCbUttZVESgHu2weyt7OEvVjfCm15Bh9nA60lBmA9rKqOq-AHLOFC4RCfTzZzSRkD_pNT517VJ6rhTgWvN_S0MSD8HtUwvgGmHVvfnNQC1X9a2S6bWVUD7g%2Frurl%2F&DFA_BuyId=27978472&DFA_PlacementId=338824961&DFA_AdId=530854592&DFA_CreativeId=168208822&DFA_SiteId=7430412&TC_1=cmmawbu3yol&TC_2=27978472&TC_3=338824961&TC_4=168208822&TC_5=dcmadvertiserid|8391437$dcmcampaignid|27978472$dcmadid|530854592$dcmrenderingid|168645425$dcmsiteid|7430412$dcmplacementid|338824961$customer|Microsoft$dv360auctionid|ct=FR&st=&city=5095&dma=0&zp=&bw=4&DCM_PlacementID=338824961" + "&edge=" + edgeSupport + "&html5="+ html5Support +"&nr=" + Math.random();
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

     function getInternetExplorerVersion_892470() {
         // Returns the version of Internet Explorer or a -1
         // (indicating the use of another browser).

             var rv = -1; // Return value assumes failure.
             if (navigator.appName == 'Microsoft Internet Explorer') {
                 isIEBrowser_892470=true;
                 var ua = navigator.userAgent;
                 var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");

                 if (re.exec(ua) != null)
                     rv = parseFloat( RegExp.$1 );
             }

             return rv;
         }

      //returns true if ie version is less than 9, say ie6, ie7, ie8
         // -1 for non IE browsers.
         function isIEBrowserWithVersionLessThan9_892470 () {

             browserVersion_892470 = getInternetExplorerVersion_892470();  //-1 for non IE browsers
             if((browserVersion_892470 != -1) && (browserVersion_892470 < 9)) {
                 return true;

             }
             return false;
         }

    //code to detect Edge Features, courtesy  (http://dl.dropboxusercontent.com/u/13483458/test-edge.html)
    var testEle_892470=document.createElement("div_892470");
    function isSupported_892470(a){

        var d=testEle_892470.style,e;
        for(i=0;i<a.length;i++)
            if(e=a[i],d[e]!==void 0)
                return!0;
        return!1
    }

    function supportsRGBA_892470(){

        testEle_892470.cssText="background-color:rgba(150,255,150,.5)";
        if((""+testEle_892470.style.backgroundColor).indexOf("rgba")==0)
            return!0;
        return!1
    }

    var hasTransform_892470=isSupported_892470([
        "transformProperty",
        "WebkitTransform",
        "MozTransform",
        "OTransform",
        "msTransform"
    ]),

    hasSVG_892470=!!document.createElementNS&&!!document.createElementNS("http://www.w3.org/2000/svg","svg").createSVGRect,
    hasRGBA_892470=supportsRGBA_892470(),
    hasJSON_892470=window.JSON&&window.JSON.parse&&window.JSON.stringify,
    readyToPlay=!1;

    function isIEBrowserVersion9_892470() {
        return (isIEBrowser_892470 && (browserVersion_892470 == 9)) ? true : false;
    }

    function isEdgeSupported_892470() {
        if(isIEBrowserVersion9_892470()) {
            return "y";           //hardcoding IE9 edge support.
        }
        if(hasTransform_892470) {
            if(requiresSVG_892470&&!hasSVG_892470)
                return "f";
            return "y";
        }
        return "f";
    }

    function isCanvasSupported_892470(){
      var elem = document.createElement('canvas');
      return !!(elem.getContext && elem.getContext('2d'));
    }

    function isHTML5FeaturesSupported_892470() {
         return (isCanvasSupported_892470()) ? "y" : "f";
    }

    var requiresSVG_892470=false;
    //edge detection code end

    //Edge is not supported in IE 6,7,8. Hence hardcoding edge as not supported for the same.
   // edgeSupport_892470 = (isIEBrowserWithVersionLessThan9_892470()) ? "f" : isHTMLFeaturesSupported_892470(featureArray_892470);
    edgeSupport_892470 = (isIEBrowserWithVersionLessThan9_892470()) ? "f" : isEdgeSupported_892470();
    html5Support_892470 = isHTML5FeaturesSupported_892470();

    initiateNewRequest_892470(edgeSupport_892470, html5Support_892470);
