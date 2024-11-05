    var edgeSupport_875991 = "f";
    var isIEBrowser_875991=false;
    var browserVersion_875991;

    function initiateNewRequest_875991(edgeSupport, html5Support) {
            var newUrl = "https://ads.everesttech.net/ads/mts/15699/4249?DFA_Click_Tracker=https%3A%2F%2Fadclick.g.doubleclick.net%2Fpcs%2Fclick%3Fxai%3DAKAOjsvYltRgRC2yQDueYfKSv8LI7mzXToQ6WlQfqd8toRqTEUjzd5x3nixTulIZoz3qoBSQAT5aylLZFvNpNHPFDCeyRJFV7oceUa0yq3laLcNyUcHeNZ7RU2PbmyF7f-hVezyksPdoCwPKPwnBOqxYe6CC9pZJMVL7DfFLnOOrJ_bdVCnlzM6pG8k-B5Mqy52RTcEB2v9TAHc65F1Z7GwrbJFV1z5beivIRwAYp7xsLH2QZcxcwL5Wqo1SHEJvEUXFUWP5-qgBbEnxCBfVMM-zjvfeAxS2gm_vn4kWBdo02SIR3nrIA0aojoFuWkQD3wiAWSUT7FaomXjtroCuuOcGntqhed-t6Qf7VkU%26sai%3DAMfl-YQe7ZNqyOhi6JjI-dmuFyX01wICckpmAp3_n6MMaCgycBc2rQMjRpaDBlo78Hd6O1XgRZoYlGPvBIADV5PjcMKrhNyqcjBDBiWG1DbJX0ykSU-nTT1Pr5OsWavK_m4%26sig%3DCg0ArKJSzPpgEKrUgnElEAE%26urlfix%3D1%26adurl%3Dhttps%3A%2F%2Fadclick.g.doubleclick.net%2Faclk%3Fsa%3DL%26ai%3DCd1NxtCeAYOq3AaSG9fgPh6GwsAKggNyrXPqttoXqBsCNtwEQASAAYPvRjoO4CoIBF2NhLXB1Yi02NjA1MTIzMTIzNTE4NTIwyAEJ4AIAqAMBqgSvAk_QS8g8pYGL_H5SvZxFOO2uqcKVww0Mdlm-XC84KQp4GaAKngD54d0jlOv0NfYiw_V4GxiQY0OWbrAdlAZXZJaMt6mHrFxAQWpE3h7aeDoS4VXBNrScwwAtN8wCLyxaiot4RQVbaFRvK2rlZkk-ZuvHgZ-9q722lWLi6Bx6ca3P6YL6yOFPYFcs6xoE5fiFtoN4XpSf9wDLMxd5gbq_2siCAaO91Ql90VNyLsu3ZofrRFkiMoIlRzN3VkXNGS2Bh7U7r-MpRHV791PPC1pKwHUjRSBjIY2eg9I20i9fqoUv2au0ZgVFctS9s5bZf2r9eActWcK70V-yUbrKttkke6yIaV31P18LaQj2ygiDwp35DNFrldqEoP-0yynGumuFmJVynuqSnqTfaXJfJCBHReAEAYAG_KjJo-DV-vXkAaAGIagHpr4bqAfw2RuoB_LZG6gH7NUbqAeW2BvYBwDyBwIgAdIIBwiA4YBQEAH6CwIIAYAMAdAVAYAXAQ%26num%3D1%26sig%3DAOD64_3S8VFKHsTT5B3ekLNJbIJIQSDeyw%26client%3Dca-pub-6605123123518520%26adurl%3Dhttps%3A%2F%2Fpr.ybp.yahoo.com%2Fcj%2Fcd%2Fjz-edLEbngBBXOU34_pOzAKV_8LVASvoVA02Y9zmNyJ8J-xC1-sneZDGcNwDsgDZ2BkIP8o5lpiDjiIxnJ6Ns0vx0eIuFkqIq7eZXegmeLLyO9-LUTTZvm-dXtmFK5sZNttcxYWc1nxRjs054hsxAgQqP0hLWf6UaFIVY8ZbQJRK1Kxaz_M_YOQW0SozrcR3nkttN5hRUHhAdRQ4HEVpZpmmMlx7JNNYGZ5UTDdjQhnAH_V5KGuYK28Dm2-BDbuSIcDQs6Rqn7xd9zsQ5MhhJw%2Frurl%2Fhttps%3A%2F%2Fadclick.g.doubleclick.net%2Fpcs%2Fclick%253Fxai%253DAKAOjst1ta9_mr94ibwCVoghuofWDmm1RLX2AnWm9D3PBTAOPxR-Xw5QMa1oWC8OjZe5S8mt-9QxS7wZmlXoDG-8XX8org-kXjmN42zg8QZhXORBmQTHGJQeMgPSfvXG2IeJCmYpzA%2526sig%253DCg0ArKJSzJIS63ozVogOEAE%2526urlfix%253D1%2526adurl%253D&DFA_BuyId=25496728&DFA_PlacementId=298355996&DFA_AdId=491761386&DFA_CreativeId=117907136&DFA_SiteId=3654125&TC_1=2100045&TC_2=25496728&TC_3=298355996&TC_4=117907136&TC_5=dcmadvertiserid|8391437$dcmcampaignid|25496728$dcmadid|491761386$dcmrenderingid|118065450$dcmsiteid|3654125$dcmplacementid|298355996$customer|Microsoft$dv360auctionid|ct=FR&st=&city=5061&dma=0&zp=73230&bw=4&DCM_PlacementID=298355996" + "&edge=" + edgeSupport + "&html5="+ html5Support +"&nr=" + Math.random();
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

     function getInternetExplorerVersion_875991() {
         // Returns the version of Internet Explorer or a -1
         // (indicating the use of another browser).

             var rv = -1; // Return value assumes failure.
             if (navigator.appName == 'Microsoft Internet Explorer') {
                 isIEBrowser_875991=true;
                 var ua = navigator.userAgent;
                 var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");

                 if (re.exec(ua) != null)
                     rv = parseFloat( RegExp.$1 );
             }

             return rv;
         }

      //returns true if ie version is less than 9, say ie6, ie7, ie8
         // -1 for non IE browsers.
         function isIEBrowserWithVersionLessThan9_875991 () {

             browserVersion_875991 = getInternetExplorerVersion_875991();  //-1 for non IE browsers
             if((browserVersion_875991 != -1) && (browserVersion_875991 < 9)) {
                 return true;

             }
             return false;
         }

    //code to detect Edge Features, courtesy  (http://dl.dropboxusercontent.com/u/13483458/test-edge.html)
    var testEle_875991=document.createElement("div_875991");
    function isSupported_875991(a){

        var d=testEle_875991.style,e;
        for(i=0;i<a.length;i++)
            if(e=a[i],d[e]!==void 0)
                return!0;
        return!1
    }

    function supportsRGBA_875991(){

        testEle_875991.cssText="background-color:rgba(150,255,150,.5)";
        if((""+testEle_875991.style.backgroundColor).indexOf("rgba")==0)
            return!0;
        return!1
    }

    var hasTransform_875991=isSupported_875991([
        "transformProperty",
        "WebkitTransform",
        "MozTransform",
        "OTransform",
        "msTransform"
    ]),

    hasSVG_875991=!!document.createElementNS&&!!document.createElementNS("http://www.w3.org/2000/svg","svg").createSVGRect,
    hasRGBA_875991=supportsRGBA_875991(),
    hasJSON_875991=window.JSON&&window.JSON.parse&&window.JSON.stringify,
    readyToPlay=!1;

    function isIEBrowserVersion9_875991() {
        return (isIEBrowser_875991 && (browserVersion_875991 == 9)) ? true : false;
    }

    function isEdgeSupported_875991() {
        if(isIEBrowserVersion9_875991()) {
            return "y";           //hardcoding IE9 edge support.
        }
        if(hasTransform_875991) {
            if(requiresSVG_875991&&!hasSVG_875991)
                return "f";
            return "y";
        }
        return "f";
    }

    function isCanvasSupported_875991(){
      var elem = document.createElement('canvas');
      return !!(elem.getContext && elem.getContext('2d'));
    }

    function isHTML5FeaturesSupported_875991() {
         return (isCanvasSupported_875991()) ? "y" : "f";
    }

    var requiresSVG_875991=false;
    //edge detection code end

    //Edge is not supported in IE 6,7,8. Hence hardcoding edge as not supported for the same.
   // edgeSupport_875991 = (isIEBrowserWithVersionLessThan9_875991()) ? "f" : isHTMLFeaturesSupported_875991(featureArray_875991);
    edgeSupport_875991 = (isIEBrowserWithVersionLessThan9_875991()) ? "f" : isEdgeSupported_875991();
    html5Support_875991 = isHTML5FeaturesSupported_875991();

    initiateNewRequest_875991(edgeSupport_875991, html5Support_875991);
