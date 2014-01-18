#!/usr/bin/env ruby

module DiceMan
  class Base

    # @constant FIREBASE_URI
    # @type string
    FIREBASE_URI = "https://diceman.firebaseio.com/"

    attr_accessor :firebase

    # @method initialize
    def initialize

      @firebase = Firebase.new(FIREBASE_URI)

    end

  end
end