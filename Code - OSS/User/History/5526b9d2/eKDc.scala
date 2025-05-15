package bearlyb.audio

import org.lwjgl.sdl, sdl.SDLAudio.*
import
org.lwjgl.system,
system.MemoryStack.stackPush
import bearlyb.*
import render.Renderer

case class AudioSpec( 
  format: AudioFormat, /**< Audio data format */
  channels: Int, /**< Number of channels: 1 mono, 2 stereo, etc */
  freq: Int /**< sample rate: sample frames per second */
  ) extends NativeResource, org.lwjgl.system.Pointer.Default
  {
  case class buffer()
}