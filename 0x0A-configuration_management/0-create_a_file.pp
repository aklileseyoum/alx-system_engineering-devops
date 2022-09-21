#Create a file in /tmp

file { 'school':
	content => 'I love puppet',
	owner => 'www-data',
	group => 'www-data',
	mode => '0744',
	path => '/tmp/school',
}
