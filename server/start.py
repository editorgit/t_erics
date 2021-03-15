import os
import redis

REDIS_HOST = 'redis'
REDIS_CHANNEL = 'messages'


def main():
    print("Python server started")

    redis_conn = redis.Redis(host=REDIS_HOST)
    while True:
        data = input("Please enter something: ")
        if data:
            redis_conn.publish(REDIS_CHANNEL, data)


if __name__ == '__main__':
    main()
