
require(['config'],function(){
    require(['jquery'],function($){
          // 载入远程 HTML 文件代码并插入至 DOM 中。
            $('header').load('header.html',function(){

                // ajax分页加载或懒加载效果
                var pageNo = 1;
                var qty = 12;
                $.ajax({
                    type:'GET',
                    url:'../api/list.php',
                    data:{'goods':'all',
                    'pageNo':pageNo,
                    'qty':qty},
                    success:function(res){
                         // console.log(res);
                        action(res,qty,pageNo);
                }})

                // 分页切换
                $('.ymh').on('click','.yema',function(){
                    pageNo = $(this).text()*1;
                        $.ajax({
                            type:'GET',
                            url:'../api/list.php',
                            data:{'category':'youquanliang',
                            'pageNo':pageNo,
                            'qty':qty},
                            success:function(res){
                                action(res,qty,pageNo);
                        }});
                    // 置顶操作
                    $('body,html').animate({scrollTop:400},'slow');
                });

                // 下一页切换效果
                $('.xyy').click(function(){
                    $('.ymh').children().each(function(idx,item){
                        if($(this).hasClass('active')){
                            pageNo = $(this).text()*1+1;
                            $.ajax({
                                type:'GET',
                                url:'../api/list.php',
                                data:{'category':'youquanliang',
                                'pageNo':pageNo,
                                'qty':qty},
                                success:function(res){
                                action(res,qty,pageNo);
                            }});
                            // 置顶操作
                            $('body,html').animate({scrollTop:400},'slow');
                        }
                    })
                })
            

                var $ul = $('.cart-list ul');
                $('.goodcan').on('click','.cheche',function(){
                    var current_id = $(this).closest('.pro').attr('data-id');
                    var imgurl  = $(this).closest('.pro').find('img').attr('src');
                    var price  = $(this).closest('.pro').find('.price').text().slice(1);
                    var details  = $(this).closest('.pro').find('.biaoti').text();
                    // 当前数据录入保存至car数据库
                    $.ajax({
                        type:"GET",
                        url:"../api/car.php",
                        data:{
                            'id':current_id,
                            'imgurl':imgurl,
                            'price':price,
                            'details':details
                        }
                    })

                    // 飞入购物车效果
                    var $li = $(this).closest('li');
                    var $img =  $li.find('img');
                    $cloneImg = $img.clone();
                    $cloneImg.appendTo('body');
    
                    // 定位到商品图的位置
                    $cloneImg.css({
                        'position':'absolute',
                        'width':'200px',
                        'left':$img.offset().left,
                        'top':$img.offset().top
                    });
                    var $car = $('.cart-list');
                    $cloneImg.stop().animate({width:20},function(){
                        $cloneImg.stop().animate({height:20},function(){
                            $cloneImg.stop().animate({left:$ul.offset().left},function(){
                                $cloneImg.stop().animate({top:$ul.offset().top,width:60,height:60},function(){
                                $cloneImg.remove();

                                // 当图片飞进ul时候复制一份商品信息(包括图片、价格、标题)进去
                                $clonetu = $li.find('img').clone();
                                $clonePrice = $li.find('.price').text();
                                $cloneText = $li.find('.biaoti').text();

                                // 更改默认P的内容
                                $('.cart-list .chuship').text('已加入购物车中的商品:')
 
                                 // var arr = [{tu:$clonetu,price:$clonePrice,details:$cloneText}]
                                // $ul.html(arr.map(function(item){
                                //      return `<li class='copyli clearfix'>
                                //                  <div class='ktl'>${item.tu}</div>
                                //                  <div class='ktr'>
                                //                          <p class='cpxx'>${item.details}</p>
                                //                          <p class='cprice'>${item.price}</p>
                                //                          <span class='btn-close'>&time;</span>
                                //                  </div>
                                //              </li>`
                                // }).join(''))
                                // 生成一个新的li,复制预留购物车li的样式
                                var $xli = $('<li/>').addClass('copyli clearfix');
                                var $ktl = $('<div/>').addClass('ktl');
                                var $ktr = $('<div/>').addClass('ktr');
                                var $p1 = $('<p/>').addClass('cpxx');
                                var $p2 = $('<p/>').addClass('cprice');
 
                                // 将商品信息插入到盒子中
                                $ktl.html( $clonetu).appendTo($xli);
                                $p1.text($cloneText).appendTo($ktr);
                                $p2.text($clonePrice).appendTo($ktr);
 
                                 // 删除按键生成，插入到car里
                                $('<span/>').html('&times;').addClass('btn-close').appendTo($ktr);
                                $ktr.appendTo($xli);
                                $xli.appendTo($ul);
                                });
                            });
                        });
                    });
                 })
        
                 // 删除事件
                 $('.cart-list').on('click','.btn-close',function(){
                 $(this).closest('.copyli').remove();
                 // 删除判断,如果删完产品，初始P的内容更改
                 if($('.carul').height()<20){
                     $('.cart-list .chuship').text('购物车还是空的，赶紧给爱宠挑点什么吧！');
                 }
                 })     
            });

            // 封装ajax请求成功后的回调函数内容
            function action(res,qty,pageNo){
                 // 将商品写入列表页
                var xinxi = JSON.parse(res);
                // 添加前先清空内容
                $('.goodul')[0].innerHTML = '';
                $('.goodul')[0].innerHTML= xinxi.data.map(function(item,idx,arr){
                        return `<li class="pro" data-id= "${item.id}">
                                    <div class='jian'>
                                    <img src="${item.imgurl}" height="214" width="214" alt="" />
                                    <p class="price">￥${item.price}</p>
                                    <p class="biaoti">${item.details}</p>
                                    <p class="yyxx">已售377422<span class='yipin'>已有<span class="chenghs">1634</span>人评价</span></p>
                                    </div>
                                    <div class="buyit clearfix">
                                        <div class="cheche fl"><i class='iconfont icon-gouwuchekong'></i>加入购物车</div>
                                        <div class="shoucang fl"><i class='iconfont icon-shoucang'></i>收藏</div>
                                    </div>
                                </li>`
                }).join('');

                // 生成商品总数
                $('.all').text(xinxi.total);
                // 生成页码
                var page_len = Math.ceil(xinxi.total/qty);
                $('.ymh').html('');
                for(var i=0;i<page_len;i++){
                        var mh_span = $('<span/>').text(i+1).addClass('yema');
                        if(pageNo === i+1){
                            mh_span.addClass('active');
                        }
                        $('.ymh').append(mh_span);
                }

                 // 点击商品进入详情页:传id详情页根据id来请求对应商品数据
                $('.jian').click(function(){
                    console.log(666)
                    var id = $(this).parent('.pro').attr('data-id');
                    location.href = 'goods.html'+'?id='+id;
                })
            }
            
        
             // 载入远程 HTML 底部文件代码并插入至 DOM 中。
            $('footer').load('footer.html');   
            // 左侧商品菜单手风琴效果
            // 隐藏其他的cont
            $('.accordion').children('.cont').slice(1).hide();
            // 点击事件
            $('.accordion').on('click','h4',function(){
                    console.log($(this))
                    $(this).next().slideDown(300).siblings('.cont').slideUp(300);
            })
            // 右栏产品菜单伸缩效果(回调函数触发效果)
            $('.shouqi').mouseenter(function(){
                        if($('.shouqi').text() === "收起"){
                            $('.l4').css({'border-color':'#EE5533'});
                            $(this).mouseleave(function(){
                                $('.l4').css({'border-color':'#F3F3F3'})
                            });
                            $(this).click(function(){
                                $('.sq1').stop().slideUp(900);
                                $('.sq2').stop().slideUp(900);
                                $('.sq3').stop().slideUp(900);
                                $(this).text('更多');
                                $('.xia').css({ 'background':'url(../img/ivan.fw.png) no-repeat -489px -181px'})
                            });
                        }

                      // 列表页中部内容产品菜单展开
                        else if($('.shouqi').text() === "更多"){
                            $('.l3qx').css({'border-color':'#EE5533'});
                            $(this).mouseleave(function(){
                                $('.l3qx').css({'border-color':'#F3F3F3'})
                            });
                            $(this).click(function(){
                                $('.l3qx').css({'border-color':'#F3F3F3'})
                                $('.sq1').stop().slideDown(900,function(){
                                $('.sq2').stop().slideDown(600);
                                $('.sq3').stop().slideDown(2000);
                                })
                        
                                $(this).text('收起');
                                $('.xia').css({ 'background':'url(../img/ivan.fw.png) no-repeat -265px -186px'})
                            });
                        }
            })  
    })
})