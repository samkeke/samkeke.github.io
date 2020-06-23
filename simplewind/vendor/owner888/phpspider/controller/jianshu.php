<?php
// 严格开发模式
error_reporting( E_ALL );
ini_set("memory_limit", "1024M");
// 永不超时
ini_set('max_execution_time', 0);
set_time_limit(0);
require_once __DIR__ . '/../autoloader.php';
use phpspider\core\phpspider;
use phpspider\core\db;
use phpspider\core\selector;

/* Do NOT delete this comment */
/* 不要删除这段注释 */

$configs = array(
    'name' => '简书用户爬虫',
    'log_show' => true,
    'tasknum' => 1,
    'max_try' => 5,
    'interval' => 300,
//    'multiserver' => true,
//    'save_running_state' => true,
    //爬取的域名列表
    'domains' => array(
        'www.jianshu.com',
        'jianshu.com',
    ),
    'queue_config' => array(
        'host'      => '127.0.0.1',
        'port'      => 6379,
        'pass'      => '',
        'db'        => 4,
        'prefix'    => 'phpspider',
        'timeout'   => 30,
    ),
    //抓取的起点
    'scan_urls' => array(
        'https://www.jianshu.com/recommendations/users?page=\d+'
    ),
    //列表页实例
    'list_url_regexes' => array(
//        "https://www.jianshu.com/recommendations/users?page=\d+",
    ),
    //内容页实例 要爬取的页面
    //  \d+  指的是变量
    'content_url_regexes' => array(
        "https://www.jianshu.com/users/\d+",
    ),
    'user_agent' => array(
        "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/52.0.2743.116 Safari/537.36",
        "Mozilla/5.0 (iPhone; CPU iPhone OS 9_3_3 like Mac OS X) AppleWebKit/601.1.46 (KHTML, like Gecko) Version/9.0 Mobile/13G34 Safari/601.1",
        "Mozilla/5.0 (Linux; U; Android 6.0.1;zh_cn; Le X820 Build/FEXCNFN5801507014S) AppleWebKit/537.36 (KHTML, like Gecko)Version/4.0 Chrome/49.0.0.0 Mobile Safari/537.36 EUI Browser/5.8.015S",
    ),
    //爬虫爬取网页所使用的伪IP。随机伪造IP，用于破解防采集
    'client_ip' => array(
        '192.168.0.3',
        '192.168.0.4',
        '192.168.0.5',
    ),
    'fields' => array(
        array(
            'name' => "title",//用户名称
            'selector' => "//div[@class='title']//a",
            'required' => true,
        ),
        array(
            'name' => "picture",//头像
            'selector' => "//a[@class='avatar']//img",
            'required' => true,
        ),
        array(
            'name' => "follow",//关注人数
            'selector' => "//div[@class='info']//ul//li[1]//p",
            'required' => true,
        ),
        array(
            'name' => "fans",//粉丝
            'selector' => "//div[@class='info']//ul//li[2]//p",
            'required' => true,
        ),
        array(
            'name' => "article",//文章数量
            'selector' => "//div[@class='info']//ul//li[3]//p",
            'required' => true,
        ),
        array(
            'name' => "word",//字数
            'selector' => "//div[@class='info']//ul//li[4]//p",
            'required' => true,
        ),
        array(
            'name' => "like",//收货喜欢
            'selector' => "//div[@class='info']//ul//li[5]//p",
            'required' => true,
        ),
        array(
            'name' => "money",//简书砖
            'selector' => "//div[@class='info']//ul//li[6]//p",
            'required' => true,
        ),
        array(
            'name' => "tags",//用户标签
            'selector' => "//ul[@class='list user-dynamic']",
            'required' => true,
        ),
        array(
            'name' => "introduce",//个人介绍
            'selector' => "//div[@class='js-intro']",
            'required' => true,
        ),
        array(
            'name' => "spiderUrl",//爬虫地址
        ),
    ),
);

$spider = new phpspider($configs);

