require(['config'],function(){
    require(['jquery','tancc','fangdj'],function($,tancc){
         // 载入远程 HTML 文件代码并插入至 DOM 中。
            $('header').load('header.html');
            $('footer').load('footer.html');

            // 弹出层效果:授权书
            $('.power').click(function(){
                tancc.show(
                    {
                    width:'510px',
                    height:'616px',
                    transition:true,
                    opacity:1,
                    esc:true

                    }
                );
                $('.zeromodal-body').css({background:'url(../img/shouquan.png)'});
            })

            // 根据列表页传送的ID发起ajax请求后台获取对应数据写入页面
            var params = (location.search);
            var id = params.slice(4);
            $.ajax({
                type:'GET',
                url:'../api/goods.php',
                data:{'id':id},
                success:function(data){
                    var too = JSON.parse(data);
                    console.log(too)
                    var arr = too[2].split('&');
                    // console.log(arr)
                    $('.c1')[0].innerHTML=
                        `<a href=${arr[4]} class='datu1'><img src=${arr[0]} class='xiaotu1' alt=""></a>
                        <a href=${arr[4]} class='datu2'><img src=${arr[1]}  class='xiaotu2' alt=""></a>
                        <a href=${arr[4]} class='datu3'><img src=${arr[2]}  class='xiaotu3' alt=""></a>
                        <a href=${arr[4]} class='datu3'><img src=${arr[3]}  class='xiaotu3' alt=""></a>`
                  
        
                    // 商品放大镜效果
                    $('.sp-wrap').smoothproducts();

                    // 详情介绍部分代码
                    // 初始化
                    $('.ct').first().show().siblings('.ct').hide();
                    $('.tab').on('click','.ta',function(){
                        $('.ta').css({background:'#F3F3F3','border-top':'none'});
                        $(this).css({background:'#fff','border-top':'2px solid #EF5533'});
                        var idx = $(this).index();
                        $('.ct').eq(idx).slideDown().siblings('.ct').hide();
                    })
                    for(var i=0;i<5;i++){
                        var dog = $('<img/>').attr({ src: arr[i+5]});
                        $('.ct1').append(dog);
                    }

                    // 加入购物车时候商品传入car数据库
                    $('.jcar').click(function(){
                        $.ajax({
                            type:'GET',
                            url:'http://localhost:1111/api/car.php',
                            data:{
                                'id':id,
                                'imgurl':too[1],
                                "price":too[3],
                                'details':too[5]
                            }
                        })
                    })
            }});      
    })
})