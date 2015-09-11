" Vim syntax file
" Language: Test::Nginx::Socket
" Maintainer: Ilya Shaisultanov
" Latest Revision: 11 September 2015

if exists("b:current_syntax")
  finish
endif

syn match sectionName 'TEST.*$\|config\|http_config\|main_config\|post_main_config\|server_name\|init\|request\|request_eval\|pipelined_requests\|more_headers\|curl\|response_body\|response_body_eval\|response_body_like\|response_body_unlike\|response_headers\|response_headers_like\|raw_response_headers_like\|raw_response_headers_unlike\|error_code\|error_code_like\|timeout\|error_log_file\|error_log\|abort\|shutdown\|no_error_log\|grep_error_log\|grep_error_log_out\|log_level\|raw_request\|http09\|ignore_response\|user_files\|skip_eval\|skip_nginx\|skip_nginx2\|stap\|stap_out\|stap_out_like\|stap_out_unlike\|wait\|udp_listen\|udp_reply\|udp_reply_delay\|udp_query\|tcp_listen\|tcp_no_close\|tcp_reply_delay\|tcp_reply\|tcp_query\|tcp_query_len\|tcp_shutdown\|raw_request_middle_delay\|no_check_leak\|must_die' contained

"syn keyword sectionStart --- === nextgroup=sectionName skipwhite

syn match sectionStart '^---\|^===' nextgroup=sectionName skipwhite

syn keyword todo contained TODO FIXME XXX NOTE
syn match comment "#.*$" contains=todo

let b:current_syntax = "testngx"

hi def link sectionStart Statement
hi def link sectionName Statement
hi def link comment Comment
hi def link todo Todo