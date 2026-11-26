# EasyParsing

EasyParsing is an interactive Bash script that downloads a web page, extracts link destinations from its HTML, and prints a numbered list of unique results.

## Requirements

- Bash
- `wget`
- GNU `grep` with PCRE support (`-P`)
- `sort`

## Usage

Save the script as `easyparsing.sh` and run it with Bash.

```bash
bash easyparsing.sh
```

When prompted, enter a full URL such as `https://example.com/`.

## Output

The script looks for `href` values in anchor tags, skips entries equal to `#`, and sorts the results while removing duplicates. Relative links stay relative.

For a page containing `/about` and `https://example.com/docs`, the link list would look like this.

```text
[+] List of links:

1. /about
2. https://example.com/docs
```
