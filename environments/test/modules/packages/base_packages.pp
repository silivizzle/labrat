class base_packages{

    $apache = $osfamily ? {
        'RedHat'    => 'httpd',
        'Debian'    => 'apache2',
        default     => undef;
    }

    $docker = $osfamily ? {
        'RedHat'    => 'docker-engine',
        'Debian'    => 'docker-engine',
        default     => undef;
    }

    
}

