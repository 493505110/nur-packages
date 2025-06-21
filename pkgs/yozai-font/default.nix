{ stdenvNoCC, fetchurl }:

stdenvNoCC.mkDerivation rec {
    pname = "yozai-font";
    version = "0.863.1";
    srcs = [
        (fetchurl {
            url = "https://github.com/lxgw/yozai-font/releases/download/v0.863.1/Yozai-Light.ttf";
            sha256 = "sha256-KFi97Bd9DPizejaRJtqr3/bmobtx9N7dls1hIn114Po=";
        })
        (fetchurl {
            url = "https://github.com/lxgw/yozai-font/releases/download/v0.863.1/Yozai-Medium.ttf";
            sha256 = "sha256-TbJozPbjB4WYYgUgOOb2MmzOAZAXio7ojKSK/2rxoG0=";
        })
        (fetchurl {
            url = "https://github.com/lxgw/yozai-font/releases/download/v0.863.1/Yozai-Regular.ttf";
            sha256 = "sha256-/iuEU0lv2lr5vuH/Ieu7VZZ3UCZp5wgwD2k3kgbnNiE=";
        })
    ];

    dontUnpack = true;
    __structuredAttrs = true; # ???

    installPhase = ''
        install -Dm444 ''${srcs[0]} $out/share/fonts/truetype/Yozai-Light.ttf
        install -Dm444 ''${srcs[1]} $out/share/fonts/truetype/Yozai-Medium.ttf
        install -Dm444 ''${srcs[2]} $out/share/fonts/truetype/Yozai-Regular.ttf
    '';
}
