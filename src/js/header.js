require(['config'],function(){
    require(['jquery'],function($){
         // 顶部手机版下面的盒子hover显示效果
            $('.zqsj').mouseover(function(){
               $('.sjb').css('display','block');
               $('.bqb').css('display','none');
               $('.sjb').mouseleave(function(){
                    $('.sjb').css('display','none');
               })
               $('.zhuce').mouseover(function(){
                    $('.sjb').css('display','none');
                 })
            })
            $('.gzbq').mouseover(function(){
                $('.sjb').css('display','none');
                $('.syb').css('display','none');
                $('.bqb').css('display','block');
                $('.bqb').mouseleave(function(){
                     $('.bqb').css('display','none');
               })
            })
            $('.bqsy').mouseover(function(){
               $('.syb').css('display','block');
               $('.bqb').css('display','none');
               $('.syb').mouseleave(function(){
               $('.syb').css('display','none');
               })
            })

            // 置顶代码
            jQuery('.zhiding').click(function(){
                jQuery('html,body').animate({scrollTop:0});
            })

            // 购物车显示隐藏
    })
})