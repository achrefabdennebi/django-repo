if IN_DOCKER:  # type: ignore
    print('Running in docker mode')
    assert MIDDLEWARE[:1] == [ # type: ignore
        'django.middleware.security.SecurityMiddleware',
    ]
