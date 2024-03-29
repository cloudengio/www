
# See https://golang.org/cmd/go/#hdr-Legacy_GOPATH_

redirects="content/_redirects"

repo=$1
reporoot=$2
shift;shift
for pkg in "$@"; do
	path=$pkg
	meta="$(basename $path).meta"
	(
	echo "${path}	go-get=1	/golang/${meta}	302"
	echo "${path}/*	go-get=1	/golang/${meta}	302"
	) >> "${redirects}"

	cat > "content/golang/${meta}" <<!
<html><head><meta name="go-import" content="cloudeng.io${reporoot} git https://github.com/cloudengio/${repo}"/></head></html>
!
	git add "content/golang/${meta}"
done
sort -su "${redirects}" > "${redirects}.new"
mv "${redirects}.new" "${redirects}"
git add "${redirects}"
