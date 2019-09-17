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
                </div>

                <div>
                    <label>What is the driver's last name?</label>
                    <asp:TextBox runat="server" ID="driver_lname"/>
                </div>

                <div>
                    <label>What is the driver's age?</label>
                    <asp:TextBox runat="server"  TextMode="Number"/>
                </div>

                <fieldset>
                    <legend>Gender</legend>
                    <asp:RadioButtonList runat="server" ID="gender_selection">
                        <asp:ListItem Text="Male" />
                        <asp:ListItem Text="Female"/>
                    </asp:RadioButtonList>  
                </fieldset>
            </section>

            <section>
                <h2>Incident Information</h2>

                <fieldset>
                    <legend>Location Of the incident</legend>

                    <div>
                        <label>Address:</label>
                        <asp:TextBox runat="server" ID="incident_address"/>
                    </div>

                    <div>
                        <label>City:</label>
                        <asp:TextBox runat="server" ID="incident_city"/>
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
                    </div>

                    <div>
                        <label>Zip:</label>
                        <asp:TextBox runat="server" ID="incident_zip"/>
                    </div>
                </fieldset>

                <div>
                    <label>Brief Description of the incident:</label>
                    <asp:TextBox runat="server" TextMode="MultiLine" id="incident_description" Columns="55" Rows="5"/>
                </div>

                <fieldset>
                    <legend>General Questions</legend>
                    <div>
                        <p>Were there any witnesses?</p>
                        <asp:RadioButtonList runat="server" ID="witness_selection">
                            <asp:ListItem Text="Yes" />
                            <asp:ListItem Text="No" />
                        </asp:RadioButtonList>
                    </div>

                    <div>
                        <p>Is anyone injured?</p>
                        <asp:RadioButtonList runat="server" ID="injury_selection">
                            <asp:ListItem Text="Yes" />
                            <asp:ListItem Text="No" />
                        </asp:RadioButtonList>
                    </div>

                    <div>
                        <p>Was medical treatment provided?</p>
                        <asp:RadioButtonList runat="server" ID="medical_selection">
                            <asp:ListItem Text="Yes" />
                            <asp:ListItem Text="No" />
                        </asp:RadioButtonList>
                    </div>

                    <div>
                        <p>What actions did you take?</p>
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
                <div>
                    <asp:CheckBox Text="Check this box if you have provided information that are accurate and that you agree that this will be used for investigation purposes." runat="server" value="form_submission_acceptance"/>
                </div>
                
                <div>
                    <asp:Button Text="Submit" runat="server" />
                </div>
            </section>
        </main>
    </form>
</body>
</html>
