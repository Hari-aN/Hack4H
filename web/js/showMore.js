
        var i = 2;
        function showMore(){
            var catOptions = "";
            catOptions += "<div class='row'>\n\
                <p style='margin-left:10px;'>Family Member "+ i +" Details</p>\n\
                <div class='col input-field s1'>\n\
                    <input name='serialNumber' id='icon_prefix' type='text' class='validate'>\n\
                    <label id='serialNumber' for='icon_prefix'>" + i + " </label>\n\
            </div>\n\
                <div class='col input-field s3'>\n\
                    <input name='mobileNumber' id='icon_prefix' type='text' class='validate'>\n\
                    <label for='icon_prefix'>Name of Family member</label>\n\
                </div>\n\
                <div class='col input-field s1'>\n\
                        <select name='relation'>\n\
                            <option value=''>Relation</option>\n\
                            <option value='01'>Father</option>\n\
                            <option value='02'>Mother</option>\n\
                            <option value='03'>Husband</option>\n\
                            <option value='04'>wife</option>\n\
                            <option value='05'>Son</option>\n\
                            <option value='06'>Daughter</option>\n\
                            <option value='07'>Brother</option>\n\
                            <option value='08'>Sister</option>\n\
                        </select>\n\
                    </div>\n\
                    <div class='col input-field s1'>\n\
                            <select name='memberGender'>\n\
                                <option value=''>Sex</option>\n\
                                <option value='01'>Male</option>\n\
                                <option value='02'>Female</option>\n\
                                <option value='03'>Other</option>\n\
                            </select>\n\
                    </div>\n\
                    <div class='col input-field s1'>\n\
                        <input name='memberAge' id='icon_prefix' type='text' class='validate'>\n\
                        <label for='icon_prefix'>Age</label>\n\
                    </div>\n\
                    <div class='col input-field s3'>\n\
                        <input name='memberAadhar' id='icon_prefix' type='text' class='validate'>\n\
                        <label for='icon_prefix'>Aadhar Card Number</label>\n\
                    </div>\n\
                </div>\n\
            </div>";
            i+=1;
            document.getElementById("memMain").innerHTML += catOptions;
            $('select').material_select();
        }

