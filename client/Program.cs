using System;

using StackExchange.Redis;

namespace start
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine(".NET client started!");
            var redis = ConnectionMultiplexer.Connect("redis:6379");
            var sub = redis.GetSubscriber();

            sub.Subscribe("messages", (channel, message) => {
                Console.WriteLine($"{message}");
            });
            Console.ReadLine();
        }
    }
}
