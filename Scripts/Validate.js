

function validate_email(string)              //====注册表单验证======
{
    var str = this.document.getElementById(string).value;
    var apos = str.indexOf('@');
    var dotpos = str.lastIndexOf('.');
    if (apos<1||dotpos-apos<2) 
    {
    return false;
    }
    else 
    {
    return true;
    }

}


function validate_username() {
    var str = this.document.getElementById('RegName').value;
        if ( str==null || str=="") {
            return false;
        }
        else {
            return true;
        }

}


function validate_userpw(field) {
    var str = this.document.getElementById('RegPW').value;
        if (str == null || str=="") {
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
    document.getElementById('changelabel2').firstChild.innerText = '请输入格式正确的email！';
    document.getElementById('changelabel4').firstChild.innerText = '示例：abc';
    document.getElementById('changelabel6').firstChild.innerText = '请使用较复杂密码';
}
function writelabel4() {
    document.getElementById('changelabel4').firstChild.style.color = '#c73232';
    document.getElementById('changelabel2').firstChild.style.color = '#aaa';
    document.getElementById('changelabel6').firstChild.style.color = '#aaa';
    document.getElementById('changelabel2').firstChild.innerText = '示例：abc@abc.com';
    document.getElementById('changelabel6').firstChild.innerText = '请使用较复杂密码';
    document.getElementById('changelabel4').firstChild.innerText = '用户名不可为空！';
}
function writelabel6() {
    document.getElementById('changelabel6').firstChild.style.color = '#c73232';
    document.getElementById('changelabel2').firstChild.style.color = '#aaa';
    document.getElementById('changelabel4').firstChild.style.color = '#aaa';
    document.getElementById('changelabel2').firstChild.innerText = '示例：abc@abc.com';
    document.getElementById('changelabel6').firstChild.innerText = '密码不可为空！';
    document.getElementById('changelabel4').firstChild.innerText = '示例：abc';
}


function CheckForm()
{

    if (validate_email('RegMail') == false)
    { this.document.getElementById('RegMail').focus(); writelabel2(); return false; }
    if (validate_username('RegName') == false)
    { this.document.getElementById('RegName').focus();writelabel4(); return false; }
    if (validate_userpw('RegPW') == false)
    { this.document.getElementById('RegPW').focus(); writelabel6(); return false; }

}

function CheckDelete() {                        //====删除课程确认======
        if (confirm("真的要删除此课程吗？") == false)
        {return false; }
}

function CheckExit() {                          //====退出确认======
        if (confirm("确定要退出吗？") == false)
        { return false; }
}