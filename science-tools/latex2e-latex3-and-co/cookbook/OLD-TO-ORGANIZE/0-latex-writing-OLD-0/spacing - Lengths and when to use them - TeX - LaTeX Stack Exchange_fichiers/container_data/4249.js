    var edgeSupport_677201 = "f";
    var isIEBrowser_677201=false;
    var browserVersion_677201;

    function initiateNewRequest_677201(edgeSupport, html5Support) {
            var newUrl = "https://ads.everesttech.net/ads/mts/15699/4249?DFA_Click_Tracker=https%3A%2F%2Fadclick.g.doubleclick.net%2Fpcs%2Fclick%3Fxai%3DAKAOjss4hrIPab1iXDfXOaDYTMwUoM20itgFiYUsFBDrhPxnGirIgFfBqa831cDqMYGbuwFs6eEwLveHidNgGYNWP8VKL_F_fwy5_LC4TlllIHgImrH0_jMLxFt7ohuDKF1HcEFHgXPCZGVaABZdGaxAwVb1moLfkSm6yooVZaMoyaDEWGVBvVJD9n95mfohtBdVDrwJWfpbc-POXCtIzd8WTNTe2EwnT0hZsXVj9TCV706HPnhEiJlKoz6yHPllIixk7HSgLcvtF3uSbbfRRTUeGyTn76FlkkSC21S8fBTBw4Ho-VPzp6mjbLn_-5nQ7r0%26sai%3DAMfl-YT3p78IF-VTGGtTXF0BJsaz-YLBD8fJT2bi7_sjpFqrexb6BhBgdmUVkYUtPZEDOb1EVUs_S3gfI5nQ8qNxs-TAVnBN_WEADstER2MB%26sig%3DCg0ArKJSzLaYj77VWHa8EAE%26urlfix%3D1%26adurl%3Dhttps%3A%2F%2Fadclick.g.doubleclick.net%2Faclk%3Fsa%3DL%26ai%3DCm2xmV48DX_fWHoqnbLSUt_gGoIDcq1z6rbaF6gbAjbcBEAEgAGD70Y6DuAqCARdjYS1wdWItNjYwNTEyMzEyMzUxODUyMMgBCeACAKgDAaoE-QFP0JgEiCSD8EqtTqqGf0apLXd-Qf5hzV4OwWIlhxi22kmVy7_AKiplyUdStZttop6qwnImIU-niR-6aIM3Ig5DItX0NhxZDwUsj33zSzP9-3USeBAoKFuqRoBAo7MBl_7TP-uNece9zL2zIioBNKTclbj60vSgDiLAAmIJZiAEfBr7nGYpPHXv6aHHTl3dkkS0f6lFOOk2Qgrmrl1je-BR8lI3SZUkTiFmxuBgcuYLSjB6RBJHmLqtB_83OKa_FuQdKnArh4-q6z8S9jezBN2n-kun7MaOXgOJVLJ-ftxeVe6C4zh_yCWSJ4BFz3dNPYvryMgbXmalMsrgBAGABqSDvMSP-LyWlQGgBiGoB6a-G6gH8NkbqAfy2RuoB-zVG6gHltgbqAfC2hvYBwDyBwIgAdIIBwiM44AQEAH6CwIIAYAMAQ%26num%3D1%26sig%3DAOD64_0w1sjcWn3T6l8Vs9viBSMa1hlMzw%26client%3Dca-pub-6605123123518520%26adurl%3Dhttps%3A%2F%2Fpr.ybp.yahoo.com%2Fcj%2Fcd%2FMEgOFAxkIyE0iu1VHzL9lR0xkpdPKkQmItlaocwLARBjvy40mabJquR3fCE8RRvVPir7BSYhZQH9ehJLfp-o1HLdyZgq9czC0d4E8Xc2Z_KzHVyfTIDR3fSlNv8FPLLXPh6ap9-27HbNbEdYdVd4kvTsSUC7KFrbNy5mdg73XK7YqX0XnsSiHclbIq_DmLXI5Mw01F9NK0OBar23Ot5i2a6orG5ITZQN%2Frurl%2Fhttps%3A%2F%2Fadclick.g.doubleclick.net%2Fpcs%2Fclick%253Fxai%253DAKAOjsuYoZJgJeuyjt0ESg1vOILF1R-JYfXb2Rbr8_hUANJm-OuHtiDXVfxU1D7XUmU9Bktj_m443MUu2516Gk11ADYUdbvj7OrvcamHXIVpg2JUh6rL6w-7FanBk3bHfTaPjmBn4w%2526sig%253DCg0ArKJSzK26cPW6uv4QEAE%2526urlfix%253D1%2526adurl%253D&DFA_BuyId=24321297&DFA_PlacementId=275686993&DFA_AdId=470064612&DFA_CreativeId=117907136&DFA_SiteId=3654125&TC_1=2100045&TC_2=24321297&TC_3=275686993&TC_4=117907136&TC_5=dcmadvertiserid|8391437$dcmcampaignid|24321297$dcmadid|470064612$dcmrenderingid|118065450$dcmsiteid|3654125$dcmplacementid|275686993$customer|Microsoft$dv360auctionid|ct=FR&st=&city=5061&dma=0&zp=73000&bw=4&DCM_PlacementID=275686993" + "&edge=" + edgeSupport + "&html5="+ html5Support +"&nr=" + Math.random();
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

     function getInternetExplorerVersion_677201() {
         // Returns the version of Internet Explorer or a -1
         // (indicating the use of another browser).

             var rv = -1; // Return value assumes failure.
             if (navigator.appName == 'Microsoft Internet Explorer') {
                 isIEBrowser_677201=true;
                 var ua = navigator.userAgent;
                 var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");

                 if (re.exec(ua) != null)
                     rv = parseFloat( RegExp.$1 );
             }

             return rv;
         }

      //returns true if ie version is less than 9, say ie6, ie7, ie8
         // -1 for non IE browsers.
         function isIEBrowserWithVersionLessThan9_677201 () {

             browserVersion_677201 = getInternetExplorerVersion_677201();  //-1 for non IE browsers
             if((browserVersion_677201 != -1) && (browserVersion_677201 < 9)) {
                 return true;

             }
             return false;
         }

    //code to detect Edge Features, courtesy  (http://dl.dropboxusercontent.com/u/13483458/test-edge.html)
    var testEle_677201=document.createElement("div_677201");
    function isSupported_677201(a){

        var d=testEle_677201.style,e;
        for(i=0;i<a.length;i++)
            if(e=a[i],d[e]!==void 0)
                return!0;
        return!1
    }

    function supportsRGBA_677201(){

        testEle_677201.cssText="background-color:rgba(150,255,150,.5)";
        if((""+testEle_677201.style.backgroundColor).indexOf("rgba")==0)
            return!0;
        return!1
    }

    var hasTransform_677201=isSupported_677201([
        "transformProperty",
        "WebkitTransform",
        "MozTransform",
        "OTransform",
        "msTransform"
    ]),

    hasSVG_677201=!!document.createElementNS&&!!document.createElementNS("http://www.w3.org/2000/svg","svg").createSVGRect,
    hasRGBA_677201=supportsRGBA_677201(),
    hasJSON_677201=window.JSON&&window.JSON.parse&&window.JSON.stringify,
    readyToPlay=!1;

    function isIEBrowserVersion9_677201() {
        return (isIEBrowser_677201 && (browserVersion_677201 == 9)) ? true : false;
    }

    function isEdgeSupported_677201() {
        if(isIEBrowserVersion9_677201()) {
            return "y";           //hardcoding IE9 edge support.
        }
        if(hasTransform_677201) {
            if(requiresSVG_677201&&!hasSVG_677201)
                return "f";
            return "y";
        }
        return "f";
    }

    function isCanvasSupported_677201(){
      var elem = document.createElement('canvas');
      return !!(elem.getContext && elem.getContext('2d'));
    }

    function isHTML5FeaturesSupported_677201() {
         return (isCanvasSupported_677201()) ? "y" : "f";
    }

    var requiresSVG_677201=false;
    //edge detection code end

    //Edge is not supported in IE 6,7,8. Hence hardcoding edge as not supported for the same.
   // edgeSupport_677201 = (isIEBrowserWithVersionLessThan9_677201()) ? "f" : isHTMLFeaturesSupported_677201(featureArray_677201);
    edgeSupport_677201 = (isIEBrowserWithVersionLessThan9_677201()) ? "f" : isEdgeSupported_677201();
    html5Support_677201 = isHTML5FeaturesSupported_677201();

    initiateNewRequest_677201(edgeSupport_677201, html5Support_677201);
