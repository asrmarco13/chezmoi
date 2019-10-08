module github.com/twpayne/chezmoi

go 1.13

require (
	github.com/BurntSushi/toml v0.3.1
	github.com/Masterminds/goutils v1.1.0 // indirect
	github.com/Masterminds/semver v1.5.0 // indirect
	github.com/Masterminds/sprig v2.21.0+incompatible
	github.com/coreos/go-semver v0.3.0
	github.com/danieljoos/wincred v1.0.2 // indirect
	github.com/gobuffalo/logger v1.0.1 // indirect
	github.com/gobuffalo/packr/v2 v2.5.2
	github.com/godbus/dbus v4.1.0+incompatible // indirect
	github.com/google/go-github/v26 v26.0.10
	github.com/google/renameio v0.1.0
	github.com/google/uuid v1.1.1 // indirect
	github.com/hectane/go-acl v0.0.0-20190604041725-da78bae5fc95
	github.com/huandu/xstrings v1.2.0 // indirect
	github.com/imdario/mergo v0.3.7 // indirect
	github.com/kr/text v0.1.0
	github.com/magiconair/properties v1.8.1 // indirect
	github.com/mattn/go-isatty v0.0.8
	github.com/pelletier/go-toml v1.4.0 // indirect
	github.com/pkg/diff v0.0.0-20190925211723-2e1364d5b2b3
	github.com/russross/blackfriday/v2 v2.0.1
	github.com/shurcooL/sanitized_anchor_name v1.0.0 // indirect
	github.com/spf13/afero v1.2.2 // indirect
	github.com/spf13/cobra v0.0.5
	github.com/spf13/jwalterweatherman v1.1.0 // indirect
	github.com/spf13/viper v1.4.0
	github.com/stretchr/objx v0.2.0 // indirect
	github.com/stretchr/testify v1.3.0
	github.com/twpayne/go-shell v0.0.3
	github.com/twpayne/go-vfs v1.3.5
	github.com/twpayne/go-vfsafero v1.0.0
	github.com/twpayne/go-xdg/v3 v3.1.0
	github.com/zalando/go-keyring v0.0.0-20190603084339-02404fc6afd1
	go.etcd.io/bbolt v1.3.3
	golang.org/x/crypto v0.0.0-20190923035154-9ee001bba392
	golang.org/x/net v0.0.0-20190628185345-da137c7871d7 // indirect
	golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45
	google.golang.org/appengine v1.6.1 // indirect
	gopkg.in/yaml.v2 v2.2.2
)

// Temporary while waiting for https://github.com/hectane/go-acl/pull/14 to be merged
replace github.com/hectane/go-acl => github.com/twpayne/go-acl v0.0.2
