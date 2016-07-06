class repos{

    # Working example
    yumrepo { 'epel':
        baseurl => 'http://download.fedoraproject.org/pub/epel/7/$basearch',
        descr => 'The name repository',
        enabled => '1',
        gpgcheck => '0'
    }

}