$spider->on_start = function ($spider)
{
    // 生成列表页URL入队列
    for ($i = 1; $i <= 1000; $i++)
    {
        $url = "https://www.jianshu.com/recommendations/users?page={$i}";
        $spider->add_scan_url($url);
    }
};

//开始爬取
$spider->on_status_code = function($status_code, $re_url, $content, $phpspider){

    return $content;
};

//爬取的数据处理
$spider->on_extract_field = function($fieldname, $data , $page)
{
    if($fieldname == 'picture'){
        $data = sprintf("https://%s" , ltrim($data , '//'));
    }elseif ($fieldname == 'tags'){
        $tags = array_filter(explode('</li>' , $data));
        if(!empty($tags)){
            foreach ($tags as &$val){
                $val = trim(strip_tags($val));
            }
        }
        $data = implode("," , $tags);//组合标签
    }elseif ($fieldname == 'introduce'){
        $data = strip_tags($data);
    }elseif ($fieldname == 'spiderUrl'){
        $data = $page['url'];
    }
    return $data;
};

//入库操作
$spider->on_extract_page = function($page,$data) {
    // 数据库配置
    $db_config = [
        'host'  => '47.110.145.116',
        'port'  => 3306,
        'user'  => 'root',
        'pass'  => 'Wxy1314520+-.',
        'name'  => 'laravel_blog',
    ];
    db::set_connect('laravel_blog', $db_config);
    // 数据库链接
    db::_init();
    //处理哪个数据
    if (isset($data)) {
        $table_name = 'jianshu_user';//数据库名
        //路由重复就不入库
        $sql = "select count(*) as `count` from `".$table_name."` where `name` = " . "'" . $data['title'] . "'" ;
        $row = db::get_one($sql);
        if (empty($row['count'])) {
            $data['name'] = $data['title'];
            unset($data['title']);
            $install = db::insert($table_name , $data );
        }
    }
    return $data;
};

/**
 * @auto 创建文件目录
 * @param
 * @return .
 * @author 王晓宇
 * @data 2019/4/29
 * @time 17:12
 */
function mymkdir($path,$mode=0755){
    if (is_dir($path)){
        return true;
    }else{ //不存在则创建目录
        $re=mkdir($path,$mode,true);
        //第三个参数为true即可以创建多极目录
        if ($re){
            return true;
        }else{
            return false;
        }
    }
}


/**
 * PHP将网页上的图片攫取到本地存储
 * @param $imgUrl  图片url地址
 * @param string $saveDir 本地存储路径 默认存储在当前路径
 * @param null $fileName 图片存储到本地的文件名
 * @return mix
 */
function crabImage($imgUrl, $saveDir='./', $fileName=null)
{
    if (empty($imgUrl)) {
        return false;
    }

    //获取图片信息大小
    $imgSize = getImageSize($imgUrl);
    if (!in_array($imgSize['mime'], array('image/jpg', 'image/gif', 'image/png', 'image/jpeg'), true)) {
        return false;
    }

    //获取后缀名
    $_mime = explode('/', $imgSize['mime']);
    $_ext = '.' . end($_mime);

    if (empty($fileName)) {  //生成唯一的文件名
        $fileName = uniqid(time(), true) . $_ext;
    }

    //开始攫取
    ob_start();
    readfile($imgUrl);
    $imgInfo = ob_get_contents();
    ob_end_clean();

    if (!file_exists($saveDir)) {
        mkdir($saveDir, 0777, true);
    }
    $fp = fopen($saveDir . $fileName, 'a');
    $imgLen = strlen($imgInfo);    //计算图片源码大小
    $_inx = 1024;   //每次写入1k
    $_time = ceil($imgLen / $_inx);
    for ($i = 0; $i < $_time; $i++) {
        fwrite($fp, substr($imgInfo, $i * $_inx, $_inx));
    }
    fclose($fp);
    return array('file_name' => $fileName, 'save_path' => $saveDir . $fileName);
}
$spider->start();
