using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace n01355438_Assignment1a
{
    public partial class incidentreport : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack)
            {
                Page.Validate();

                if (Page.IsValid)
                {
                    //collecting the variables
                    string driverFirstName = driver_fname.Text;

                    string driverLastname = driver_lname.Text;

                    int driverAge = Convert.ToInt32(driver_age.Text);

                    string driverEmail = drivers_email.Text;

                    string driverGender = gender_selection.SelectedValue;

                    string incidentAddress = incident_address.Text;

                    string incidentCity = incident_city.Text;

                    string incidentProvince = incident_province.Text;

                    string incidentZip = incident_zip.Text;

                    string incidentDescription = incident_description.Text;

                    string incidentWitnessSelection = incident_witness_selection.SelectedValue;

                    string incidentInjurySelection = incident_injury_selection.Text;

                    string incidentMedicalSelection = incident_medical_selection.Text;

                    incident_summary.InnerHtml = "";

                    incident_summary.InnerHtml += "Driver first Name is " + driverFirstName + "<br>";
                    incident_summary.InnerHtml += "Driver Last Name is " + driverLastname + "<br>";
                    incident_summary.InnerHtml += "Driver Age is " + driverAge + "<br>";
                    incident_summary.InnerHtml += "Driver Email is " + driverEmail + "<br>";
                    incident_summary.InnerHtml += "Driver Gender is " + driverGender + "<br>";
                    incident_summary.InnerHtml += "Incident Address is " + incidentAddress + "<br>";
                    incident_summary.InnerHtml += "Incident City is " + incidentCity + "<br>";
                    incident_summary.InnerHtml += "Incident Province is " + incidentProvince + "<br>";
                    incident_summary.InnerHtml += "Incident Zip is " + incidentZip + "<br>";
                    incident_summary.InnerHtml += "Incident Description is " + incidentDescription + "<br>";
                    incident_summary.InnerHtml += "Witness Selection is " + incidentWitnessSelection + "<br>";
                    incident_summary.InnerHtml += "Injury Selection is " + incidentInjurySelection + "<br>";
                    incident_summary.InnerHtml += "Medical Selection is " + incidentMedicalSelection + "<br>";

                    if (incidentInjurySelection == "Yes" && incidentWitnessSelection == "Yes" && incidentMedicalSelection == "Yes")
                    {
                        incident_summary.InnerHtml += "Pending Investigation";

                    } else if (incidentInjurySelection == "No" && incidentWitnessSelection == "No" && incidentMedicalSelection == "No")
                    {
                        incident_summary.InnerHtml += "Resolved";

                    } else if (incidentInjurySelection == "Yes" && incidentWitnessSelection == "Yes" && incidentMedicalSelection == "No")
                    {
                        incident_summary.InnerHtml += "Requires Urgent Attention";

                    } else if (incidentInjurySelection == "Yes" && incidentWitnessSelection == "No" && incidentMedicalSelection == "No")
                    {
                        incident_summary.InnerHtml += "Requires Urgent Attention";

                    } else if (incidentInjurySelection == "No" && incidentWitnessSelection == "Yes" && incidentMedicalSelection == "Yes")
                    {
                        incident_summary.InnerHtml += "Pending Investigation";

                    } else if (incidentInjurySelection == "Yes" && incidentWitnessSelection == "No" && incidentMedicalSelection == "Yes")
                    {
                        incident_summary.InnerHtml += "Pending Investigation";

                    } else if (incidentInjurySelection == "No" && incidentWitnessSelection == "Yes" && incidentMedicalSelection == "No")
                    {
                        incident_summary.InnerHtml += "Pending Investigation";

                    } else
                    {
                        incident_summary.InnerHtml += "Resolved";
                    }

                }
            }

        }
    }
}