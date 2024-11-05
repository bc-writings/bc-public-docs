    var edgeSupport_940728 = "f";
    var isIEBrowser_940728=false;
    var browserVersion_940728;

    function initiateNewRequest_940728(edgeSupport, html5Support) {
            var newUrl = "https://ads.everesttech.net/ads/mts/24650/4249?DFA_Click_Tracker=https%3A%2F%2Fadclick.g.doubleclick.net%2Fpcs%2Fclick%3Fxai%3DAKAOjsvak4uAnKkkb3fN7rcFCZrEkamCXsVQJFdUwSi_i9xwpHBZ-mRqav0618sX2jdoG2cAgUaKiMMqcVbtFNlQ04bLLIMIET5WidHmwSc39teEep3ZGjbXcyIwQLDI2SppWv8eKEWt3H7TohGfYJasArJN8R2QsVrys4ObI2wOkNjyuoGaG2swrBRJ-jrsbWdMbAlFmWLgzNayC51uOxTv3chE4D_if6J6cNwIVzPXjhnPArFLGhoDO8kWBV-KRIsnXLjtYub5XARRRn2psVJ5Qcm0JEopaRMvou8nXcsa-06NxpxQOTAmUzy3gwYp9HifhcEQl3v2Z2mc2EANHF0-vcfsgZNaa9HRe8IHKhOUtB8ySw%26sai%3DAMfl-YQeNWgu2YTlQVXg1Y2w3rge5kzNqffkVFPr62JMSEV02VXN5BtA0PtPfTmYGd2V8r1EdlzYsoHHXrLI9VX_zkz8JSlQv1pvRdA30toeVQ%26sig%3DCg0ArKJSzOgcbdyDjrqTEAE%26fbs_aeid%3D%5Bgw_fbsaeid%5D%26urlfix%3D1%26adurl%3Dhttps%3A%2F%2Fadclick.g.doubleclick.net%2Faclk%3Fsa%3DL%26ai%3DCf4-k0Pr6YfjVAYagxgLsjZ7ADaCA3Ktc-q22heoGwI23ARABIABg-9GOg7gKggEXY2EtcHViLTY2MDUxMjMxMjM1MTg1MjDIAQngAgCoAwGqBMwCT9CpSZKpHLguc-IfKQixmb8IF9jbYdueSkWU-7Zlp8kPwbfa6nd1_ZX5K0aAHeWSHqcLUuNCHrXKxq7CefSykelZccAWwhcqumm-xhd2QOJawKc2HYLdK-gi_5ARZM8hU5px9vjlXRae13_-XTndHCI1-RqzplmfqB5nXCgMhV7qkDpRdrVHVI7sf1yZqhfSKylsVUaU2H_A0Mg8Z9Go5wBY9N2Y_UeHDo8LCD9ZDdE-TsrWtrBlg7Kht0VYa3frGoOqcg73PD2ajGfuvGMX5Kaul-GtAl_lT70DkX1EnZoFqyZEJVdCpfatd-SGvTo-ZpfgX5zMZGlgqiA-Mi_zFu2oorm7gsfJDPzuY43jY1pWBiGBSYxELsQ4DYQrZMynNdCmFV0DjeRK8ZyU3OtE-ZmuOGxgaUtdLp3uF8AZbtPrcZgWRH9CPf0O0E7gBAGABuD8vLucqOK37wGgBiGoB6a-G6gHltgbqAeqm7ECqAffn7EC2AcA8gcCIAHSCAcIjOOAUBAB-gsCCAGADAHQFQGAFwE%26num%3D1%26sig%3DAOD64_1h5_3sINAJnclSl9GBHplTZ_wgyQ%26client%3Dca-pub-6605123123518520%26adurl%3Dhttps%3A%2F%2Fpr.ybp.yahoo.com%2Fcj%2Fcd%2FP20y2kv-S5cIvnfixbBjAxp4dXCTO7s95TmXYOuEUC0UIURg1P3z_3z_3xhfNTlewn_KJaUsn3BUVvu2ZhBqWWhQf3x9J7dO5s-tS8jE-10lzejj93EK3ednq4-KfyrGHxfSNnfLI8czslnsE-CTw9vTF0NV5vZcrjUn94hFDUxn6cco-FW4cI9NMLfU8TDfWMWlzQnvCKX0Maardpj60TsQh9NzueVjPOM2sdfyOcPDU7o4WUfibQ_e9DwB2YP15lUEVVMs3_q1xv9xOjHMGscRIqcMIUDsRj_RlTcc8o8%2Frurl%2Fhttps%3A%2F%2Fadclick.g.doubleclick.net%2Fpcs%2Fclick%253Fxai%253DAKAOjsta8xNcZmYtKHJob8EDsbw9UfXtyh-y00ebRNtkjyhrjvruvrK9XmPjZ9CmUZ_NzyNsJ5UEMqEpuksaSo-mlDspJX-RpJxfWNVxJvEqwXf7haCjCPhZR2Ap0AyQ_MIQd_hxlG1NwvDAEg%2526sig%253DCg0ArKJSzJhcKkDrullIEAE%2526cry%253D1%2526fbs_aeid%253D%255Bgw_fbsaeid%255D%2526urlfix%253D1%2526adurl%253D&DFA_BuyId=26977776&DFA_PlacementId=322904964&DFA_AdId=515248520&DFA_CreativeId=162992653&DFA_SiteId=7430412&TC_1=2200186&TC_2=26977776&TC_3=322904964&TC_4=162992653&TC_5=dcmadvertiserid|8391437$dcmcampaignid|26977776$dcmadid|515248520$dcmrenderingid|163023900$dcmsiteid|7430412$dcmplacementid|322904964$customer|Microsoft$dv360auctionid|ct=FR&st=&city=5061&dma=0&zp=73000&bw=4&DCM_PlacementID=322904964" + "&edge=" + edgeSupport + "&html5="+ html5Support +"&nr=" + Math.random();
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

     function getInternetExplorerVersion_940728() {
         // Returns the version of Internet Explorer or a -1
         // (indicating the use of another browser).

             var rv = -1; // Return value assumes failure.
             if (navigator.appName == 'Microsoft Internet Explorer') {
                 isIEBrowser_940728=true;
                 var ua = navigator.userAgent;
                 var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");

                 if (re.exec(ua) != null)
                     rv = parseFloat( RegExp.$1 );
             }

             return rv;
         }

      //returns true if ie version is less than 9, say ie6, ie7, ie8
         // -1 for non IE browsers.
         function isIEBrowserWithVersionLessThan9_940728 () {

             browserVersion_940728 = getInternetExplorerVersion_940728();  //-1 for non IE browsers
             if((browserVersion_940728 != -1) && (browserVersion_940728 < 9)) {
                 return true;

             }
             return false;
         }

    //code to detect Edge Features, courtesy  (http://dl.dropboxusercontent.com/u/13483458/test-edge.html)
    var testEle_940728=document.createElement("div_940728");
    function isSupported_940728(a){

        var d=testEle_940728.style,e;
        for(i=0;i<a.length;i++)
            if(e=a[i],d[e]!==void 0)
                return!0;
        return!1
    }

    function supportsRGBA_940728(){

        testEle_940728.cssText="background-color:rgba(150,255,150,.5)";
        if((""+testEle_940728.style.backgroundColor).indexOf("rgba")==0)
            return!0;
        return!1
    }

    var hasTransform_940728=isSupported_940728([
        "transformProperty",
        "WebkitTransform",
        "MozTransform",
        "OTransform",
        "msTransform"
    ]),

    hasSVG_940728=!!document.createElementNS&&!!document.createElementNS("http://www.w3.org/2000/svg","svg").createSVGRect,
    hasRGBA_940728=supportsRGBA_940728(),
    hasJSON_940728=window.JSON&&window.JSON.parse&&window.JSON.stringify,
    readyToPlay=!1;

    function isIEBrowserVersion9_940728() {
        return (isIEBrowser_940728 && (browserVersion_940728 == 9)) ? true : false;
    }

    function isEdgeSupported_940728() {
        if(isIEBrowserVersion9_940728()) {
            return "y";           //hardcoding IE9 edge support.
        }
        if(hasTransform_940728) {
            if(requiresSVG_940728&&!hasSVG_940728)
                return "f";
            return "y";
        }
        return "f";
    }

    function isCanvasSupported_940728(){
      var elem = document.createElement('canvas');
      return !!(elem.getContext && elem.getContext('2d'));
    }

    function isHTML5FeaturesSupported_940728() {
         return (isCanvasSupported_940728()) ? "y" : "f";
    }

    var requiresSVG_940728=false;
    //edge detection code end

    //Edge is not supported in IE 6,7,8. Hence hardcoding edge as not supported for the same.
   // edgeSupport_940728 = (isIEBrowserWithVersionLessThan9_940728()) ? "f" : isHTMLFeaturesSupported_940728(featureArray_940728);
    edgeSupport_940728 = (isIEBrowserWithVersionLessThan9_940728()) ? "f" : isEdgeSupported_940728();
    html5Support_940728 = isHTML5FeaturesSupported_940728();

    initiateNewRequest_940728(edgeSupport_940728, html5Support_940728);
