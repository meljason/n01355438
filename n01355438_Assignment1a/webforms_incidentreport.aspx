<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="webforms_incidentreport.aspx.cs" Inherits="n01355438_Assignment1a.incidentreport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Bus Incident Report</title>
</head>
<body>
    <form id="form1" runat="server">
        <section>
            <h1>Bus Incident Report</h1>
            <p>Please complete this form within 24 hours of the event.</p>
        </section>

        <main>
            <section>
                <h2>Driver's information</h2>
                <div>
                    <label>What is the driver's first name?</label>
                    <asp:TextBox runat="server" ID="driver_fname" />
                    <asp:RequiredFieldValidator ErrorMessage="Please enter driver's First Name" ControlToValidate="driver_fname" runat="server" EnableClientScript="true"/>
                </div>

                <div>
                    <label>What is the driver's last name?</label>
                    <asp:TextBox runat="server" ID="driver_lname"/>
                    <asp:RequiredFieldValidator ErrorMessage="Please enter driver's Last Name" ControlToValidate="driver_lname" runat="server" EnableClientScript="true"/>
                </div>

                <div>
                    <label>What is the driver's age?</label>
                    <asp:TextBox runat="server"  ID="driver_age" TextMode="Number"/>
                    <asp:RangeValidator Type="integer" ErrorMessage="Driver's age cannot be below 18 and over 100" MaximumValue="100" MinimumValue="18" ControlToValidate="driver_age" runat="server" EnableClientScript="true"/>
                </div>

                <div>
                    <label>What is the driver's email address?</label>
                    <asp:TextBox runat="server" ID="drivers_email"/>
                    <asp:RegularExpressionValidator ErrorMessage="Email is invalid" ControlToValidate="drivers_email" runat="server" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"/> 
                    <!-- Reference for RegularExpresssion
                        Author: Kudvenkat
                        Site: https://www.youtube.com/watch?v=uokHJ1K90pA
                        Date accessed: Nov 24, 2012
                        The purpose of using this reg exp is because the format of an email address is alphanumeric followed by @ sign and ends with a . and a domain
                        -->
                </div>

                <fieldset>
                    <legend>Gender</legend>
                    <asp:RadioButtonList runat="server" ID="gender_selection">
                        <asp:ListItem Text="Male" />
                        <asp:ListItem Text="Female"/>
                    </asp:RadioButtonList>  
                    <asp:RequiredFieldValidator ErrorMessage="Gender field is mandatory" ControlToValidate="gender_selection" runat="server" />
                </fieldset>
            </section>

            <section>
                <h2>Incident Information</h2>

                <fieldset>
                    <legend>Location Of the incident</legend>

                    <div>
                        <label>Address:</label>
                        <asp:TextBox runat="server" ID="incident_address"/>
                        <asp:RequiredFieldValidator ErrorMessage="Please enter an address" ControlToValidate="incident_address" runat="server" EnableClientScript="true"/>
                    </div>

                    <div>
                        <label>City:</label>
                        <asp:TextBox runat="server" ID="incident_city"/>
                        <asp:RequiredFieldValidator ErrorMessage="Please enter a city" ControlToValidate="incident_city" runat="server" EnableClientScript="true"/>
                    </div>

                    <div>
                        <label>Province:</label>
                        <asp:DropDownList runat="server" ID="incident_province">
                            <asp:ListItem Text="Alberta" />
                            <asp:ListItem Text="Ontario" />
                            <asp:ListItem Text="British Columbia" />
                            <asp:ListItem Text="Saskatchewan" />
                            <asp:ListItem Text="Prince Edward Island" />
                            <asp:ListItem Text="Nova Scotia" />
                            <asp:ListItem Text="Newfoundland and Labrador" />
                            <asp:ListItem Text="Manitoba" />
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ErrorMessage="Province field is mandatory" ControlToValidate="incident_province" runat="server" EnableClientScript="true"/>
                    </div>

                    <div>
                        <label>Zip:</label>
                        <asp:TextBox runat="server" ID="incident_zip"/>
                        <asp:RequiredFieldValidator ErrorMessage="Zip field is mandatory" ControlToValidate="incident_zip" runat="server" EnableClientScript="true"/>
                    </div>
                </fieldset>

                <div>
                    <label>Brief Description of the incident:</label>
                    <asp:TextBox runat="server" TextMode="MultiLine" id="incident_description" Columns="55" Rows="5"/>
                    <asp:RequiredFieldValidator ErrorMessage="Please provide a description of the incident" ControlToValidate="incident_description" runat="server" EnableClientScript="true"/>
                </div>

                <fieldset>
                    <legend>General Questions</legend>
                    <div>
                        <label>Were there any witnesses?</label>
                        <asp:RadioButtonList runat="server" ID="incident_witness_selection">
                            <asp:ListItem Text="Yes" />
                            <asp:ListItem Text="No" />
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ErrorMessage="Witness question is mandatory" ControlToValidate="incident_witness_selection" runat="server" />
                    </div>

                    <div>
                        <label>Is anyone injured?</label>
                        <asp:RadioButtonList runat="server" ID="incident_injury_selection">
                            <asp:ListItem Text="Yes" />
                            <asp:ListItem Text="No" />
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ErrorMessage="Injury question is mandatory" ControlToValidate="incident_injury_selection" runat="server" />
                    </div>

                    <div>
                        <label>Was medical treatment provided?</label>
                        <asp:RadioButtonList runat="server" ID="incident_medical_selection">
                            <asp:ListItem Text="Yes" />
                            <asp:ListItem Text="No" />
                        </asp:RadioButtonList>
                        <asp:RequiredFieldValidator ErrorMessage="Medical question is mandatory" ControlToValidate="incident_medical_selection" runat="server" />
                    </div>

                    <div>
                        <label>What actions did you take?</label>
                        <asp:CheckBoxList runat="server" ID="actions_taken">
                            <asp:ListItem Text="Call Authority" value="call_authority"/>
                            <asp:ListItem Text="Call Ambulance" value="call_ambulance"/>
                            <asp:ListItem Text="Call Firefighters" value="call_firefighters"/>
                            <asp:ListItem Text="Evacuate Passengers" value="evacuate_passengers"/>
                            <asp:ListItem Text="Make sure everybody is safe" value="everybody_safe"/>
                        </asp:CheckBoxList>
                    </div>
                </fieldset>
            </section>

            <section>
                <asp:ValidationSummary runat="server" ShowSummary="true"/>
            </section>

            <section>
                <div>
                   <asp:CheckBox Text="Check this box if you have provided information that are accurate and that you agree that this will be used for investigation purposes." runat="server" value="form_submission_acceptance"/>
                </div>

                <div id="incident_summary" runat="server"></div>
                
                <div>
                    <asp:Button Text="Submit" runat="server" />
                </div>
            </section>
        </main>
    </form>
</body>
</html>
