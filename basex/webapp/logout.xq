xquery version '3.0';
module namespace page = 'http://basex.org/examples/web-page';
import module namespace session = "http://basex.org/modules/session";
import module namespace web = "http://basex.org/modules/web";

declare %rest:path("/logout") %rest:POST %rest:GET %rest:PUT function page:logout(){
	let $del := session:delete('user')
	return 
   	<test>
        <rest>Sesión cerrada exitosamente</rest>
     </test>
};