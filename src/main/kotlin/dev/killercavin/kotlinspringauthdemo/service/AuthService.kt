package dev.killercavin.kotlinspringauthdemo.service

import dev.killercavin.kotlinspringauthdemo.dto.CreateUserRequest
import dev.killercavin.kotlinspringauthdemo.dto.UserLoginRequest
import dev.killercavin.kotlinspringauthdemo.dto.UserResponse
import dev.killercavin.kotlinspringauthdemo.dto.toEntity
import dev.killercavin.kotlinspringauthdemo.dto.toResponseDTO
import dev.killercavin.kotlinspringauthdemo.repository.UserRepository
import org.springframework.security.authentication.AuthenticationManager
import org.springframework.security.authentication.BadCredentialsException
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken
import org.springframework.security.core.userdetails.UsernameNotFoundException
import org.springframework.security.crypto.password.PasswordEncoder
import org.springframework.stereotype.Service

@Service
class AuthService(
    private val userRepository: UserRepository,
    private val passwordEncoder: PasswordEncoder,
    private val authenticationManager: AuthenticationManager
) {
    fun register(request: CreateUserRequest): UserResponse {
        val requestEntity = request.toEntity(passwordEncoder)
        val newUser = userRepository.save(requestEntity)

        return newUser.toResponseDTO()
    }

    fun login(request: UserLoginRequest): UserResponse {
        val user = if (request.identifier.contains("@")) {
            userRepository.findUserByEmail(request.identifier)
        } else {
            userRepository.findUserByUsername(request.identifier)
        } ?: throw UsernameNotFoundException("Invalid username/email or password")

        if (!passwordEncoder.matches(request.password, user.hashedPassword)) {
            throw BadCredentialsException("Invalid username/email or password")
        }

        val authToken = UsernamePasswordAuthenticationToken(
            user.username,
            request.password
        )
        authenticationManager.authenticate(authToken)

        return user.toResponseDTO()
    }


}