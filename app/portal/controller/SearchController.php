<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2018 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 老猫 <thinkcmf@126.com>
// +----------------------------------------------------------------------
namespace app\portal\controller;

use cmf\controller\HomeBaseController;
use app\portal\model\PortalPostModel;
use cmfpage\PageNew;

class SearchController extends HomeBaseController
{
    private $limit = 10;
    /**
     * 搜索
     * @see index
     * @Time 2018/12/29 17:28
     * @author 王晓宇 《wangxiaoyu@zhuge.com》
     * @param
     * @return
     */
    public function index()
    {
        $keyword = $this->request->param('keyword');
        $param = $this->request->param();

        if (empty($keyword)) {
            $this -> error("关键词不能为空！请重新输入！");
        }
        $portalPostModel = new PortalPostModel();
        //获取首页数据
        $where = [
            'create_time'=>['egt',0] ,
            'post_title' => ['like' , '%' . $keyword . '%'],
        ];

        $data = $portalPostModel->getIndexList($where , ['create_time' => 'desc'] , !empty($param['page']) ? $param['page'] : 1 , $this->limit );
        $count = $portalPostModel->getDataCount($where);
        //分页
        $page = new PageNew($count , $this->limit,$param);

        //图文推荐数据
        $recommended = $portalPostModel->getIndexList(['recommended' => 1] , ['recommended' => 'desc'] , 1 , 7);
        //获取热门文章
        $hotPortal = $portalPostModel->getIndexList([] , ['post_hits' => 'desc' , 'comment_count' => 'desc'] , 1 , 12);

        $this->assign('recommended' , $recommended);
        $this->assign('hotPortal' , $hotPortal);
        $this->assign('articles' , $data);
        $this -> assign("keyword", $keyword);
        $this->assign('page', $page->fpage());

        return $this->fetch('/search');
    }
}
