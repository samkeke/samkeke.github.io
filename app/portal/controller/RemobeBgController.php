<?php


namespace app\portal\controller;


use FontLib\Table\Type\post;
use http\Client;
use Mtownsend\RemoveBg\RemoveBg;

class RemobeBgController
{
    private $api_key = 'e2fg2XznwkvUnge9uYdTwgDw';

    public function index(){

        $client = new \GuzzleHttp\Client();
        $res = $client->post('https://api.remove.bg/v1.0/removebg', [
            'multipart' => [
                [
                    'name'     => 'image_file',
                    'contents' => fopen(ROOT_PATH.'/public/static/images/wangxiaoyu.jpg', 'r')
                ],
                [
                    'name'     => 'size',
                    'contents' => 'auto'
                ]
            ],
            'headers' => [
                'X-Api-Key' => $this->api_key
            ]
        ]);

        $fp = fopen("wangxiaoyu.png", "wb");
        fwrite($fp, $res->getBody());
        fclose($fp);

    }
}