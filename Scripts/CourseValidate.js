function validate_course(string) {              //====课程编辑/增加表单验证======
    var str = this.document.getElementById(string).value;
    if ( str == null || str == "") {
            return false;
        }
        else {
            return true;
        }

}



function writelabel2() {
    document.getElementById('changelabel2').firstChild.style.color = '#c73232';
    document.getElementById('changelabel4').firstChild.style.color = '#aaa';
    document.getElementById('changelabel6').firstChild.style.color = '#aaa';
    document.getElementById('changelabel8').firstChild.style.color = '#aaa';
    document.getElementById('changelabel2').firstChild.innerText = '请输入课程名称！';
    document.getElementById('changelabel4').firstChild.innerText = '示例：周三 3-4节';
    document.getElementById('changelabel6').firstChild.innerText = '示例：仙I-206';
    document.getElementById('changelabel8').firstChild.innerText = '示例：10';

}
function writelabel4() {
    document.getElementById('changelabel4').firstChild.style.color = '#c73232';
    document.getElementById('changelabel2').firstChild.style.color = '#aaa';
    document.getElementById('changelabel6').firstChild.style.color = '#aaa';
    document.getElementById('changelabel8').firstChild.style.color = '#aaa';
    document.getElementById('changelabel2').firstChild.innerText = '示例：近代物理';
    document.getElementById('changelabel6').firstChild.innerText = '示例：仙I-206';
    document.getElementById('changelabel4').firstChild.innerText = '上课时间不能为空！';
    document.getElementById('changelabel8').firstChild.innerText = '示例：10';

}
function writelabel6() {
    document.getElementById('changelabel6').firstChild.style.color = '#c73232';
    document.getElementById('changelabel2').firstChild.style.color = '#aaa';
    document.getElementById('changelabel4').firstChild.style.color = '#aaa';
    document.getElementById('changelabel8').firstChild.style.color = '#aaa';
    document.getElementById('changelabel2').firstChild.innerText = '示例：近代物理';
    document.getElementById('changelabel6').firstChild.innerText = '上课地点不能为空！';
    document.getElementById('changelabel4').firstChild.innerText = '示例：周三 3-4节';
    document.getElementById('changelabel8').firstChild.innerText = '示例：10';

}
function writelabel8() {
    document.getElementById('changelabel8').firstChild.style.color = '#c73232';
    document.getElementById('changelabel2').firstChild.style.color = '#aaa';
    document.getElementById('changelabel4').firstChild.style.color = '#aaa';
    document.getElementById('changelabel6').firstChild.style.color = '#aaa';
    document.getElementById('changelabel2').firstChild.innerText = '示例：近代物理';
    document.getElementById('changelabel6').firstChild.innerText = '示例：仙I-206';
    document.getElementById('changelabel4').firstChild.innerText = '示例：周三 3-4节';
    document.getElementById('changelabel8').firstChild.innerText = '请输入一个数字！';

}


function CheckForm(thisform)
{
    with (thisform)
    {
    if (validate_course('CourseName')==false)
    { this.document.getElementById('CourseName').focus(); writelabel2(); return false; }
    if (validate_course('CourseTime') == false)
    { this.document.getElementById('CourseTime').focus(); writelabel4(); return false; }
    if (validate_course('CourseAddress') == false)
    {this.document.getElementById('CourseAddress').focus(); writelabel6(); return false; }
    if (validate_course('CourseMaxPop') == false)
    { this.document.getElementById('CourseMaxPop').focus(); writelabel8(); return false; }


    }
}
function CheckFormNew(thisform) {
    with (thisform) {
        if (validate_course('NewCourseName') == false)
        { this.document.getElementById('NewCourseName').focus(); writelabel2(); return false; }
        if (validate_course('NewCourseTime') == false)
        { this.document.getElementById('NewCourseTime').focus(); writelabel4(); return false; }
        if (validate_course('NewCourseAddress') == false)
        { this.document.getElementById('NewCourseAddress').focus(); writelabel6(); return false; }
        if (validate_course('NewCourseMaxPop') == false)
        { this.document.getElementById('NewCourseMaxPop').focus(); writelabel8(); return false; }


    }
}