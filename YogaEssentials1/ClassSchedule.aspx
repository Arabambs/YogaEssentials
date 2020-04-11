<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ClassSchedule.aspx.cs" Inherits="YogaEssentials1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <form method="post" action="" onSubmit="return validateForm();">
<div style="width: 400px;">
</div>
<div style="padding-bottom: 18px;font-size : 24px;">Class Scheduling</div>
<div style="padding-bottom: 18px;font-size : 18px;">We would be glad to have you at our classes!</div>
<div style="padding-bottom: 18px;">Name<span style="color: red;"> *</span><br/>
<input type="text" id="data_3" name="data_3" style="width : 400px;" class="form-control"/>
</div>
<div style="padding-bottom: 18px;">Phone<br/>
<input type="text" id="data_4" name="data_4" style="width : 400px;" class="form-control"/>
</div>
<div style="padding-bottom: 18px;">Email<br/>
<input type="text" id="data_5" name="data_5" style="width : 400px;" class="form-control"/>
</div>
<div style="padding-bottom: 18px;">Date<span style="color: red;"> *</span><br/>
<input type="text" id="data_6" name="data_6" style="width : 250px;" class="form-control"/>
</div>
<script src="" type="text/javascript"></script>
<link href="" rel="stylesheet" type="text/css" />
<script type="text/javascript">new Pikaday({ field: document.getElementById('data_6') });</script>
<div style="padding-bottom: 18px;">Time<span style="color: red;"> *</span><br/>
<input type="text" id="data_7" name="data_7" style="width : 250px;" class="form-control"/>
</div>
<div style="padding-bottom: 18px;">Number of days per week<span style="color: red;"> *</span><br/>
<select id="data_8" name="data_8" style="width : 250px;" class="form-control"><option>1</option>
<option>2</option>
<option>3</option>
<option>4</option>
<option>5</option>
<option>6</option>
<option>7</option>
<option>8</option>
<option>9</option>
<option>10</option>
<option>10+ (Specify in Comments)</option>
</select>
</div>
<div style="padding-bottom: 18px;">Comments / Additional Requests<br/>
<textarea id="data_9" false name="data_9" style="width : 400px;" rows="6" class="form-control"></textarea>
</div>
<div style="padding-bottom: 18px;"><input name="skip_Submit" value="Submit" type="submit"/></div>
<div>
<div style="float:right"><a href="" id="lnk100" title="form to email">form to email</a></div>
<script src="" type="text/javascript"></script>
</div>
</form>

<script type="text/javascript">
function validateForm() {
if (isEmpty(document.getElementById('data_3').value.trim())) {
alert('Name is required!');
return false;
}
if (!validateEmail(document.getElementById('data_5').value.trim())) {
alert('Email must be a valid email address!');
return false;
}
if (isEmpty(document.getElementById('data_6').value.trim())) {
alert('Date is required!');
return false;
}
if (isEmpty(document.getElementById('data_7').value.trim())) {
alert('Time is required!');
return false;
}
return true;
}
function isEmpty(str) { return (str.length === 0 || !str.trim()); }
function validateEmail(email) {
var re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,15}(?:\.[a-z]{2})?)$/i;
return isEmpty(email) || re.test(email);
}
</script>
</asp:Content>
