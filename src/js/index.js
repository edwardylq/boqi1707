
require(['config'],function(){
    require(['jquery','lunbo'],function($){
         // 载入远程 HTML 文件代码并插入至 DOM 中。
          $('header').load('./html/header.html',function(){

             $('.ht1 li a').eq(0).attr({ href: "../html/login.html"});
             $('.ht1 li a').eq(1).attr({ href: "../html/reg.html"});
             $('.car a').attr({ href: "../html/car.html"});

             var logi = location.search;
             if(logi =="?ok"){
              // console.log(666);
              // 删除注册入口
              var $ddl =  $('.ht1 ul').children('li');
              $ddl.eq(1).remove();

              // 更改登录入口为"我的账户"
              $ddl.eq(0).find('a').text('我的账户');
              $ddl.eq(0).find('a').attr({href:'html/myzone.html'});
             }
          });
          $('footer').load('./html/footer.html');

          // 轮播图插件代码开始----------
          var banner = new FragmentBanner({
                //选择容器 必选
               container : "#banner1",

               //图片集合 必选
               imgs : ['img/ll1.jpg','img/ll5.jpg','img/ll5.jpg','img/ll5.jpg',         'img/b5.jpg','img/b6.jpg'],

               //容器的大小 可选
               size : { width : 800, height : 360},

               //行数与列数 可选
               grid : { line : 12,list : 14},
               index: 0,//图片集合的索引位置 可选
               type : 2,//切换类型 1 ， 2 可选
               boxTime : 5000,//小方块来回运动的时长 可选
               fnTime : 10000//banner切换的时长 可选
          });    
             // 轮播图插件代码结束--------  
            
            // 火爆商品数据ajax加载mysql（点击事件）
            var pageNo = 1;
            function fs(pageNo){
                 $.ajax({
                    type:'GET',
                    url:'api/hot.php',
                    data:{'cate':'hotgoods','pageNo':pageNo},
                    success:function(ppp){
                      $('.hcan')[0].innerHTML += ppp.data.map(function(item){
                       return `<div class="hbgoods" data-id = '${item.id}'>
                                <img src="${item.imgurl}" height="120" width="120" alt="     " />
                                 <p class='hp'>${item.details}</p>
                                 <p><span>${item.price}</span>已售35699</p>
                               </div>` 
                      }).join('');
                      // 点击商品时传送id进入商品详情页
                      $('.hbgoods').click(function(){
                        location.href = 'html/goods.html'+'?id='+$(this).attr('data-id');
                      })
                    },dataType:'json'
                  })
              }
            fs(pageNo);

            $('.hyp').click(function(){
              // 先清空数据
              $('.hcan')[0].innerHTML = '';
              pageNo++;
              if(pageNo>3){
                pageNo = 1;
                console.log(pageNo)
              }
              fs(pageNo);
             
            })

            // 狗狗商品系列
            $('.ggc1 .cango').eq(0).show().siblings('.cango').hide();
            $.ajax({
                    type:'GET',
                    url:'api/index.php',
                    data:{'pageNo':'1'},
                    success:function(ppp){
                        $('.ggc1 .cango').first()[0].innerHTML = ppp.data.map(function(item){
                          return `<div class="cgoods">
                                    <img src="${item.imgurl}" height="20" width="170" alt="" />
                                    <p class='cpp'>${item.details}</p>
                                    <p><span>${item.price}</span>已售35699</p>
                                  </div>`
                        }).join('');
                    },dataType:'json'
            })

            $('.ggsp1 ul').on('click','li',function(){
              var idx = $(this).index() + 1;
              $.ajax({
                    type:'GET',
                    url:'api/index.php',
                    data:{'pageNo':idx},
                    success:function(ppp){
                      // 先清空
                      $('.ggc1 .cango').eq($(this).index())[0].innerHTML = '';
                      $('.ggc1 .cango').eq($(this).index())[0].innerHTML = ppp.data.map(function(item){
                          return `<div class="cgoods">
                                    <img src="${item.imgurl}" height="20" width="170" alt="" />
                                    <p class='cpp'>${item.details}</p>
                                    <p><span>${item.price}</span>已售35699</p>
                                  </div>`
                      }).join('');
                      console.log($(this).index())
                      $('.ggc1 .cango').eq($(this).index()).slideDown('slow').siblings('.cango').hide();
                        console.log(122)
                    }.bind(this),dataType:'json'
                  })
            })
            
            // 猫猫商品系列
            $('.ggc2 .cango').eq(0).show().siblings('.cango').hide();
            $.ajax({
                    type:'GET',
                    url:'api/index.php',
                    data:{'pageNo':'1'},
                    success:function(ppp){
                        $('.ggc2 .cango').first()[0].innerHTML = ppp.data.map(function(item){
                          return `<div class="cgoods">
                                    <img src="${item.imgurl}" height="20" width="170" alt="" />
                                    <p class='cpp'>${item.details}</p>
                                    <p><span>${item.price}</span>已售35699</p>
                                  </div>`
                        }).join('');
                    },dataType:'json'
            })

            $('.ggsp2 ul').on('click','li',function(){
              var idx = $(this).index() + 1;
              $.ajax({
                    type:'GET',
                    url:'api/index.php',
                    data:{'pageNo':idx},
                    success:function(ppp){
                      // 先清空
                      $('.ggc2 .cango').eq($(this).index())[0].innerHTML = '';
                      $('.ggc2 .cango').eq($(this).index())[0].innerHTML = ppp.data.map(function(item){
                          return `<div class="cgoods">
                                    <img src="${item.imgurl}" height="20" width="170" alt="" />
                                    <p class='cpp'>${item.details}</p>
                                    <p><span>${item.price}</span>已售35699</p>
                                  </div>`
                      }).join('');
                      console.log($(this).index())
                      $('.ggc2 .cango').eq($(this).index()).slideDown('slow').siblings('.cango').hide();
                        console.log(122)
                    }.bind(this),dataType:'json'
                  })
            })

    })
})