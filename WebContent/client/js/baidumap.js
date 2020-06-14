var map = new BMap.Map("baiduMap");//在百度地图容器中创建一个地图
var point = new BMap.Point(112.712592, 23.347976);//定义一个中心点坐标
map.centerAndZoom(point,13);//设定地图的中心点和坐标并将地图显示在地图容器中

map.enableScrollWheelZoom();//启用地图滚轮放大缩小
map.addControl(new BMap.NavigationControl());//向地图中添加缩放控件

map.enableKeyboard();//启用键盘上下左右键移动地图

 
//向地图中添加文字标注
var label = new BMap.Label("This is my hometown,SiHui.",{point:new BMap.Point(112.712592, 23.347976),offset:new BMap.Size(3,-6)});
map.addOverlay(label);
label.setStyle({
borderColor:"#999"});

    
 