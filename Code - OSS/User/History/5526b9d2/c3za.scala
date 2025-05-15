package bearlyb.audio

import org.lwjgl.sdl, sdl.SDLAudio.*
import
  org.lwjgl.system,
  system.MemoryStack.stackPush
import bearlyb.*
import render.Renderer

type AudioSpec{
  private[bearlyb] val format: AudioFormat,
  private[bearlyb] val channels: Int,
  private[bearlyb] val freq: Int
}