    var edgeSupport_576499 = "f";
    var isIEBrowser_576499=false;
    var browserVersion_576499;

    function initiateNewRequest_576499(edgeSupport, html5Support) {
            var newUrl = "https://ads.everesttech.net/ads/mts/24650/4249?DFA_Click_Tracker=https%3A%2F%2Fadclick.g.doubleclick.net%2Fpcs%2Fclick%3Fxai%3DAKAOjstzCUtjqXSkLrMZ3ae1kEuHUrWwjaQAoL1ezs66QmRvofPSgCUqw-EkvcTLh3QobG6yV1nJ5h_MmHFYnuyKo57oNGB7m0AhgUJH56IypUQ-QYEodx9fl-ZMoaBkQdsc1hhGHfm6_FETjzEKYlJ20IOY%26sai%3DAMfl-YTru02UlP0cA7RlqkWeyVDeDbbSBsqHaJj_0OsKoy7hMB6Qwc6SbAbbN2umrUrhDNWmdT50BAcG4u3GoiJk-g%26sig%3DCg0ArKJSzPNtzNtNe5C2EAE%26cry%3D1%26fbs_aeid%3D%5Bgw_fbsaeid%5D%26urlfix%3D1%26adurl%3Dhttps%3A%2F%2Fadclick.g.doubleclick.net%2Fpcs%2Fclick%253Fxai%253DAKAOjssAiw7O038EvE1bvU3SCZcOOgKc6ZWiuzIVEAdTZjKqbYDxKrDck7kXBvle0f94Mz1BX8lzUEtwrzzRwdQnNsW_9Rnxdcvs6CHlW2bkWv0OTkJOhhpVfpSw9DHJOa8t3lUpeGz6aCKGXnWwECNqSYCM7mT0LsQoo-SdX4DX63gyiJYslZ6V5luhq0jXxX_6kWdlqyFE_b7Pq0f4GnQxP0IhFad87_3YTZVjAdY0Cq8bgGCaNWL9Owsnrv_pFACyzAZrZJap82f_AftmNwy1HJlBTL0myWm8rVF0Rtd_hZXx3djKlvWnNpY7_jHJtThluM9ziXiZv6iBv59GZByQifD8XnbItrRpratZ_w3SUktCaTrPKbDs3Ngk%2526sai%253DAMfl-YT-ZMasEYpSyiIRef8bCIjOoKn2evwLrZvurXEffBspDigCTBDIaFwWocLbRWB5U1onQRlPwhk_rfWn9URYCl8F7iQv9-pm6Vv4K99VMY7Rf2D7SQDjNLndQqySFNMhTnT1k-goMJLslDQG-QUHyIU%2526sig%253DCg0ArKJSzMavRY21RM9WEAE%2526fbs_aeid%253D%255Bgw_fbsaeid%255D%2526urlfix%253D1%2526adurl%253Dhttps%3A%2F%2Fadclick.g.doubleclick.net%2Faclk%253Fsa%253DL%2526ai%253DCTQc5uyeiY_mbJpLtzAaO66LAA6CA3Ktc-q22heoGwI23ARABIABg-9GOg7gKggEXY2EtcHViLTY2MDUxMjMxMjM1MTg1MjDIAQngAgCoAwGqBOcCT9BODmUj_XCmWdasFKT10El3BfsltaLqOjFZv_k6fPsZFSVc5Oy3ZQ0Q-VB4Hr3XJt64vT79QC3RFBT4QafpM9ScjhyS_Uu4-PWQjX-aFp-40UYROUYmHfrWkhuJ0n0TfozXgWj9q_U5jaSZ5Id1l2fed_5ZmS1-c2AJBTA9RL31zYaKg1MpecvTOfrRma-y30Cs-TRPe5gDmou9MTnrkL1L7oUcBS3HHr_K3R1kjsemHlX2QjpY16NsqluaPimKV1ilC1ytH6vG-W-b7gLyphFOfqG0oE0o_OxLArqKmMtSUs-HI4QhtnwUj2LsV5DW61wmJQCprlTUeGqa-eb31nKK_UjX6gmEKo2AyzJfYWqFMCWbLbRWgJ0uCLYN4AmrhRl_xnzVxAprHQY1l93h3zZH2dXRzj0B1yu8Xo9oF6Tzv7tgwtfelWJGk9ID7OnRZtvn39Uj1-PtZcw7P44gCCRBK79pArLgBAGABu3aq8HT7v6ymAGgBiGoB6a-G6gHltgbqAeqm7ECqAf_nrECqAffn7EC2AcA8gcCIAHSCA8IgOGAEBABMgKqAjoCgED6CwIIAYAMAdAVAYAXAQ%2526num%253D1%2526sig%253DAOD64_2rtTApF9y0l-Hk4dDvJ46Af1LMuA%2526client%253Dca-pub-6605123123518520%2526adurl%253Dhttps%3A%2F%2Fpn.ybp.yahoo.com%2Fcj%2Fcd%2FvclVNtu2LCQ258U0F0XFWTwN4h2m4mDoEGWyvp95TCNwEXB9tVXsSHmGYHyh9_xMTyI8rvw-rjj8W_lZ09HIJwA9u4P9IsLDQ7arwaj4h-eLza_RdNegg8542kupyQldBQGik1Rr7toghP_9m-G6IncuWgFVqdkJRAQicg07IaNF-oUuS2Rl0Tm2WfN26Ixkogm2mpcT6wS0j8EgphlHMbxURfY_cpqRFghV6OYx-VB2qzJagtMQopjs88KiKqlf5K0RVV7OftrORzbu96vnWQ%2Frurl%2F&DFA_BuyId=27978472&DFA_PlacementId=338824961&DFA_AdId=530854592&DFA_CreativeId=168208822&DFA_SiteId=7430412&TC_1=cmmawbu3yol&TC_2=27978472&TC_3=338824961&TC_4=168208822&TC_5=dcmadvertiserid|8391437$dcmcampaignid|27978472$dcmadid|530854592$dcmrenderingid|168645425$dcmsiteid|7430412$dcmplacementid|338824961$customer|Microsoft$dv360auctionid|ct=FR&st=&city=0&dma=0&zp=73100&bw=4&DCM_PlacementID=338824961" + "&edge=" + edgeSupport + "&html5="+ html5Support +"&nr=" + Math.random();
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

     function getInternetExplorerVersion_576499() {
         // Returns the version of Internet Explorer or a -1
         // (indicating the use of another browser).

             var rv = -1; // Return value assumes failure.
             if (navigator.appName == 'Microsoft Internet Explorer') {
                 isIEBrowser_576499=true;
                 var ua = navigator.userAgent;
                 var re  = new RegExp("MSIE ([0-9]{1,}[\.0-9]{0,})");

                 if (re.exec(ua) != null)
                     rv = parseFloat( RegExp.$1 );
             }

             return rv;
         }

      //returns true if ie version is less than 9, say ie6, ie7, ie8
         // -1 for non IE browsers.
         function isIEBrowserWithVersionLessThan9_576499 () {

             browserVersion_576499 = getInternetExplorerVersion_576499();  //-1 for non IE browsers
             if((browserVersion_576499 != -1) && (browserVersion_576499 < 9)) {
                 return true;

             }
             return false;
         }

    //code to detect Edge Features, courtesy  (http://dl.dropboxusercontent.com/u/13483458/test-edge.html)
    var testEle_576499=document.createElement("div_576499");
    function isSupported_576499(a){

        var d=testEle_576499.style,e;
        for(i=0;i<a.length;i++)
            if(e=a[i],d[e]!==void 0)
                return!0;
        return!1
    }

    function supportsRGBA_576499(){

        testEle_576499.cssText="background-color:rgba(150,255,150,.5)";
        if((""+testEle_576499.style.backgroundColor).indexOf("rgba")==0)
            return!0;
        return!1
    }

    var hasTransform_576499=isSupported_576499([
        "transformProperty",
        "WebkitTransform",
        "MozTransform",
        "OTransform",
        "msTransform"
    ]),

    hasSVG_576499=!!document.createElementNS&&!!document.createElementNS("http://www.w3.org/2000/svg","svg").createSVGRect,
    hasRGBA_576499=supportsRGBA_576499(),
    hasJSON_576499=window.JSON&&window.JSON.parse&&window.JSON.stringify,
    readyToPlay=!1;

    function isIEBrowserVersion9_576499() {
        return (isIEBrowser_576499 && (browserVersion_576499 == 9)) ? true : false;
    }

    function isEdgeSupported_576499() {
        if(isIEBrowserVersion9_576499()) {
            return "y";           //hardcoding IE9 edge support.
        }
        if(hasTransform_576499) {
            if(requiresSVG_576499&&!hasSVG_576499)
                return "f";
            return "y";
        }
        return "f";
    }

    function isCanvasSupported_576499(){
      var elem = document.createElement('canvas');
      return !!(elem.getContext && elem.getContext('2d'));
    }

    function isHTML5FeaturesSupported_576499() {
         return (isCanvasSupported_576499()) ? "y" : "f";
    }

    var requiresSVG_576499=false;
    //edge detection code end

    //Edge is not supported in IE 6,7,8. Hence hardcoding edge as not supported for the same.
   // edgeSupport_576499 = (isIEBrowserWithVersionLessThan9_576499()) ? "f" : isHTMLFeaturesSupported_576499(featureArray_576499);
    edgeSupport_576499 = (isIEBrowserWithVersionLessThan9_576499()) ? "f" : isEdgeSupported_576499();
    html5Support_576499 = isHTML5FeaturesSupported_576499();

    initiateNewRequest_576499(edgeSupport_576499, html5Support_576499);
