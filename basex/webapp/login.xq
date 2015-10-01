xquery version '3.0';
module namespace page = 'http://basex.org/examples/web-page';
import module namespace session = "http://basex.org/modules/session";

declare %rest:path("/login") %rest:POST("{$data}")  (: $data = contain elements from form:)
function page:multipart($data)
{ 
let $user := $data//user/text() (:Get user:)
let $pwd := $data//password/text() (:Get password - encrypted hash:md5(password):)
let $db := collection('account')
let $users := $db/account[user=$user and password=$pwd]  (:Validate user and password in database :)
let $result := if ($users/user) then concat( 'Bienvenido ', $user) else 'Usuario/Contraseña Incorrectos!'

let $session_validator :=  session:set('user', if($users/user) then $user else 'inactive')
let $session_status := session:get('user')

return if($session_status = 'inactive')
then
	$result
else (:Redirect to a Webpage (logout-example.xml) :)
	<rest:redirect>http://localhost:8984/static/auth/logout-example.xml</rest:redirect>
};