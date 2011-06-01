//------------------------------------------------------------------------
// ���[���I�[�o�[�摜�؂�ւ�

function smartRollover() {
	if(document.getElementsByTagName) {
		var images = document.getElementsByTagName("img");

		for(var i=0; i < images.length; i++) {
			if(images[i].getAttribute("src").match("_off."))
			{
				images[i].onmouseover = function() {
					this.setAttribute("src", this.getAttribute("src").replace("_off.", "_on."));
				}
				images[i].onmouseout = function() {
					this.setAttribute("src", this.getAttribute("src").replace("_on.", "_off."));
				}
			}
		}
	}
}

if(window.addEventListener) {
	window.addEventListener("load", smartRollover, false);
}
else if(window.attachEvent) {
	window.attachEvent("onload", smartRollover);
}

//------------------------------------------------------------------------
// �e�L�X�g�{�b�N�X������

function cText(obj){
if(obj.value==obj.defaultValue){
obj.value="";
obj.style.color="#000";
}
}

function sText(obj){
if(obj.value==""){
obj.value=obj.defaultValue;
obj.style.color="#999";
}
}

//------------------------------------------------------------------------
// �u���E�U���C�h960�`1024�ŉ��X�N���[���o�[����

window.onload = setScreenStyle; 
window.onresize = setScreenStyle;			

function setScreenStyle(){
	var fmt = document.documentElement.clientWidth;
	var htmlTag = document.documentElement;
	if (fmt>=960){
		if (fmt<=1024){
			htmlTag.style.overflowX = 'hidden';
		}
	}else{
		htmlTag.style.overflowX = 'scroll';
	}
};
