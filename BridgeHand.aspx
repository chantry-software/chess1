<%@ Page Title="" Language="C#" MasterPageFile="~/Templates/Enthusiast.master" AutoEventWireup="true" CodeFile="BridgeHand.aspx.cs" Inherits="BridgeHand" %>

<asp:Content ID="Content1" ContentPlaceHolderID="Head1" Runat="Server">

<link href="/CSS/Bridge.css?ver=<%=DateTime.Now.Ticks.ToString()%>" rel="stylesheet" type="text/css" />

    <script src="/JScriptCode/Bridge/Config.js?ver=<%=DateTime.Now.Ticks.ToString()%>" ></script>

    <script src="/JScriptCode/Bridge/GameController.js?ver=<%=DateTime.Now.Ticks.ToString()%>"></script>
    
    <script src="/JScriptCode/Bridge/Model/comCard.js?ver=<%=DateTime.Now.Ticks.ToString()%>"></script>
    <script src="/JScriptCode/Bridge/Model/comContract.js?ver=<%=DateTime.Now.Ticks.ToString()%>"></script>
    <script src="/JScriptCode/Bridge/Model/comPack.js?ver=<%=DateTime.Now.Ticks.ToString()%>"></script>
    <script src="/JScriptCode/Bridge/Model/comHand.js?ver=<%=DateTime.Now.Ticks.ToString()%>"></script>
    <script src="/JScriptCode/Bridge/Model/comGame.js?ver=<%=DateTime.Now.Ticks.ToString()%>"></script>
    <script src="/JScriptCode/Bridge/Model/comMatch.js?ver=<%=DateTime.Now.Ticks.ToString()%>"></script>
    <script src="/JScriptCode/Bridge/Model/bllGameRules.js?ver=<%=DateTime.Now.Ticks.ToString()%>"></script>

    <script src="/JScriptCode/Bridge/View/viewGame.js?ver=<%=DateTime.Now.Ticks.ToString()%>"></script>
    <script src="/JScriptCode/Bridge/View/viewBidding.js?ver=<%=DateTime.Now.Ticks.ToString()%>"></script>
    <script src="/JScriptCode/Bridge/View/viewScoreCard.js?ver=<%=DateTime.Now.Ticks.ToString()%>"></script>

    <script src="/JScriptCode/Bridge/AI/bllBiddingAnalyser.js?ver=<%=DateTime.Now.Ticks.ToString()%>"></script>
    <script src="/JScriptCode/Bridge/AI/bllPlayAnalyser.js?ver=<%=DateTime.Now.Ticks.ToString()%>"></script>

    <script type="text/javascript">

        //Global Controller Variable
        var objGameController;

        function setup() {

            objGameController = new GameController("objGameController", "divCard", true, true, false, true);
            var objGame = objGameController.objMatch.CurrentGame;
            objGame.SetUpBidding();
            objGameController.BiddingLoop();
        }

     </script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <div id="hello">hello</div>
<div id="divCard"></div>
    
    <span>hello from branch I have changed you to branch 2251 </span>

</asp:Content>

