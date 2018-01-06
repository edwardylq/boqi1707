

// 这是配置文件,path是路径，记住不用写后缀.js,     shim是前者依赖后者

require.config({
    paths:{
        jquery:'../lib/jquery-3.2.1',
        tancc:'../lib/popup/js/zeroModal',
        fangdj:'../lib/bzoom/js/smoothproducts',
        lunbo:'../lib/carousel/js/main',
        common:'../js/common'
    },
    shim:{
        tancc:['jquery'],
        fangdj:['jquery'],
        lunbo:['jquery']
    }
});
