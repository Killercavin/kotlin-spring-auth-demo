package dev.killercavin.kotlinspringauthdemo

import org.springframework.stereotype.Service

@Service
class UserService(private val repository: UserRepository) {
}