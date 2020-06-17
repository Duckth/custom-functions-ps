function gitupdate {
    [CmdletBinding()]
    param (
        [Parameter()]
        [String]
        $CommitMessage
    )

    git add *
    git commit -m $CommitMessage
    git push origin master
}