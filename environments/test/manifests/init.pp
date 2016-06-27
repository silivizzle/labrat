class labrat{
    #   Commands to be executed
    exec {
        'yum update':
            path       => '/usr/bin',
            command    => 'yum update -y';
    }

    #   Install packages and dependencies
    $basePackages   = ['python', 'httpd', 'gcc-c++', 'ruby-devel', 'gcc', 'make', 'rpm-build']
    $pythonPackages = ['python-devel']
    $rubyPackages   = ['fpm']
    package {
        $basePackages:
            ensure  => present,
            require => Exec['yum update'];

        $pythonPackages:
            ensure  =>  present,
            require =>  Package['python'];

        $rubyPackages:
            ensure      => present,
            provider    => 'gem',
            require     => Package['ruby-devel'];
    }

    #   Define directories and files
    file {
        '/shared':
            ensure  => 'directory';
    }

    group {
        'test':
            ensure => 'present',
            gid    => '10500';
    }

    user {
        'test':
            ensure  => 'present',
            uid     => '10500';
    }

    host {
        'labrat.local':
            ip            =>  '192.168.10.10',
            host_aliases  =>  'labrat';
    }

}