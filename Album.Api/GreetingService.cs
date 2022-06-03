using System;
using System.Net;

namespace Album.Api
{
    public static class GreetingService
    {
        public static string Greet(string name)
        {
            if (name == "" || name == " " || name == null)
                return "Hello World!";
            else
                return $"Hello {name} from {Dns.GetHostName()}!";
        }
    }
}