<?php

namespace BOW\PlatformBundle\Controller;

use Symfony\Component\HttpFoundation\Response;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class AdvertController extends Controller
{
    public function indexAction()
    {
        $content = $this->get('templating')->render('BOWPlatformBundle:Advert:index.html.twig', array('nom'=>'wiz'));
        return new Response($content);
    }

    public function byebyeAction()
    {
      $content = $this->get('templating')->render('BOWPlatformBundle:Advert:byebye.html.twig', array('nom'=>'wiz'));
      return new Response($content);
    }
}
