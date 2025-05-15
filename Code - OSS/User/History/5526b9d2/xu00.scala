package bearlyb.audio

import org.lwjgl.sdl, sdl.SDLAudio.*
import
  org.lwjgl.system,
  system.MemoryStack.stackPush
import bearlyb.*
import render.Renderer

enum AudioFormat(private[bearlyb] val internal: Int):
    case UNKNOWN extends AudioFormat(0x0000)  /**< Unspecified audio format */
    case U8 extends AudioFormat(0x0008)  /**< Unsigned 8-bit samples */
        /* SDL_DEFINE_AUDIO_FORMAT(0, 0, 0, 8), */
    case S8 extends  AudioFormat(0x8008)  /**< Signed 8-bit samples */
        /* SDL_DEFINE_AUDIO_FORMAT(1, 0, 0, 8), */
    case S16LE extends AudioFormat(0x8010)  /**< Signed 16-bit samples */
        /* SDL_DEFINE_AUDIO_FORMAT(1, 0, 0, 16), */
    case S16BE extends AudioFormat(0x9010)  /**< As above, but big-endian byte order */
        /* SDL_DEFINE_AUDIO_FORMAT(1, 1, 0, 16), */
    case S32LE extends AudioFormat(0x8020)  /**< 32-bit integer samples */
        /* SDL_DEFINE_AUDIO_FORMAT(1, 0, 0, 32), */
    case S32BE extends AudioFormat(0x9020)  /**< As above, but big-endian byte order */
        /* SDL_DEFINE_AUDIO_FORMAT(1, 1, 0, 32), */
    case F32LE extends AudioFormat(0x8120)  /**< 32-bit floating point samples */
        /* SDL_DEFINE_AUDIO_FORMAT(1, 0, 1, 32), */
    case F32BE extends AudioFormat(0x9120)  /**< As above, but big-endian byte order */
        /* SDL_DEFINE_AUDIO_FORMAT(1, 1, 1, 32), */

    /* These represent the current system's byteorder. */
    case S16 extends AudioFormat(SDL_AUDIO_S16)
    case S32 extends AudioFormat(SDL_AUDIO_S32LE)
    case F32LE extends AudioFormat(SDL_AUDIO_F32LE)