
String hello = "hello world";

List<Map<String,String>> test = [
{
				"test" : "testy test"
},
{
				"another test" : "test testy test test"
},
{
				"waste of time" : "of course"
}
];

void main(){
				print(hello);
				print(test[1]["another test"]);				
}
