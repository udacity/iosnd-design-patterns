//: Playground - noun: a place where people can play
import Foundation

/// A protocol that defines a command to play a song.
protocol PlaySongCommand {
    func play()
}

/// A command to play a song that needs to be fetched over the network first
class RemoteSongCommand: PlaySongCommand {
    let songURL: URL
    
    init(songURL: URL) {
        self.songURL = songURL
    }
    
    func play() {
        // Fetch song file over the network
        // Play song file after fetching from the network
    }
}

/// A command to play a song that is available in disk.
class LocalSongCommand: PlaySongCommand {
    let songURL: URL
    
    init(songURL: URL) {
        self.songURL = songURL
    }
    
    func play() {
        // Fetch song file from disk
        // Play song file after fetching from disk
    }
}

/**
 The music player which can execute and queue PlaySongCommands.
 */
class MusicPlayer {
    
    func play(command: PlaySongCommand) {
        // TODO
    }
    
    func addToQueue(command: PlaySongCommand) {
        // TODO
    }
    
    func playNext() {
        // TODO
    }
}


