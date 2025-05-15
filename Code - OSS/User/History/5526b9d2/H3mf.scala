package bearlyb.audio

import org.lwjgl.sdl, sdl.SDLAudio.*
import
  org.lwjgl.system,
  system.MemoryStack.stackPush
import bearlyb.*
import render.Renderer

enum AudioSpec(private[bearlyb] val internal: Int):
    case SDL_AUDIO_UNKNOWN extends AudioSpec(0x0000),  /**< Unspecified audio format */
    SDL_AUDIO_U8        = 0x0008u,  /**< Unsigned 8-bit samples */
        /* SDL_DEFINE_AUDIO_FORMAT(0, 0, 0, 8), */
    SDL_AUDIO_S8        = 0x8008u,  /**< Signed 8-bit samples */
        /* SDL_DEFINE_AUDIO_FORMAT(1, 0, 0, 8), */
    SDL_AUDIO_S16LE     = 0x8010u,  /**< Signed 16-bit samples */
        /* SDL_DEFINE_AUDIO_FORMAT(1, 0, 0, 16), */
    SDL_AUDIO_S16BE     = 0x9010u,  /**< As above, but big-endian byte order */
        /* SDL_DEFINE_AUDIO_FORMAT(1, 1, 0, 16), */
    SDL_AUDIO_S32LE     = 0x8020u,  /**< 32-bit integer samples */
        /* SDL_DEFINE_AUDIO_FORMAT(1, 0, 0, 32), */
    SDL_AUDIO_S32BE     = 0x9020u,  /**< As above, but big-endian byte order */
        /* SDL_DEFINE_AUDIO_FORMAT(1, 1, 0, 32), */
    SDL_AUDIO_F32LE     = 0x8120u,  /**< 32-bit floating point samples */
        /* SDL_DEFINE_AUDIO_FORMAT(1, 0, 1, 32), */
    SDL_AUDIO_F32BE     = 0x9120u,  /**< As above, but big-endian byte order */
        /* SDL_DEFINE_AUDIO_FORMAT(1, 1, 1, 32), */

    /* These represent the current system's byteorder. */
    #if SDL_BYTEORDER == SDL_LIL_ENDIAN
    SDL_AUDIO_S16 = SDL_AUDIO_S16LE,
    SDL_AUDIO_S32 = SDL_AUDIO_S32LE,
    SDL_AUDIO_F32 = SDL_AUDIO_F32LE
    #else
    SDL_AUDIO_S16 = SDL_AUDIO_S16BE,
    SDL_AUDIO_S32 = SDL_AUDIO_S32BE,
    SDL_AUDIO_F32 = SDL_AUDIO_F32BE
    #endif 