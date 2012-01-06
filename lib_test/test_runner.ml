(*
 * Copyright (c) 2012 Anil Madhavapeddy <anil@recoil.org>
 *
 * Permission to use, copy, modify, and distribute this software for any
 * purpose with or without fee is hereby granted, provided that the above
 * copyright notice and this permission notice appear in all copies.
 *
 * THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 * WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 * MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 * ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 * WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 * ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 * OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 *)

open Printf

(*
let _ =
  let lexbuf = Lexing.from_string "https://user:pass@foo.com/wh/at/ever?foo#5" in
  let uri = Parser.absolute_uri Lexer.token lexbuf in
  printf "%s\n%!" (Uri.absolute_uri_to_string uri)
*)

let abs_uri = "https://user:pass@foo.com:123/wh/at/ever?foo=1&bar=5#5"
let rel_uri = "/wh/at/ever?foo#5"
 
let _ =
  let u = Uri.of_string abs_uri in
  printf "%s\n%!" (Uri.to_string u);
  let u = Uri.of_string rel_uri in
  printf "%s\n%!" (Uri.to_string u)