{ pkgs }: {
	deps = [
    pkgs.bashInteractive
    pkgs.php74
    pkgs.php74Extensions.pdo
    pkgs.php74Extensions.mbstring
    pkgs.curl_unix_socket
    pkgs.sqlite
    pkgs.unzip
	];
}
